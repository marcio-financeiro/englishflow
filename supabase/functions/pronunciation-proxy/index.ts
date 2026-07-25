// Edge Function: pronunciation-proxy
// Avalia pronúncia por fonema via Azure Speech Pronunciation Assessment.
// A chave da Azure NUNCA sai daqui.
//
// Secrets necessários (supabase secrets set ...):
//   AZURE_SPEECH_KEY, AZURE_SPEECH_REGION
// Injetados automaticamente pelo Supabase:
//   SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY

import { createClient } from 'jsr:@supabase/supabase-js@2';

// Compartilha o mesmo orçamento diário das chamadas de IA (ai-proxy) — evita
// nova tabela/migration só para isso; suficiente para uso pessoal.
const DAILY_LIMIT = 100;
const MAX_AUDIO_BYTES = 3_000_000; // ~3MB, folga generosa para poucos segundos de fala

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers':
    'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

function base64ToBytes(base64: string): Uint8Array {
  const binary = atob(base64);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
  return bytes;
}

async function callAzurePronunciationAssessment(opts: {
  referenceText: string;
  audioBytes: Uint8Array;
  sampleRate: number;
}) {
  const key = Deno.env.get('AZURE_SPEECH_KEY') ?? '';
  const region = Deno.env.get('AZURE_SPEECH_REGION') ?? '';
  const url =
    `https://${region}.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1` +
    `?language=en-US&format=detailed`;

  const assessmentParams = btoa(
    JSON.stringify({
      ReferenceText: opts.referenceText,
      GradingSystem: 'HundredMark',
      Granularity: 'Phoneme',
      EnableMiscue: true,
    })
  );

  const res = await fetch(url, {
    method: 'POST',
    headers: {
      'Ocp-Apim-Subscription-Key': key,
      'Content-Type': `audio/wav; codecs=audio/pcm; samplerate=${opts.sampleRate}`,
      Accept: 'application/json',
      'Pronunciation-Assessment': assessmentParams,
    },
    body: opts.audioBytes,
  });

  if (!res.ok) {
    const detail = await res.text();
    throw new Error(`Azure Speech ${res.status}: ${detail}`);
  }

  return res.json();
}

// A Azure às vezes devolve os scores aninhados em `PronunciationAssessment.X`
// (formato documentado) e às vezes direto em `X` no próprio objeto (o que
// esse endpoint de short audio realmente devolve, na prática) — lê os dois.
function score(obj: any, key: string): number | undefined {
  return obj?.PronunciationAssessment?.[key] ?? obj?.[key];
}

// Simplifica a resposta bruta da Azure no formato que a UI precisa.
function simplify(azureResult: any) {
  if (azureResult.RecognitionStatus !== 'Success' || !azureResult.NBest?.length) {
    return { recognized: false };
  }

  const best = azureResult.NBest[0];
  const overallAccuracy = score(best, 'AccuracyScore') ?? 0;

  const words = (best.Words ?? []).map((w: any) => ({
    word: w.Word,
    accuracyScore: score(w, 'AccuracyScore') ?? 0,
    errorType: w.PronunciationAssessment?.ErrorType ?? w.ErrorType ?? 'None',
    phonemes: (w.Phonemes ?? []).map((p: any) => ({
      phoneme: p.Phoneme,
      accuracyScore: score(p, 'AccuracyScore') ?? 0,
    })),
  }));

  return {
    recognized: true,
    accuracyScore: overallAccuracy,
    // Fluência/completude nem sempre vêm nesse endpoint — usa a nota geral como fallback.
    fluencyScore: score(best, 'FluencyScore') ?? overallAccuracy,
    completenessScore: score(best, 'CompletenessScore') ?? overallAccuracy,
    pronScore: score(best, 'PronScore') ?? overallAccuracy,
    words,
  };
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // 1. Valida o usuário pelo JWT enviado pelo supabase.functions.invoke.
    const authHeader = req.headers.get('Authorization') ?? '';
    const supabaseUser = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_ANON_KEY') ?? '',
      { global: { headers: { Authorization: authHeader } } }
    );
    const {
      data: { user },
    } = await supabaseUser.auth.getUser();

    if (!user) {
      return new Response(JSON.stringify({ error: 'Não autenticado' }), {
        status: 401,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    // 2. Rate limit diário (atômico via RPC, com service role).
    const admin = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
    );
    const { data: count, error: usageError } = await admin.rpc('consume_ai_usage', {
      p_user_id: user.id,
      p_limit: DAILY_LIMIT,
    });
    if (usageError) throw usageError;
    if (count === -1) {
      return new Response(
        JSON.stringify({ error: `Limite diário de ${DAILY_LIMIT} usos de IA atingido.` }),
        { status: 429, headers: { ...corsHeaders, 'content-type': 'application/json' } }
      );
    }

    // 3. Decodifica o áudio e chama a Azure.
    const { referenceText, audioBase64, sampleRate } = await req.json();
    if (!referenceText || !audioBase64) {
      return new Response(JSON.stringify({ error: 'referenceText e audioBase64 são obrigatórios' }), {
        status: 400,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const audioBytes = base64ToBytes(String(audioBase64));
    if (audioBytes.length > MAX_AUDIO_BYTES) {
      return new Response(JSON.stringify({ error: 'Áudio muito longo' }), {
        status: 400,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const azureResult = await callAzurePronunciationAssessment({
      referenceText: String(referenceText).slice(0, 200),
      audioBytes,
      sampleRate: Number(sampleRate) || 16000,
    });

    const result = simplify(azureResult);

    // Alimenta o % de "Speaking" no painel — best-effort, não derruba a
    // resposta ao usuário se o insert falhar.
    if (result.recognized && typeof result.accuracyScore === 'number') {
      const { error: insertError } = await admin
        .from('pronunciation_attempts')
        .insert({ user_id: user.id, accuracy_score: Math.round(result.accuracyScore) });
      if (insertError) console.error('pronunciation_attempts insert failed', insertError);
    }

    return new Response(JSON.stringify(result), {
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: String(err?.message ?? err) }), {
      status: 500,
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  }
});

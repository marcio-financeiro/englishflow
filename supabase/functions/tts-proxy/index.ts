// Edge Function: tts-proxy
// Lê um texto em voz neural via Azure Speech (bem mais natural que a Web
// Speech API do navegador, e respeita pausas de pontuação via SSML).
// A chave da Azure NUNCA sai daqui.
//
// Secrets necessários (supabase secrets set ...):
//   AZURE_SPEECH_KEY, AZURE_SPEECH_REGION
// Injetados automaticamente pelo Supabase:
//   SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY

import { createClient } from 'jsr:@supabase/supabase-js@2';

// Tabela própria (010_tts_usage.sql) — separada do ai_usage porque a leitura
// é chamada com muito mais frequência que chat/correção.
const DAILY_LIMIT = 300;
const MAX_TEXT_LENGTH = 300;
const VOICE = 'en-US-AriaNeural';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers':
    'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

function escapeXml(text: string): string {
  return text
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&apos;');
}

// Insere pausas nas vírgulas e no fim de frases — a Web Speech API ignora
// pontuação; SSML dá controle real sobre isso.
function buildSsml(text: string): string {
  const escaped = escapeXml(text)
    .replace(/,/g, ',<break time="200ms"/>')
    .replace(/([.!?])(\s|$)/g, '$1<break time="450ms"/>$2');

  return (
    '<speak version="1.0" xml:lang="en-US">' +
    `<voice name="${VOICE}">` +
    `<prosody rate="-10%">${escaped}</prosody>` +
    '</voice></speak>'
  );
}

function bytesToBase64(bytes: Uint8Array): string {
  let binary = '';
  for (let i = 0; i < bytes.length; i++) binary += String.fromCharCode(bytes[i]);
  return btoa(binary);
}

async function callAzureTts(text: string): Promise<Uint8Array> {
  const key = Deno.env.get('AZURE_SPEECH_KEY') ?? '';
  const region = Deno.env.get('AZURE_SPEECH_REGION') ?? '';
  const url = `https://${region}.tts.speech.microsoft.com/cognitiveservices/v1`;

  const res = await fetch(url, {
    method: 'POST',
    headers: {
      'Ocp-Apim-Subscription-Key': key,
      'Content-Type': 'application/ssml+xml',
      'X-Microsoft-OutputFormat': 'audio-24khz-48kbitrate-mono-mp3',
    },
    body: buildSsml(text),
  });

  if (!res.ok) {
    const detail = await res.text();
    throw new Error(`Azure TTS ${res.status}: ${detail}`);
  }

  return new Uint8Array(await res.arrayBuffer());
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // 1. Valida o usuário pelo JWT enviado pelo supabase.functions.invoke.
    const authHeader = req.headers.get('Authorization') ?? '';
    const token = authHeader.replace('Bearer ', '');
    const supabaseUser = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_ANON_KEY') ?? ''
    );
    const { data: { user } } = await supabaseUser.auth.getUser(token);

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
    const { data: count, error: usageError } = await admin.rpc('consume_tts_usage', {
      p_user_id: user.id,
      p_limit: DAILY_LIMIT,
    });
    if (usageError) throw usageError;
    if (count === -1) {
      return new Response(
        JSON.stringify({ error: `Limite diário de ${DAILY_LIMIT} leituras atingido.` }),
        { status: 429, headers: { ...corsHeaders, 'content-type': 'application/json' } }
      );
    }

    // 3. Gera o áudio.
    const { text } = await req.json();
    if (!text) {
      return new Response(JSON.stringify({ error: 'text obrigatório' }), {
        status: 400,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const audioBytes = await callAzureTts(String(text).slice(0, MAX_TEXT_LENGTH));

    return new Response(JSON.stringify({ audioBase64: bytesToBase64(audioBytes) }), {
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: String(err?.message ?? err) }), {
      status: 500,
      headers: { ...corsHeaders, 'content-type': 'application/json' },
    });
  }
});

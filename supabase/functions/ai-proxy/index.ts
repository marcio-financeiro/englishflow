// Edge Function: ai-proxy
// Camada única que fala com a API da Anthropic. A chave NUNCA sai daqui.
// Tasks: correct_writing | chat | chat_feedback
//
// Secrets necessários (supabase secrets set ...):
//   ANTHROPIC_API_KEY
// Injetados automaticamente pelo Supabase:
//   SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY

import { createClient } from 'jsr:@supabase/supabase-js@2';

const MODEL = 'claude-sonnet-5'; // modelo custo-adequado; trocar aqui se necessário
const DAILY_LIMIT = 50; // chamadas de IA por usuário por dia
const ANTHROPIC_URL = 'https://api.anthropic.com/v1/messages';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers':
    'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

// Descrição do interlocutor por cenário de conversação.
const SCENARIO_ROLE: Record<string, string> = {
  waiter: 'a friendly waiter at a restaurant taking the customer order',
  interview: 'a polite job interviewer asking simple questions',
  free_talk: 'a friendly person having a casual everyday conversation',
};

function clamp(text: unknown, max: number): string {
  return String(text ?? '').slice(0, max);
}

// Extrai um objeto JSON da resposta do modelo, tolerante a texto ao redor.
function parseJson(text: string): unknown {
  try {
    return JSON.parse(text);
  } catch {
    const start = text.indexOf('{');
    const end = text.lastIndexOf('}');
    if (start !== -1 && end > start) {
      return JSON.parse(text.slice(start, end + 1));
    }
    throw new Error('Resposta da IA não é um JSON válido');
  }
}

async function callAnthropic(opts: {
  system: string;
  messages: { role: 'user' | 'assistant'; content: string }[];
  maxTokens: number;
}): Promise<string> {
  const res = await fetch(ANTHROPIC_URL, {
    method: 'POST',
    headers: {
      'x-api-key': Deno.env.get('ANTHROPIC_API_KEY') ?? '',
      'anthropic-version': '2023-06-01',
      'content-type': 'application/json',
    },
    body: JSON.stringify({
      model: MODEL,
      max_tokens: opts.maxTokens,
      thinking: { type: 'disabled' }, // respostas curtas e rápidas
      system: opts.system,
      messages: opts.messages,
    }),
  });

  if (!res.ok) {
    const detail = await res.text();
    throw new Error(`Anthropic ${res.status}: ${detail}`);
  }

  const data = await res.json();
  const block = (data.content ?? []).find((b: { type: string }) => b.type === 'text');
  return block?.text ?? '';
}

function buildRequest(task: string, payload: Record<string, unknown>) {
  const level = clamp(payload.level ?? 'A1', 8);

  if (task === 'correct_writing') {
    const expected = clamp(payload.expected, 300);
    const answer = clamp(payload.answer, 500);
    return {
      maxTokens: 600,
      system:
        `Você é um professor de inglês corrigindo a frase de um aluno de nível ${level}. ` +
        `Responda SOMENTE com um JSON válido, sem texto extra, no formato: ` +
        `{"corrected": "", "errors": [{"type": "", "explanation_pt": ""}], "natural_version": "", "score": 0}. ` +
        `"score" é de 0 a 100. "explanation_pt" em português simples. ` +
        `Se estiver correto, "errors" é uma lista vazia.`,
      messages: [
        {
          role: 'user' as const,
          content: `Frase esperada: "${expected}". Frase do aluno: "${answer}".`,
        },
      ],
    };
  }

  if (task === 'chat') {
    const scenario = clamp(payload.scenario, 32);
    const role = SCENARIO_ROLE[scenario] ?? SCENARIO_ROLE.free_talk;
    const history = Array.isArray(payload.messages) ? payload.messages : [];
    const messages = history
      .slice(-20)
      .map((m: { role: string; content: unknown }) => ({
        role: m.role === 'assistant' ? ('assistant' as const) : ('user' as const),
        content: clamp(m.content, 500),
      }))
      .filter((m) => m.content.length > 0);

    return {
      maxTokens: 300,
      system:
        `You are ${role}. You are talking with an English learner at CEFR level ${level}. ` +
        `Keep your replies short, simple and natural for their level. ` +
        `Never stop to correct their mistakes — just keep the conversation going. ` +
        `Reply only in English.`,
      messages,
    };
  }

  if (task === 'generate_practice') {
    const mistakes = Array.isArray(payload.mistakes) ? payload.mistakes.slice(-15) : [];
    const list = mistakes
      .map(
        (m: { type: unknown; userAnswer: unknown; correctAnswer: unknown }) =>
          `- (${clamp(m.type, 20)}) escreveu "${clamp(m.userAnswer, 120)}" em vez de "${clamp(m.correctAnswer, 120)}"`
      )
      .join('\n');

    return {
      maxTokens: 1400,
      system:
        `Você é um professor de inglês. Crie 5 exercícios curtos de reforço de nível ${level}, ` +
        `focados nos erros do aluno. O inglês deve estar correto e no nível do aluno. ` +
        `Responda SOMENTE com um JSON válido, sem texto extra, no formato: ` +
        `{"exercises": [EXERCICIO, ...]}. Cada EXERCICIO é de um destes dois tipos: ` +
        `{"type": "multiple_choice", "content": {"question": "", "options": ["","","",""], "correct_index": 0}} ` +
        `ou {"type": "fill_blank", "content": {"sentence": "frase com ___ no lugar da lacuna", "options": ["","",""], "correct": "", "translation": "tradução em pt-BR"}}. ` +
        `Em fill_blank, "correct" precisa ser uma das "options" e a frase precisa conter "___". ` +
        `As opções erradas devem ser plausíveis. Misture os dois tipos.`,
      messages: [
        {
          role: 'user' as const,
          content: list
            ? `Erros recentes do aluno:\n${list}`
            : `O aluno tem poucos erros registrados. Gere exercícios gerais de nível ${level}.`,
        },
      ],
    };
  }

  if (task === 'chat_feedback') {
    const history = Array.isArray(payload.messages) ? payload.messages : [];
    const transcript = history
      .slice(-40)
      .map((m: { role: string; content: unknown }) => {
        const who = m.role === 'assistant' ? 'Partner' : 'Student';
        return `${who}: ${clamp(m.content, 400)}`;
      })
      .join('\n');

    return {
      maxTokens: 900,
      system:
        `Você é um professor de inglês analisando uma conversa de um aluno de nível ${level}. ` +
        `Responda SOMENTE com um JSON válido, sem texto extra, no formato: ` +
        `{"score": 0, "errors": [{"type": "", "explanation_pt": ""}], "new_vocabulary": [{"word": "", "translation_pt": ""}], "better_expressions": [{"original": "", "better": ""}]}. ` +
        `"score" é de 0 a 100. Explicações em português simples. Analise apenas as falas do "Student".`,
      messages: [
        { role: 'user' as const, content: `Conversa:\n${transcript}` },
      ],
    };
  }

  return null;
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

    // 3. Monta e executa a chamada conforme a task.
    const { task, payload } = await req.json();
    const request = buildRequest(task, payload ?? {});
    if (!request) {
      return new Response(JSON.stringify({ error: `Task inválida: ${task}` }), {
        status: 400,
        headers: { ...corsHeaders, 'content-type': 'application/json' },
      });
    }

    const text = await callAnthropic(request);
    const result = task === 'chat' ? { reply: text.trim() } : parseJson(text);

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

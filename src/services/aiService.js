import { supabase } from './supabaseClient';

// Camada única de IA no front. Nunca conhece a chave — chama a Edge Function.
async function aiRequest(task, payload) {
  const { data, error } = await supabase.functions.invoke('ai-proxy', {
    body: { task, payload },
  });
  if (error) {
    // Erros da function (429, 500...) chegam aqui; tenta extrair a mensagem.
    const msg = (await error.context?.json?.().catch(() => null))?.error;
    throw new Error(msg || error.message);
  }
  if (data?.error) throw new Error(data.error);
  return data;
}

export function correctWriting({ level, expected, answer }) {
  return aiRequest('correct_writing', { level, expected, answer });
}

export function chatTurn({ level, scenario, messages }) {
  return aiRequest('chat', { level, scenario, messages });
}

export function chatFeedback({ level, messages }) {
  return aiRequest('chat_feedback', { level, messages });
}

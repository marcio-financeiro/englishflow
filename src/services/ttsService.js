import { supabase } from './supabaseClient';

function base64ToBlob(base64, contentType) {
  const binary = atob(base64);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
  return new Blob([bytes], { type: contentType });
}

// Gera áudio com voz neural (Azure) para um texto em inglês.
export async function synthesizeSpeech(text) {
  const { data, error } = await supabase.functions.invoke('tts-proxy', {
    body: { text },
  });
  if (error) {
    const msg = (await error.context?.json?.().catch(() => null))?.error;
    throw new Error(msg || error.message);
  }
  if (data?.error) throw new Error(data.error);
  return base64ToBlob(data.audioBase64, 'audio/mpeg');
}

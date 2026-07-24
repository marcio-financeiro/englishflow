import { supabase } from './supabaseClient';

function blobToBase64(blob) {
  return new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.onloadend = () => resolve(String(reader.result).split(',')[1]);
    reader.onerror = reject;
    reader.readAsDataURL(blob);
  });
}

// Manda o áudio gravado (WAV) + a palavra/frase esperada para a Edge Function,
// que chama a Azure Pronunciation Assessment. Retorna score geral + por fonema.
export async function assessPronunciation({ referenceText, audioBlob, sampleRate }) {
  const audioBase64 = await blobToBase64(audioBlob);

  const { data, error } = await supabase.functions.invoke('pronunciation-proxy', {
    body: { referenceText, audioBase64, sampleRate },
  });
  if (error) {
    const msg = (await error.context?.json?.().catch(() => null))?.error;
    throw new Error(msg || error.message);
  }
  if (data?.error) throw new Error(data.error);
  return data;
}

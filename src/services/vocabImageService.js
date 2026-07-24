import { supabase, functionErrorMessage } from './supabaseClient';

// Busca (e cacheia no banco) a imagem de uma palavra do vocabulário via Unsplash.
export async function fetchVocabularyImage(vocabularyId) {
  const { data, error } = await supabase.functions.invoke('vocab-image-proxy', {
    body: { vocabularyId },
  });
  if (error) {
    throw new Error(await functionErrorMessage(error));
  }
  if (data?.error) throw new Error(data.error);
  return data;
}

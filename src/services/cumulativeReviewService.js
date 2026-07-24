import { supabase } from './supabaseClient';

const WINDOW_SIZE = 4; // quantos módulos completos entram na revisão cumulativa
const MAX_WORDS = 40; // limite de palavras enviadas pra IA

// Recebe o array de módulos com progresso (mesmo shape de fetchModulesWithProgress)
// e decide se há uma revisão cumulativa disponível: a cada 2 módulos completos de um nível.
// Retorna o nível mais avançado elegível, ou null se nenhum.
export function findCumulativeReviewTarget(modules) {
  const byLevel = new Map();

  for (const m of modules ?? []) {
    if (!m.lessons?.length) continue;
    const completed = m.lessons.every((l) => l.status === 'completed');
    const list = byLevel.get(m.cefr_level) ?? [];
    list.push({ id: m.id, sort_order: m.sort_order, completed });
    byLevel.set(m.cefr_level, list);
  }

  let target = null;
  for (const [level, list] of byLevel) {
    const completedModules = list
      .filter((m) => m.completed)
      .sort((a, b) => a.sort_order - b.sort_order);
    const count = completedModules.length;
    if (count >= 2 && count % 2 === 0 && (!target || level > target.level)) {
      target = {
        level,
        moduleIds: completedModules.slice(-WINDOW_SIZE).map((m) => m.id),
        completedCount: count,
      };
    }
  }
  return target;
}

// Busca as palavras (flashcards) dos módulos informados, pra alimentar a IA.
export async function fetchModulesVocabulary(moduleIds) {
  if (!moduleIds?.length) return [];

  const { data: lessons, error: lessonsError } = await supabase
    .from('lessons')
    .select('id')
    .in('module_id', moduleIds);
  if (lessonsError) throw lessonsError;

  const lessonIds = (lessons ?? []).map((l) => l.id);
  if (lessonIds.length === 0) return [];

  const { data: exercises, error: exercisesError } = await supabase
    .from('exercises')
    .select('content')
    .eq('type', 'flashcard')
    .in('lesson_id', lessonIds);
  if (exercisesError) throw exercisesError;

  const vocabIds = [
    ...new Set((exercises ?? []).map((e) => e.content?.vocabulary_id).filter(Boolean)),
  ].slice(0, MAX_WORDS);
  if (vocabIds.length === 0) return [];

  const { data: vocabulary, error: vocabError } = await supabase
    .from('vocabulary')
    .select('word, translation_pt')
    .in('id', vocabIds);
  if (vocabError) throw vocabError;

  return vocabulary ?? [];
}

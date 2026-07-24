import { supabase } from './supabaseClient';

export const LEVEL_ORDER = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];
export const PASS_THRESHOLD = 0.8; // 80% de acerto
const MAX_WORDS = 60;

export function previousLevel(level) {
  const index = LEVEL_ORDER.indexOf(level);
  return index > 0 ? LEVEL_ORDER[index - 1] : null;
}

// Busca até MAX_WORDS palavras (flashcards) de todos os módulos publicados de um nível.
export async function fetchLevelVocabulary(level) {
  const { data: modules, error: modulesError } = await supabase
    .from('modules')
    .select('id')
    .eq('cefr_level', level)
    .eq('is_published', true);
  if (modulesError) throw modulesError;

  const moduleIds = (modules ?? []).map((m) => m.id);
  if (moduleIds.length === 0) return [];

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

// Todas as tentativas de teste do usuário (usado pra saber quais níveis já foram aprovados).
export async function fetchLevelTests(userId) {
  const { data, error } = await supabase
    .from('level_tests')
    .select('cefr_level, passed')
    .eq('user_id', userId);
  if (error) throw error;
  return data ?? [];
}

export function hasPassedLevel(levelTests, level) {
  return (levelTests ?? []).some((t) => t.cefr_level === level && t.passed);
}

// Nível "atual" do usuário + progresso (lições concluídas/total) dentro dele,
// a partir do array de módulos com progresso (mesmo shape de
// fetchModulesWithProgress). Usado no card "Seu inglês está evoluindo" e no
// hexágono central do Centro de Conhecimento.
export function currentLevelProgress(modules) {
  const byLevel = new Map();
  for (const m of modules ?? []) {
    const entry = byLevel.get(m.cefr_level) ?? { completed: 0, total: 0 };
    for (const lesson of m.lessons ?? []) {
      entry.total += 1;
      if (lesson.status === 'completed') entry.completed += 1;
    }
    byLevel.set(m.cefr_level, entry);
  }

  let last = null;
  for (const level of LEVEL_ORDER) {
    const entry = byLevel.get(level);
    if (!entry || entry.total === 0) continue;
    last = { level, completed: entry.completed, total: entry.total };
    if (entry.completed < entry.total) return last;
  }
  return last ?? { level: LEVEL_ORDER[0], completed: 0, total: 0 };
}

// Dado o array de módulos com progresso (mesmo shape de fetchModulesWithProgress,
// já incluindo `levelUnlocked` por módulo), decide se deve mostrar o CTA do Teste
// de Nivelamento: nível totalmente completo, mas o próximo nível ainda bloqueado.
export function findLevelTestTarget(modules) {
  const byLevel = new Map();

  for (const m of modules ?? []) {
    if (!m.lessons?.length) continue;
    const completed = m.lessons.every((l) => l.status === 'completed');
    const entry = byLevel.get(m.cefr_level) ?? { allCompleted: true, levelUnlocked: m.levelUnlocked };
    entry.allCompleted = entry.allCompleted && completed;
    byLevel.set(m.cefr_level, entry);
  }

  for (let i = 0; i < LEVEL_ORDER.length - 1; i++) {
    const level = LEVEL_ORDER[i];
    const nextLevel = LEVEL_ORDER[i + 1];
    const levelInfo = byLevel.get(level);
    const nextInfo = byLevel.get(nextLevel);
    if (levelInfo?.allCompleted && nextInfo && !nextInfo.levelUnlocked) {
      return level;
    }
  }
  return null;
}

export async function recordLevelTestResult({ userId, level, correctCount, totalCount }) {
  const score = totalCount > 0 ? Math.round((correctCount / totalCount) * 100) : 0;
  const passed = totalCount > 0 && correctCount / totalCount >= PASS_THRESHOLD;

  const { error } = await supabase.from('level_tests').insert({
    user_id: userId,
    cefr_level: level,
    score,
    passed,
  });
  if (error) throw error;

  return { score, passed };
}

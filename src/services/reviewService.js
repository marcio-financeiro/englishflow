import { supabase } from './supabaseClient';
import { sm2, NEW_REVIEW_ITEM } from './srsService';
import { hojeISO, addDaysISO } from '../lib/dateUtils';

const MAX_DUE = 20;

// Mapeia o tipo de exercício para a categoria do erro registrada em `mistakes`.
const MISTAKE_TYPE_BY_EXERCISE = {
  multiple_choice: 'grammar',
  fill_blank: 'grammar',
  word_order: 'grammar',
  matching: 'vocab',
};

export function mistakeTypeFor(exerciseType) {
  return MISTAKE_TYPE_BY_EXERCISE[exerciseType] ?? 'other';
}

// Quantidade de revisões pendentes hoje (para o badge do header).
export async function countDueReviews(userId) {
  const { count, error } = await supabase
    .from('review_items')
    .select('id', { count: 'exact', head: true })
    .eq('user_id', userId)
    .lte('next_review_at', hojeISO());

  if (error) throw error;
  return count ?? 0;
}

// Itens vencidos hoje, já com o vocabulário embutido (máx 20).
export async function fetchDueReviews(userId) {
  const { data, error } = await supabase
    .from('review_items')
    .select(
      'id, easiness, interval_days, repetitions, next_review_at, vocabulary:vocabulary_id(*)'
    )
    .eq('user_id', userId)
    .lte('next_review_at', hojeISO())
    .order('next_review_at')
    .limit(MAX_DUE);

  if (error) throw error;
  return data ?? [];
}

// Aplica o SM-2 a um item de revisão e persiste. Retorna o item atualizado.
export async function applyReview(userId, item, quality) {
  const next = sm2(item, quality);

  const { data, error } = await supabase
    .from('review_items')
    .update({
      easiness: next.easiness,
      interval_days: next.interval_days,
      repetitions: next.repetitions,
      next_review_at: addDaysISO(next.interval_days),
      last_quality: quality,
    })
    .eq('id', item.id)
    .eq('user_id', userId)
    .select()
    .single();

  if (error) throw error;
  return data;
}

// Ao concluir uma lição: cria/atualiza review_items para o vocabulário visto.
// outcomes: [{ vocabularyId, quality }]
export async function recordLessonReviews(userId, outcomes) {
  if (!outcomes || outcomes.length === 0) return;

  // Dedupe por vocabulário (mantém o último resultado da lição).
  const byVocab = new Map();
  for (const o of outcomes) {
    if (o.vocabularyId) byVocab.set(o.vocabularyId, o.quality);
  }
  const vocabularyIds = [...byVocab.keys()];
  if (vocabularyIds.length === 0) return;

  const { data: existing, error: fetchError } = await supabase
    .from('review_items')
    .select('vocabulary_id, easiness, interval_days, repetitions')
    .eq('user_id', userId)
    .in('vocabulary_id', vocabularyIds);

  if (fetchError) throw fetchError;

  const existingByVocab = Object.fromEntries(
    (existing ?? []).map((r) => [r.vocabulary_id, r])
  );

  const rows = vocabularyIds.map((vocabularyId) => {
    const quality = byVocab.get(vocabularyId);
    const base = existingByVocab[vocabularyId] ?? NEW_REVIEW_ITEM;
    const next = sm2(base, quality);
    return {
      user_id: userId,
      vocabulary_id: vocabularyId,
      easiness: next.easiness,
      interval_days: next.interval_days,
      repetitions: next.repetitions,
      next_review_at: addDaysISO(next.interval_days),
      last_quality: quality,
    };
  });

  const { error: upsertError } = await supabase
    .from('review_items')
    .upsert(rows, { onConflict: 'user_id,vocabulary_id' });

  if (upsertError) throw upsertError;
}

// Registra erros em `mistakes` (alimenta a IA professora na Fase 3).
// items: [{ exerciseId, userAnswer, correctAnswer, mistakeType }]
export async function logMistakes(userId, items) {
  if (!items || items.length === 0) return;

  const rows = items.map((m) => ({
    user_id: userId,
    exercise_id: m.exerciseId,
    user_answer: m.userAnswer ?? null,
    correct_answer: m.correctAnswer ?? null,
    mistake_type: m.mistakeType ?? 'other',
  }));

  const { error } = await supabase.from('mistakes').insert(rows);
  if (error) throw error;
}

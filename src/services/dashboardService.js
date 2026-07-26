import { supabase } from './supabaseClient';
import { hojeISO } from '../lib/dateUtils';

function firstOfMonthISO() {
  const d = new Date();
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-01`;
}

// Tipo de exercício -> habilidade do "Centro de Conhecimento". Mesma família de
// dados que reviewService.MISTAKE_TYPE_BY_EXERCISE, agrupada por habilidade
// em vez de por categoria de erro.
const SKILL_BY_EXERCISE_TYPE = {
  flashcard: 'vocabulary',
  matching: 'vocabulary',
  multiple_choice: 'grammar',
  fill_blank: 'grammar',
  word_order: 'grammar',
  dictation: 'listening',
  listening: 'listening',
  typing: 'writing',
  reading: 'reading',
};

const MISTAKE_TYPE_TO_SKILL = {
  vocab: 'vocabulary',
  grammar: 'grammar',
  listening: 'listening',
  writing: 'writing',
  reading: 'reading',
};

// % de domínio por habilidade a partir de exercícios já feitos (lições concluídas)
// e erros registrados — sem tabela nova. Speaking não entra aqui: seu % vem
// à parte, da média de pronunciation_attempts (ver fetchDashboard).
export function computeSkillMastery(exercisesInCompletedLessons, mistakesByType) {
  const totalAttempts = { vocabulary: 0, grammar: 0, listening: 0, writing: 0, reading: 0 };
  for (const ex of exercisesInCompletedLessons ?? []) {
    const skill = SKILL_BY_EXERCISE_TYPE[ex.type];
    if (skill) totalAttempts[skill] += 1;
  }

  const errors = { vocabulary: 0, grammar: 0, listening: 0, writing: 0, reading: 0 };
  for (const [mistakeType, count] of Object.entries(mistakesByType ?? {})) {
    const skill = MISTAKE_TYPE_TO_SKILL[mistakeType];
    if (skill) errors[skill] += count;
  }

  const mastery = {};
  for (const skill of Object.keys(totalAttempts)) {
    const attempts = totalAttempts[skill];
    mastery[skill] =
      attempts === 0
        ? null
        : Math.max(0, Math.min(100, Math.round(((attempts - errors[skill]) / attempts) * 100)));
  }
  return mastery;
}

// Junta os dados do dashboard em paralelo.
export async function fetchDashboard(userId) {
  const [
    totalLessons,
    completedProgress,
    mistakes,
    reviews,
    conversations,
    activity,
    pronunciationAttempts,
  ] = await Promise.all([
    supabase.from('lessons').select('id', { count: 'exact', head: true }),
    supabase
      .from('user_progress')
      .select('lesson_id')
      .eq('user_id', userId)
      .eq('status', 'completed'),
    supabase.from('mistakes').select('exercise_id, mistake_type').eq('user_id', userId),
    supabase
      .from('review_items')
      .select('id', { count: 'exact', head: true })
      .eq('user_id', userId),
    supabase
      .from('conversation_history')
      .select('id', { count: 'exact', head: true })
      .eq('user_id', userId),
    // Tabela nova (migration 005); se não existir ainda, segue vazio.
    supabase
      .from('daily_activity')
      .select('day, minutes')
      .eq('user_id', userId)
      .gte('day', firstOfMonthISO())
      .then((r) => r)
      .catch(() => ({ data: [] })),
    // Tabela nova (migration 038); se não existir ainda, segue vazio.
    supabase
      .from('pronunciation_attempts')
      .select('accuracy_score')
      .eq('user_id', userId)
      .then((r) => r)
      .catch(() => ({ data: [] })),
  ]);

  const completedLessonIds = (completedProgress.data ?? []).map((p) => p.lesson_id);

  // Erros por habilidade (mistake_type) — conta cada exercício uma única vez
  // (não por tentativa), senão refazer uma lição várias vezes soma erro toda
  // vez sem aumentar o total de tentativas, derrubando a % artificialmente.
  const uniqueMistakes = new Map();
  for (const m of mistakes.data ?? []) {
    const key = m.exercise_id ?? `no-exercise-${uniqueMistakes.size}`;
    uniqueMistakes.set(key, m.mistake_type || 'other');
  }
  const mistakesByType = {};
  for (const t of uniqueMistakes.values()) {
    mistakesByType[t] = (mistakesByType[t] || 0) + 1;
  }

  let skillMastery = {
    vocabulary: null,
    grammar: null,
    listening: null,
    writing: null,
    reading: null,
  };
  if (completedLessonIds.length > 0) {
    const { data: exercises, error: exercisesError } = await supabase
      .from('exercises')
      .select('type')
      .in('lesson_id', completedLessonIds);
    if (exercisesError) throw exercisesError;
    skillMastery = computeSkillMastery(exercises, mistakesByType);
  }

  // Speaking não é filtrado por lição concluída (a pronúncia é praticada em
  // flashcards e na revisão também) — é a média de todas as tentativas já feitas.
  const attemptScores = (pronunciationAttempts?.data ?? []).map((a) => a.accuracy_score);
  skillMastery.speaking =
    attemptScores.length === 0
      ? null
      : Math.round(attemptScores.reduce((sum, s) => sum + s, 0) / attemptScores.length);

  const activityData = activity?.data ?? [];
  const studyDays = new Set(activityData.filter((a) => a.minutes > 0).map((a) => a.day));
  const minutesByDay = Object.fromEntries(activityData.map((a) => [a.day, a.minutes]));
  const today = hojeISO();
  const minutesToday = activityData.find((a) => a.day === today)?.minutes ?? 0;

  return {
    totalLessons: totalLessons.count ?? 0,
    lessonsCompleted: completedLessonIds.length,
    reviewCount: reviews.count ?? 0,
    conversationCount: conversations.count ?? 0,
    mistakesByType,
    skillMastery,
    studyDays,
    minutesByDay,
    minutesToday,
  };
}

// Registra minutos de estudo no dia (silencioso se a tabela/RPC não existir).
export async function addStudyMinutes(minutes) {
  const m = Math.max(0, Math.round(minutes));
  if (m === 0) return;
  try {
    await supabase.rpc('add_study_minutes', { p_minutes: m });
  } catch {
    // Ignora — não deve quebrar a conclusão da lição.
  }
}

// Salva a meta diária (minutos) no perfil.
export async function setDailyGoal(userId, minutes) {
  const { error } = await supabase
    .from('profiles')
    .update({ daily_goal_minutes: minutes })
    .eq('id', userId);
  if (error) throw error;
}

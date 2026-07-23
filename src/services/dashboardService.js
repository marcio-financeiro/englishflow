import { supabase } from './supabaseClient';
import { hojeISO } from '../lib/dateUtils';

function firstOfMonthISO() {
  const d = new Date();
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-01`;
}

// Junta os dados do dashboard em paralelo.
export async function fetchDashboard(userId) {
  const [
    totalLessons,
    completed,
    mistakes,
    reviews,
    conversations,
    activity,
  ] = await Promise.all([
    supabase.from('lessons').select('id', { count: 'exact', head: true }),
    supabase
      .from('user_progress')
      .select('lesson_id', { count: 'exact', head: true })
      .eq('user_id', userId)
      .eq('status', 'completed'),
    supabase.from('mistakes').select('mistake_type').eq('user_id', userId),
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
  ]);

  // Erros por habilidade (mistake_type).
  const mistakesByType = {};
  for (const m of mistakes.data ?? []) {
    const t = m.mistake_type || 'other';
    mistakesByType[t] = (mistakesByType[t] || 0) + 1;
  }

  const activityData = activity?.data ?? [];
  const studyDays = new Set(activityData.filter((a) => a.minutes > 0).map((a) => a.day));
  const today = hojeISO();
  const minutesToday = activityData.find((a) => a.day === today)?.minutes ?? 0;

  return {
    totalLessons: totalLessons.count ?? 0,
    lessonsCompleted: completed.count ?? 0,
    reviewCount: reviews.count ?? 0,
    conversationCount: conversations.count ?? 0,
    mistakesByType,
    studyDays,
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

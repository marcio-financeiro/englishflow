import { supabase } from './supabaseClient';

export const DAILY_GOAL_OPTIONS = [
  { minutes: 5, label: '5 minutos' },
  { minutes: 10, label: '10 minutos' },
  { minutes: 15, label: '15 minutos' },
  { minutes: 30, label: '30+ minutos' },
];

export const LEARNING_GOAL_OPTIONS = [
  { key: 'travel', label: 'Viagem' },
  { key: 'work', label: 'Trabalho e Negócios' },
  { key: 'daily', label: 'Conversa do Dia a Dia' },
  { key: 'academic', label: 'Acadêmico e Exames' },
  { key: 'culture', label: 'Cultura e Entretenimento' },
];

export const LEVEL_OPTIONS = [
  { key: 'A1', label: 'Iniciante Completo', description: 'Nunca estudou este idioma' },
  { key: 'A2', label: 'Iniciante (A1-A2)', description: 'Palavras e frases básicas' },
  { key: 'B1', label: 'Intermediário (B1-B2)', description: 'Consegue manter uma conversa' },
  { key: 'C1', label: 'Avançado (C1-C2)', description: 'Fluente na maioria das situações' },
];

// Maior nível com conteúdo publicado hoje — ver 002_seed_a1.sql / 006_seed_a2.sql.
const MAX_AVAILABLE_LEVEL = 'A2';
const AVAILABLE_LEVELS = ['A1', 'A2'];

export async function completeOnboarding(userId, { dailyGoalMinutes, learningGoals, targetLevel }) {
  const effectiveLevel = AVAILABLE_LEVELS.includes(targetLevel) ? targetLevel : MAX_AVAILABLE_LEVEL;

  const { error } = await supabase
    .from('profiles')
    .update({
      daily_goal_minutes: dailyGoalMinutes,
      learning_goals: learningGoals,
      cefr_level: effectiveLevel,
      target_cefr_level: targetLevel,
      onboarding_completed: true,
    })
    .eq('id', userId);

  if (error) throw error;
}

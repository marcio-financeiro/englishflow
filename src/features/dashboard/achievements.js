// Conquistas básicas, calculadas na hora a partir dos dados do usuário.
// stats: { xpTotal, streakBest, lessonsCompleted, reviewCount, conversationCount }
export const ACHIEVEMENTS = [
  {
    code: 'first_lesson',
    icon: '🎯',
    title: 'Primeiro passo',
    description: 'Complete sua primeira lição.',
    earned: (s) => s.lessonsCompleted >= 1,
  },
  {
    code: 'xp_100',
    icon: '⭐',
    title: '100 XP',
    description: 'Acumule 100 XP.',
    earned: (s) => s.xpTotal >= 100,
  },
  {
    code: 'streak_7',
    icon: '🔥',
    title: '7 dias seguidos',
    description: 'Estude 7 dias em sequência.',
    earned: (s) => s.streakBest >= 7,
  },
  {
    code: 'words_50',
    icon: '📚',
    title: '50 palavras',
    description: 'Tenha 50 palavras na revisão.',
    earned: (s) => s.reviewCount >= 50,
  },
  {
    code: 'first_chat',
    icon: '💬',
    title: 'Primeira conversa',
    description: 'Converse com a IA pela primeira vez.',
    earned: (s) => s.conversationCount >= 1,
  },
  {
    code: 'module_1',
    icon: '🏅',
    title: 'Módulo concluído',
    description: 'Complete as 5 lições de um módulo.',
    earned: (s) => s.lessonsCompleted >= 5,
  },
];

export const XP_PER_LEVEL = 100;

export function levelFromXp(xp) {
  return {
    level: Math.floor(xp / XP_PER_LEVEL) + 1,
    inLevel: xp % XP_PER_LEVEL,
    perLevel: XP_PER_LEVEL,
  };
}

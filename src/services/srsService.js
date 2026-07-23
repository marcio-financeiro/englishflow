// Algoritmo SM-2 (SuperMemo 2) para repetição espaçada.
// Função pura, sem dependência de banco ou datas — fácil de testar.
//
// quality: 0-5 (0 = errou feio, 5 = acertou fácil)
// No app usamos apenas 3 níveis: 1 = errei, 3 = difícil, 5 = fácil.
export function sm2(item, quality) {
  let { easiness, interval_days, repetitions } = item;

  if (quality < 3) {
    // Errou: volta pro início, revisa amanhã (mantém a facilidade atual).
    return { easiness, interval_days: 1, repetitions: 0 };
  }

  easiness = Math.max(
    1.3,
    easiness + (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02))
  );

  if (repetitions === 0) interval_days = 1;
  else if (repetitions === 1) interval_days = 6;
  else interval_days = Math.round(interval_days * easiness);

  return { easiness, interval_days, repetitions: repetitions + 1 };
}

// Valores iniciais de um review_item novo (espelham os defaults da migration 001).
export const NEW_REVIEW_ITEM = {
  easiness: 2.5,
  interval_days: 0,
  repetitions: 0,
};

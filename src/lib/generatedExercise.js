import { MultipleChoice } from '../features/lessons/exercises/MultipleChoice';
import { FillBlank } from '../features/lessons/exercises/FillBlank';

// Tipos de exercício que a IA pode gerar (generate_practice / generate_cumulative_review).
export const GENERATED_EXERCISE_COMPONENTS = {
  multiple_choice: MultipleChoice,
  fill_blank: FillBlank,
};

// Valida exercícios vindos da IA antes de renderizar (evita quebrar a tela).
export function isValidGeneratedExercise(e) {
  if (!e || !e.content) return false;
  const c = e.content;
  if (e.type === 'multiple_choice') {
    return (
      typeof c.question === 'string' &&
      Array.isArray(c.options) &&
      c.options.length >= 2 &&
      Number.isInteger(c.correct_index) &&
      c.correct_index >= 0 &&
      c.correct_index < c.options.length
    );
  }
  if (e.type === 'fill_blank') {
    return (
      typeof c.sentence === 'string' &&
      c.sentence.includes('___') &&
      Array.isArray(c.options) &&
      c.options.length >= 2 &&
      typeof c.correct === 'string' &&
      c.options.includes(c.correct)
    );
  }
  return false;
}

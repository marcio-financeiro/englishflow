import { useEffect, useRef, useState } from 'react';
import { useNavigate, useParams, Link } from 'react-router-dom';
import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';
import { fetchLessonExercises, completeLesson } from '../../services/lessonService';
import {
  recordLessonReviews,
  logMistakes,
  mistakeTypeFor,
} from '../../services/reviewService';
import { addStudyMinutes } from '../../services/dashboardService';
import { Flashcard } from './exercises/Flashcard';
import { MultipleChoice } from './exercises/MultipleChoice';
import { FillBlank } from './exercises/FillBlank';
import { WordOrder } from './exercises/WordOrder';
import { Matching } from './exercises/Matching';
import { Typing } from './exercises/Typing';
import { Dictation } from './exercises/Dictation';
import { Listening } from './exercises/Listening';

const EXERCISE_COMPONENTS = {
  flashcard: Flashcard,
  multiple_choice: MultipleChoice,
  fill_blank: FillBlank,
  word_order: WordOrder,
  matching: Matching,
  typing: Typing,
  dictation: Dictation,
  listening: Listening,
};

export function LessonPlayer() {
  const { lessonId } = useParams();
  const { user, profile, refreshProfile, refreshDueReviews } = useAuth();
  const navigate = useNavigate();

  const [data, setData] = useState(null);
  const [error, setError] = useState('');
  const [index, setIndex] = useState(0);
  const [correctCount, setCorrectCount] = useState(0);
  const [answeredCurrent, setAnsweredCurrent] = useState(false);
  const [finished, setFinished] = useState(false);
  const [saving, setSaving] = useState(false);

  // Acumuladores para o SRS e o registro de erros (Fase 2), salvos ao concluir.
  const reviewOutcomes = useRef([]);
  const mistakes = useRef([]);
  const startedAt = useRef(Date.now()); // para o tempo de estudo (Fase 5)

  useEffect(() => {
    fetchLessonExercises(lessonId)
      .then(setData)
      .catch((err) => setError(err.message));
  }, [lessonId]);

  async function handleAnswer(isCorrect, meta = {}) {
    if (answeredCurrent) return;
    setAnsweredCurrent(true);
    if (isCorrect) setCorrectCount((c) => c + 1);

    const exercise = data.exercises[index];
    const vocabularyId = meta.vocabularyId ?? exercise.content.vocabulary_id;

    // Vocabulário visto entra na fila de revisão espaçada.
    if (vocabularyId) {
      reviewOutcomes.current.push({ vocabularyId, quality: isCorrect ? 5 : 1 });
    }

    // Erros de qualquer exercício alimentam a tabela `mistakes`.
    if (!isCorrect) {
      mistakes.current.push({
        exerciseId: exercise.id,
        userAnswer: meta.userAnswer,
        correctAnswer: meta.correctAnswer,
        mistakeType: mistakeTypeFor(exercise.type),
      });
    }
  }

  async function handleNext() {
    const isLast = index === data.exercises.length - 1;
    if (!isLast) {
      setIndex((i) => i + 1);
      setAnsweredCurrent(false);
      return;
    }

    setSaving(true);
    try {
      const score = Math.round((correctCount / data.exercises.length) * 100);
      await completeLesson({
        userId: user.id,
        lessonId,
        xpReward: data.lesson.xp_reward,
        score,
        profile,
      });
      await recordLessonReviews(user.id, reviewOutcomes.current);
      await logMistakes(user.id, mistakes.current);
      await addStudyMinutes((Date.now() - startedAt.current) / 60000);
      await refreshProfile();
      await refreshDueReviews();
      setFinished(true);
    } catch (err) {
      setError(err.message);
    } finally {
      setSaving(false);
    }
  }

  if (error) {
    return (
      <div className="min-h-screen bg-slate-50">
        <Header />
        <main className="mx-auto max-w-2xl p-6">
          <p className="text-red-600">{error}</p>
          <Link to="/" className="text-indigo-600 hover:underline">
            Voltar
          </Link>
        </main>
      </div>
    );
  }

  if (!data) {
    return (
      <div className="min-h-screen bg-slate-50">
        <Header />
        <main className="mx-auto max-w-2xl p-6 text-slate-500">Carregando lição...</main>
      </div>
    );
  }

  if (finished) {
    return (
      <div className="min-h-screen bg-slate-50">
        <Header />
        <main className="mx-auto max-w-2xl p-6 text-center">
          <h2 className="text-2xl font-bold text-slate-900">Lição concluída! 🎉</h2>
          <p className="mt-2 text-lg text-indigo-600">+{data.lesson.xp_reward} XP</p>
          <p className="mt-1 text-slate-500">
            {correctCount} de {data.exercises.length} corretas
          </p>
          <button
            onClick={() => navigate('/')}
            className="mt-6 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
          >
            Voltar para as lições
          </button>
        </main>
      </div>
    );
  }

  const exercise = data.exercises[index];
  const ExerciseComponent = EXERCISE_COMPONENTS[exercise.type];
  const progressPct = Math.round((index / data.exercises.length) * 100);

  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <main className="mx-auto max-w-2xl p-6">
        <h2 className="mb-2 text-lg font-semibold text-slate-900">{data.lesson.title}</h2>

        <div className="mb-6 h-2 w-full rounded bg-slate-200">
          <div
            className="h-2 rounded bg-indigo-600 transition-all"
            style={{ width: `${progressPct}%` }}
          />
        </div>

        <div className="rounded-lg bg-white p-6 shadow">
          <ExerciseComponent
            key={exercise.id}
            content={exercise.content}
            vocabulary={data.vocabularyById[exercise.content.vocabulary_id]}
            onAnswer={handleAnswer}
          />
        </div>

        {answeredCurrent && (
          <button
            onClick={handleNext}
            disabled={saving}
            className="mt-6 w-full rounded bg-indigo-600 py-2 font-medium text-white hover:bg-indigo-700 disabled:opacity-50"
          >
            {saving ? 'Salvando...' : index === data.exercises.length - 1 ? 'Concluir lição' : 'Próxima'}
          </button>
        )}
      </main>
    </div>
  );
}

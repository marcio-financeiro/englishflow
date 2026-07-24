import { useEffect, useRef, useState } from 'react';
import { useNavigate, useParams, Link } from 'react-router-dom';
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
      <PlayerShell>
        <p className="text-error">{error}</p>
        <Link to="/" className="font-semibold text-primary hover:underline">
          Voltar
        </Link>
      </PlayerShell>
    );
  }

  if (!data) {
    return (
      <PlayerShell>
        <p className="text-text-muted">Carregando lição...</p>
      </PlayerShell>
    );
  }

  if (finished) {
    return (
      <PlayerShell>
        <div className="text-center">
          <h2 className="font-display text-2xl font-extrabold text-text">
            Lição concluída! 🎉
          </h2>
          <p className="mt-2 font-display text-lg font-bold text-xp">
            +{data.lesson.xp_reward} XP
          </p>
          <p className="mt-1 text-text-muted">
            {correctCount} de {data.exercises.length} corretas
          </p>
          <button onClick={() => navigate('/')} className="ef-juicy-btn mt-6 px-6">
            Voltar para as lições
          </button>
        </div>
      </PlayerShell>
    );
  }

  const exercise = data.exercises[index];
  const ExerciseComponent = EXERCISE_COMPONENTS[exercise.type];

  return (
    <PlayerShell
      lessonTitle={data.lesson.title}
      total={data.exercises.length}
      current={index}
      streak={profile?.streak_current ?? 0}
    >
      <div className="rounded-2xl border-2 border-border bg-surface p-6 shadow-card">
        <ExerciseComponent
          key={exercise.id}
          content={exercise.content}
          vocabulary={data.vocabularyById[exercise.content.vocabulary_id]}
          onAnswer={handleAnswer}
        />
      </div>

      {answeredCurrent && (
        <button onClick={handleNext} disabled={saving} className="ef-juicy-btn mt-6 w-full">
          {saving
            ? 'Salvando...'
            : index === data.exercises.length - 1
              ? 'Concluir lição'
              : 'Próxima'}
        </button>
      )}
    </PlayerShell>
  );
}

function PlayerShell({ children, lessonTitle, total, current, streak }) {
  return (
    <div className="min-h-screen bg-bg text-text">
      <main className="mx-auto max-w-2xl p-6">
        <div className="mb-4 flex items-center gap-4">
          <Link
            to="/"
            className="flex h-9 w-9 flex-shrink-0 items-center justify-center rounded-full border-2 border-border bg-surface text-text hover:bg-surface-2"
            title="Sair da lição"
          >
            ✕
          </Link>

          {total != null && (
            <div className="flex flex-1 gap-1">
              {Array.from({ length: total }).map((_, i) => (
                <div
                  key={i}
                  className={`h-2 flex-1 rounded-full transition-colors ${
                    i < current ? 'bg-success' : i === current ? 'bg-primary' : 'bg-surface-2'
                  }`}
                />
              ))}
            </div>
          )}

          {streak != null && (
            <span className="flex-shrink-0 whitespace-nowrap font-display font-bold text-streak">
              🔥 {streak}
            </span>
          )}
        </div>

        {lessonTitle && (
          <h2 className="mb-4 font-display text-lg font-bold text-text">{lessonTitle}</h2>
        )}

        {children}
      </main>
    </div>
  );
}

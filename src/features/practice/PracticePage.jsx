import { useEffect, useRef, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Brain, PartyPopper } from 'lucide-react';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchRecentMistakes } from '../../services/reviewService';
import { generatePractice } from '../../services/aiService';
import { addStudyMinutes } from '../../services/dashboardService';
import { GENERATED_EXERCISE_COMPONENTS, isValidGeneratedExercise } from '../../lib/generatedExercise';

export function PracticePage() {
  const { user, profile } = useAuth();
  const navigate = useNavigate();

  const [exercises, setExercises] = useState(null);
  const [error, setError] = useState('');
  const [index, setIndex] = useState(0);
  const [correctCount, setCorrectCount] = useState(0);
  const [answered, setAnswered] = useState(false);
  const [finished, setFinished] = useState(false);
  const startedAt = useRef(Date.now());

  useEffect(() => {
    let active = true;
    (async () => {
      try {
        const mistakes = await fetchRecentMistakes(user.id);
        const result = await generatePractice({
          level: profile?.cefr_level ?? 'A1',
          mistakes,
        });
        const valid = (result?.exercises ?? []).filter(isValidGeneratedExercise);
        if (!active) return;
        if (valid.length === 0) {
          setError('Não consegui gerar exercícios agora. Tente de novo mais tarde.');
        } else {
          setExercises(valid);
        }
      } catch (err) {
        if (active) setError(err.message);
      }
    })();
    return () => {
      active = false;
    };
  }, [user.id, profile?.cefr_level]);

  function handleAnswer(isCorrect) {
    if (answered) return;
    setAnswered(true);
    if (isCorrect) setCorrectCount((c) => c + 1);
  }

  async function next() {
    if (index < exercises.length - 1) {
      setIndex((i) => i + 1);
      setAnswered(false);
      return;
    }
    await addStudyMinutes((Date.now() - startedAt.current) / 60000);
    setFinished(true);
  }

  if (error) {
    return (
      <Shell>
        <p className="text-text">{error}</p>
        <Link to="/" className="mt-4 inline-block text-primary hover:underline">
          ← Voltar
        </Link>
      </Shell>
    );
  }

  if (!exercises) {
    return (
      <Shell>
        <div className="text-center">
          <p className="flex items-center justify-center gap-2 text-lg text-text">
            <Brain size={20} /> Montando sua prática...
          </p>
          <p className="mt-2 text-sm text-text-muted">
            A IA está criando exercícios com base nos seus erros.
          </p>
        </div>
      </Shell>
    );
  }

  if (finished) {
    return (
      <Shell>
        <div className="text-center">
          <h2 className="flex items-center justify-center gap-2 text-2xl font-bold text-text">
            Prática concluída! <PartyPopper size={22} />
          </h2>
          <p className="mt-1 text-text-muted">
            {correctCount} de {exercises.length} corretas
          </p>
          <button
            onClick={() => navigate('/')}
            className="mt-6 rounded bg-primary px-6 py-2 font-medium text-white hover:brightness-105"
          >
            Voltar
          </button>
        </div>
      </Shell>
    );
  }

  const exercise = exercises[index];
  const ExerciseComponent = GENERATED_EXERCISE_COMPONENTS[exercise.type];
  const progressPct = Math.round((index / exercises.length) * 100);

  return (
    <Shell>
      <div className="mb-2 flex items-center justify-between text-sm text-text-muted">
        <span>Praticando seus erros</span>
        <span>
          {index + 1} / {exercises.length}
        </span>
      </div>

      <div className="mb-6 h-2 w-full rounded bg-surface-2">
        <div
          className="h-2 rounded bg-primary transition-all"
          style={{ width: `${progressPct}%` }}
        />
      </div>

      <div className="rounded-lg border-2 border-border bg-surface p-6 shadow-card">
        <ExerciseComponent
          key={index}
          content={exercise.content}
          onAnswer={handleAnswer}
        />
      </div>

      {answered && (
        <button
          onClick={next}
          className="mt-6 w-full rounded bg-primary py-2 font-medium text-white hover:brightness-105"
        >
          {index === exercises.length - 1 ? 'Concluir' : 'Próxima'}
        </button>
      )}
    </Shell>
  );
}

function Shell({ children }) {
  return (
    <div className="flex min-h-screen flex-col bg-bg text-text min-[760px]:flex-row">
      <Sidebar />
      <main className="mx-auto w-full max-w-2xl p-6 pb-24 min-[760px]:pb-6">{children}</main>
    </div>
  );
}

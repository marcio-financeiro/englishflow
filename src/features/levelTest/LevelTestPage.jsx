import { useEffect, useRef, useState } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import {
  fetchLevelVocabulary,
  recordLevelTestResult,
  PASS_THRESHOLD,
} from '../../services/levelTestService';
import { generateLevelTest } from '../../services/aiService';
import { addStudyMinutes } from '../../services/dashboardService';
import { GENERATED_EXERCISE_COMPONENTS, isValidGeneratedExercise } from '../../lib/generatedExercise';

export function LevelTestPage() {
  const { user } = useAuth();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const level = searchParams.get('level');

  const [exercises, setExercises] = useState(null);
  const [error, setError] = useState('');
  const [index, setIndex] = useState(0);
  const [correctCount, setCorrectCount] = useState(0);
  const [answered, setAnswered] = useState(false);
  const [result, setResult] = useState(null);
  const startedAt = useRef(Date.now());

  useEffect(() => {
    let active = true;
    (async () => {
      if (!level) {
        setError('Nível não informado.');
        return;
      }
      try {
        const words = await fetchLevelVocabulary(level);
        const response = await generateLevelTest({ level, words });
        const valid = (response?.exercises ?? []).filter(isValidGeneratedExercise);

        if (!active) return;
        if (valid.length === 0) {
          setError('Não consegui montar o teste agora. Tente de novo mais tarde.');
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
  }, [level]);

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
    const outcome = await recordLevelTestResult({
      userId: user.id,
      level,
      correctCount,
      totalCount: exercises.length,
    });
    setResult(outcome);
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
          <p className="text-lg text-text">🎓 Montando seu Teste de Nivelamento {level}...</p>
          <p className="mt-2 text-sm text-text-muted">
            A IA está reunindo exercícios de todos os módulos que você completou.
          </p>
        </div>
      </Shell>
    );
  }

  if (result) {
    return (
      <Shell>
        <div className="text-center">
          <h2 className="font-display text-2xl font-extrabold text-text">
            {result.passed ? 'Aprovado! 🎉' : 'Quase lá!'}
          </h2>
          <p className="mt-2 text-text-muted">
            Você acertou {result.score}% (mínimo de {Math.round(PASS_THRESHOLD * 100)}%).
          </p>
          <p className="mt-1 text-text-muted">
            {result.passed
              ? `Parabéns! Você concluiu o nível ${level}.`
              : 'Você pode revisar e tentar de novo quando quiser.'}
          </p>
          <button
            onClick={() => navigate('/')}
            className="mt-6 rounded-xl bg-primary px-6 py-2 font-semibold text-white hover:brightness-105"
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
        <span>Teste de Nivelamento {level}</span>
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

      <div className="rounded-2xl border-2 border-border bg-surface p-6 shadow-card">
        <ExerciseComponent key={index} content={exercise.content} onAnswer={handleAnswer} />
      </div>

      {answered && (
        <button
          onClick={next}
          className="mt-6 w-full rounded-xl bg-primary py-2 font-semibold text-white hover:brightness-105"
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

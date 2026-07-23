import { useEffect, useRef, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';
import { fetchRecentMistakes } from '../../services/reviewService';
import { generatePractice } from '../../services/aiService';
import { addStudyMinutes } from '../../services/dashboardService';
import { MultipleChoice } from '../lessons/exercises/MultipleChoice';
import { FillBlank } from '../lessons/exercises/FillBlank';

const COMPONENTS = { multiple_choice: MultipleChoice, fill_blank: FillBlank };

// Valida os exercícios vindos da IA antes de renderizar (evita quebrar a tela).
function isValid(e) {
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
        const valid = (result?.exercises ?? []).filter(isValid);
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
        <p className="text-slate-700">{error}</p>
        <Link to="/" className="mt-4 inline-block text-indigo-600 hover:underline">
          ← Voltar
        </Link>
      </Shell>
    );
  }

  if (!exercises) {
    return (
      <Shell>
        <div className="text-center">
          <p className="text-lg text-slate-700">🧠 Montando sua prática...</p>
          <p className="mt-2 text-sm text-slate-500">
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
          <h2 className="text-2xl font-bold text-slate-900">Prática concluída! 🎉</h2>
          <p className="mt-1 text-slate-500">
            {correctCount} de {exercises.length} corretas
          </p>
          <button
            onClick={() => navigate('/')}
            className="mt-6 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
          >
            Voltar
          </button>
        </div>
      </Shell>
    );
  }

  const exercise = exercises[index];
  const ExerciseComponent = COMPONENTS[exercise.type];
  const progressPct = Math.round((index / exercises.length) * 100);

  return (
    <Shell>
      <div className="mb-2 flex items-center justify-between text-sm text-slate-500">
        <span>Praticando seus erros</span>
        <span>
          {index + 1} / {exercises.length}
        </span>
      </div>

      <div className="mb-6 h-2 w-full rounded bg-slate-200">
        <div
          className="h-2 rounded bg-indigo-600 transition-all"
          style={{ width: `${progressPct}%` }}
        />
      </div>

      <div className="rounded-lg bg-white p-6 shadow">
        <ExerciseComponent
          key={index}
          content={exercise.content}
          onAnswer={handleAnswer}
        />
      </div>

      {answered && (
        <button
          onClick={next}
          className="mt-6 w-full rounded bg-indigo-600 py-2 font-medium text-white hover:bg-indigo-700"
        >
          {index === exercises.length - 1 ? 'Concluir' : 'Próxima'}
        </button>
      )}
    </Shell>
  );
}

function Shell({ children }) {
  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <main className="mx-auto max-w-2xl p-6">{children}</main>
    </div>
  );
}

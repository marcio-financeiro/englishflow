import { useEffect, useRef, useState } from 'react';
import { Link } from 'react-router-dom';
import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';
import { fetchDueReviews, applyReview } from '../../services/reviewService';
import { addStudyMinutes } from '../../services/dashboardService';
import { AudioControls } from '../lessons/exercises/AudioControls';

const GRADES = [
  { label: 'Errei', quality: 1, style: 'bg-red-500 hover:bg-red-600' },
  { label: 'Difícil', quality: 3, style: 'bg-amber-500 hover:bg-amber-600' },
  { label: 'Fácil', quality: 5, style: 'bg-emerald-500 hover:bg-emerald-600' },
];

export function ReviewPage() {
  const { user, refreshDueReviews } = useAuth();

  const [items, setItems] = useState(null);
  const [error, setError] = useState('');
  const [index, setIndex] = useState(0);
  const [revealed, setRevealed] = useState(false);
  const [saving, setSaving] = useState(false);
  const [reviewedCount, setReviewedCount] = useState(0);
  const startedAt = useRef(Date.now()); // tempo de estudo (Fase 5)

  useEffect(() => {
    fetchDueReviews(user.id)
      .then(setItems)
      .catch((err) => setError(err.message));
  }, [user.id]);

  async function grade(quality) {
    if (saving) return;
    setSaving(true);
    try {
      await applyReview(user.id, items[index], quality);
      setReviewedCount((c) => c + 1);
      setRevealed(false);
      const isLast = index + 1 >= items.length;
      setIndex((i) => i + 1);
      await refreshDueReviews();
      if (isLast) await addStudyMinutes((Date.now() - startedAt.current) / 60000);
    } catch (err) {
      setError(err.message);
    } finally {
      setSaving(false);
    }
  }

  if (error) {
    return (
      <Shell>
        <p className="text-red-600">{error}</p>
        <Link to="/" className="text-indigo-600 hover:underline">
          Voltar
        </Link>
      </Shell>
    );
  }

  if (!items) {
    return (
      <Shell>
        <p className="text-slate-500">Carregando revisões...</p>
      </Shell>
    );
  }

  // Sem itens pendentes, ou terminou a fila.
  if (items.length === 0 || index >= items.length) {
    const done = items.length > 0;
    return (
      <Shell>
        <div className="text-center">
          <h2 className="text-2xl font-bold text-slate-900">
            {done ? 'Revisão concluída! 🎉' : 'Nada para revisar hoje ✨'}
          </h2>
          <p className="mt-2 text-slate-500">
            {done
              ? `Você revisou ${reviewedCount} ${reviewedCount === 1 ? 'palavra' : 'palavras'}.`
              : 'Complete lições para adicionar palavras à sua fila de revisão.'}
          </p>
          <Link
            to="/"
            className="mt-6 inline-block rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
          >
            Voltar para as lições
          </Link>
        </div>
      </Shell>
    );
  }

  const item = items[index];
  const vocab = item.vocabulary;
  const progressPct = Math.round((index / items.length) * 100);

  return (
    <Shell>
      <div className="mb-2 flex items-center justify-between text-sm text-slate-500">
        <span>Revisão do dia</span>
        <span>
          {index + 1} / {items.length}
        </span>
      </div>

      <div className="mb-6 h-2 w-full rounded bg-slate-200">
        <div
          className="h-2 rounded bg-indigo-600 transition-all"
          style={{ width: `${progressPct}%` }}
        />
      </div>

      <div className="rounded-lg bg-white p-6 shadow">
        <div className="mx-auto flex min-h-[14rem] w-full max-w-sm flex-col items-center justify-center text-center">
          {!revealed ? (
            <>
              <span className="text-3xl font-bold text-slate-900">{vocab.word}</span>
              {vocab.pronunciation_pt && (
                <span className="mt-2 text-slate-500">{vocab.pronunciation_pt}</span>
              )}
              <button
                onClick={() => setRevealed(true)}
                className="mt-6 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
              >
                Mostrar tradução
              </button>
            </>
          ) : (
            <>
              <span className="text-2xl font-bold text-indigo-600">
                {vocab.translation_pt}
              </span>
              {vocab.example_en && (
                <p className="mt-3 text-sm text-slate-600">{vocab.example_en}</p>
              )}
              {vocab.example_pt && (
                <p className="text-sm text-slate-400">{vocab.example_pt}</p>
              )}
            </>
          )}
          {/* Áudio sempre visível: ouça a palavra antes de revelar também. */}
          <AudioControls target={vocab.word} example={vocab.example_en} />
        </div>
      </div>

      {revealed && (
        <div className="mt-6 grid grid-cols-3 gap-2">
          {GRADES.map((g) => (
            <button
              key={g.quality}
              onClick={() => grade(g.quality)}
              disabled={saving}
              className={`rounded py-3 font-medium text-white transition disabled:opacity-50 ${g.style}`}
            >
              {g.label}
            </button>
          ))}
        </div>
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

import { useEffect, useRef, useState } from 'react';
import { Link } from 'react-router-dom';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchDueReviews, applyReview } from '../../services/reviewService';
import { addStudyMinutes } from '../../services/dashboardService';
import { AudioControls } from '../lessons/exercises/AudioControls';

const GRADES = [
  { label: 'Errei', quality: 1, style: 'bg-error hover:brightness-95' },
  { label: 'Difícil', quality: 3, style: 'bg-xp hover:brightness-95' },
  { label: 'Fácil', quality: 5, style: 'bg-success hover:brightness-95' },
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
        <p className="text-error">{error}</p>
        <Link to="/" className="font-semibold text-primary hover:underline">
          Voltar
        </Link>
      </Shell>
    );
  }

  if (!items) {
    return (
      <Shell>
        <p className="text-text-muted">Carregando revisões...</p>
      </Shell>
    );
  }

  // Sem itens pendentes, ou terminou a fila.
  if (items.length === 0 || index >= items.length) {
    const done = items.length > 0;
    return (
      <Shell>
        <div className="text-center">
          <h2 className="font-display text-2xl font-extrabold text-text">
            {done ? 'Revisão concluída! 🎉' : 'Nada para revisar hoje ✨'}
          </h2>
          <p className="mt-2 text-text-muted">
            {done
              ? `Você revisou ${reviewedCount} ${reviewedCount === 1 ? 'palavra' : 'palavras'}.`
              : 'Complete lições para adicionar palavras à sua fila de revisão.'}
          </p>
          <Link to="/" className="ef-juicy-btn mt-6 inline-block px-6">
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
      <div className="mb-2 flex items-center justify-between text-sm text-text-muted">
        <span>Revisão do dia</span>
        <span>
          {index + 1} / {items.length}
        </span>
      </div>

      <div className="mb-6 h-2 w-full rounded-full bg-surface-2">
        <div
          className="h-2 rounded-full bg-primary transition-all"
          style={{ width: `${progressPct}%` }}
        />
      </div>

      <div className="rounded-2xl border-2 border-border bg-surface p-6 shadow-card">
        <div className="mx-auto flex min-h-[14rem] w-full max-w-sm flex-col items-center justify-center text-center">
          {!revealed ? (
            <>
              <span className="font-display text-3xl font-extrabold text-text">
                {vocab.word}
              </span>
              {vocab.pronunciation_pt && (
                <span className="mt-2 text-text-muted">{vocab.pronunciation_pt}</span>
              )}
              <button onClick={() => setRevealed(true)} className="ef-juicy-btn mt-6 px-6">
                Mostrar tradução
              </button>
            </>
          ) : (
            <>
              <span className="font-display text-2xl font-extrabold text-primary">
                {vocab.translation_pt}
              </span>
              {vocab.example_en && (
                <p className="mt-3 text-sm text-text">{vocab.example_en}</p>
              )}
              {vocab.example_pt && (
                <p className="text-sm text-text-muted">{vocab.example_pt}</p>
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
              className={`rounded-2xl py-3 font-display font-bold text-white transition disabled:opacity-50 ${g.style}`}
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
    <div className="flex min-h-screen bg-bg text-text">
      <Sidebar />
      <main className="mx-auto w-full max-w-2xl p-6">{children}</main>
    </div>
  );
}

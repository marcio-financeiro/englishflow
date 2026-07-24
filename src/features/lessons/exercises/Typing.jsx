import { useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { correctWriting } from '../../../services/aiService';

const PASS_SCORE = 70;
const MAX_LEN = 500;

export function Typing({ content, onAnswer }) {
  const { profile } = useAuth();
  const [answer, setAnswer] = useState('');
  const [loading, setLoading] = useState(false);
  const [result, setResult] = useState(null);
  const [error, setError] = useState('');

  async function handleCheck() {
    if (loading || result) return;
    const trimmed = answer.trim();
    if (!trimmed) return;

    setLoading(true);
    setError('');
    try {
      const review = await correctWriting({
        level: profile?.cefr_level ?? 'A1',
        expected: content.expected,
        answer: trimmed.slice(0, MAX_LEN),
      });
      setResult(review);
      onAnswer(review.score >= PASS_SCORE, {
        userAnswer: trimmed,
        correctAnswer: content.expected,
      });
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }

  const passed = result && result.score >= PASS_SCORE;

  return (
    <div>
      <p className="mb-3 font-display text-lg font-bold text-text">{content.prompt_pt}</p>

      <textarea
        value={answer}
        onChange={(e) => setAnswer(e.target.value)}
        disabled={!!result || loading}
        maxLength={MAX_LEN}
        rows={2}
        placeholder="Escreva em inglês..."
        className="w-full rounded-[14px] border-2 border-border bg-surface p-3 text-text outline-none transition-colors focus:border-primary disabled:opacity-60"
      />

      {error && <p className="mt-2 text-sm text-error">{error}</p>}

      {!result && (
        <button
          onClick={handleCheck}
          disabled={loading || !answer.trim()}
          className="ef-juicy-btn mt-3 px-6"
        >
          {loading ? 'Corrigindo...' : 'Verificar'}
        </button>
      )}

      {result && (
        <div
          className={`mt-4 rounded-2xl border-2 p-4 ${
            passed ? 'border-success bg-surface-2' : 'border-xp bg-surface-2'
          }`}
        >
          <div className="flex items-center justify-between">
            <span className="font-display font-bold text-text">
              {passed ? 'Muito bom! 🎉' : 'Quase lá'}
            </span>
            <span className="text-sm text-text-muted">Nota: {result.score}/100</span>
          </div>

          {result.corrected && result.corrected !== answer.trim() && (
            <p className="mt-2 text-sm text-text">
              <span className="text-text-muted">Correção: </span>
              {result.corrected}
            </p>
          )}

          {result.natural_version && (
            <p className="mt-1 text-sm text-text">
              <span className="text-text-muted">Mais natural: </span>
              {result.natural_version}
            </p>
          )}

          {Array.isArray(result.errors) && result.errors.length > 0 && (
            <ul className="mt-3 space-y-1 text-sm text-text-muted">
              {result.errors.map((e, i) => (
                <li key={i}>• {e.explanation_pt}</li>
              ))}
            </ul>
          )}
        </div>
      )}
    </div>
  );
}

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
      <p className="mb-3 text-lg font-medium text-slate-900">{content.prompt_pt}</p>

      <textarea
        value={answer}
        onChange={(e) => setAnswer(e.target.value)}
        disabled={!!result || loading}
        maxLength={MAX_LEN}
        rows={2}
        placeholder="Escreva em inglês..."
        className="w-full rounded border border-slate-300 p-3 focus:border-indigo-500 focus:outline-none disabled:bg-slate-50"
      />

      {error && <p className="mt-2 text-sm text-red-600">{error}</p>}

      {!result && (
        <button
          onClick={handleCheck}
          disabled={loading || !answer.trim()}
          className="mt-3 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700 disabled:opacity-50"
        >
          {loading ? 'Corrigindo...' : 'Verificar'}
        </button>
      )}

      {result && (
        <div
          className={`mt-4 rounded-lg border p-4 ${
            passed ? 'border-emerald-300 bg-emerald-50' : 'border-amber-300 bg-amber-50'
          }`}
        >
          <div className="flex items-center justify-between">
            <span className="font-semibold text-slate-900">
              {passed ? 'Muito bom! 🎉' : 'Quase lá'}
            </span>
            <span className="text-sm text-slate-500">Nota: {result.score}/100</span>
          </div>

          {result.corrected && result.corrected !== answer.trim() && (
            <p className="mt-2 text-sm text-slate-700">
              <span className="text-slate-400">Correção: </span>
              {result.corrected}
            </p>
          )}

          {result.natural_version && (
            <p className="mt-1 text-sm text-slate-700">
              <span className="text-slate-400">Mais natural: </span>
              {result.natural_version}
            </p>
          )}

          {Array.isArray(result.errors) && result.errors.length > 0 && (
            <ul className="mt-3 space-y-1 text-sm text-slate-600">
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

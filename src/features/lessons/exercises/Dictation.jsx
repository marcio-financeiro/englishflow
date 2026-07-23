import { useState } from 'react';
import { speak, isSpeakSupported } from '../../../services/speechService';
import { similarity } from '../../../lib/textMatch';

const PASS = 85; // % de similaridade para considerar correto

export function Dictation({ content, onAnswer }) {
  const [typed, setTyped] = useState('');
  const [result, setResult] = useState(null); // { score, correct }
  const supported = isSpeakSupported();

  function check() {
    if (result) return;
    const score = similarity(typed, content.expected);
    const correct = score >= PASS;
    setResult({ score, correct });
    onAnswer(correct, { userAnswer: typed.trim(), correctAnswer: content.expected });
  }

  if (!supported) {
    return (
      <UnsupportedAudio
        onContinue={() => {
          setResult({ score: 0, correct: true });
          onAnswer(true, {});
        }}
      />
    );
  }

  return (
    <div>
      <p className="mb-4 text-slate-600">Ouça e escreva o que você entendeu:</p>

      <button
        onClick={() => speak(content.audio_text)}
        className="mb-4 rounded bg-indigo-100 px-4 py-2 font-medium text-indigo-700 hover:bg-indigo-200"
      >
        🔊 Ouvir
      </button>

      <input
        value={typed}
        onChange={(e) => setTyped(e.target.value)}
        onKeyDown={(e) => e.key === 'Enter' && check()}
        disabled={!!result}
        placeholder="Escreva o que ouviu..."
        className="w-full rounded border border-slate-300 p-3 focus:border-indigo-500 focus:outline-none disabled:bg-slate-50"
      />

      {!result && (
        <button
          onClick={check}
          disabled={!typed.trim()}
          className="mt-3 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700 disabled:opacity-50"
        >
          Verificar
        </button>
      )}

      {result && (
        <div
          className={`mt-4 rounded-lg border p-4 ${
            result.correct ? 'border-emerald-300 bg-emerald-50' : 'border-amber-300 bg-amber-50'
          }`}
        >
          <p className="font-semibold text-slate-900">
            {result.correct ? 'Correto! 🎉' : 'Quase lá'}{' '}
            <span className="text-sm font-normal text-slate-500">({result.score}%)</span>
          </p>
          <p className="mt-1 text-sm text-slate-700">
            <span className="text-slate-400">Resposta: </span>
            {content.expected}
          </p>
        </div>
      )}
    </div>
  );
}

function UnsupportedAudio({ onContinue }) {
  return (
    <div className="text-center">
      <p className="text-slate-600">
        🔇 Seu navegador não tem suporte a áudio. Use o Chrome, Edge ou Safari para os
        exercícios de áudio.
      </p>
      <button
        onClick={onContinue}
        className="mt-4 rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
      >
        Continuar
      </button>
    </div>
  );
}

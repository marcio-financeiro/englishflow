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
      <p className="mb-4 text-text-muted">Ouça e escreva o que você entendeu:</p>

      <button
        onClick={() => speak(content.audio_text)}
        className="mb-4 rounded-full bg-primary-soft px-4 py-2 font-semibold text-primary-dark hover:brightness-95"
      >
        🔊 Ouvir
      </button>

      <input
        value={typed}
        onChange={(e) => setTyped(e.target.value)}
        onKeyDown={(e) => e.key === 'Enter' && check()}
        disabled={!!result}
        placeholder="Escreva o que ouviu..."
        className="w-full rounded-[14px] border-2 border-border bg-surface p-3 text-text outline-none transition-colors focus:border-primary disabled:opacity-60"
      />

      {!result && (
        <button
          onClick={check}
          disabled={!typed.trim()}
          className="ef-juicy-btn mt-3 px-6"
        >
          Verificar
        </button>
      )}

      {result && (
        <div
          className={`mt-4 rounded-2xl border-2 p-4 ${
            result.correct ? 'border-success bg-surface-2' : 'border-xp bg-surface-2'
          }`}
        >
          <p className="font-display font-bold text-text">
            {result.correct ? 'Correto! 🎉' : 'Quase lá'}{' '}
            <span className="text-sm font-normal text-text-muted">({result.score}%)</span>
          </p>
          <p className="mt-1 text-sm text-text">
            <span className="text-text-muted">Resposta: </span>
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
      <p className="text-text-muted">
        🔇 Seu navegador não tem suporte a áudio. Use o Chrome, Edge ou Safari para os
        exercícios de áudio.
      </p>
      <button onClick={onContinue} className="ef-juicy-btn mt-4 px-6">
        Continuar
      </button>
    </div>
  );
}

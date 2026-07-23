import { useState } from 'react';
import {
  speak,
  listen,
  isSpeakSupported,
  isListenSupported,
} from '../../../services/speechService';
import { similarity } from '../../../lib/textMatch';

const LISTEN_ERRORS = {
  'not-allowed': 'Permissão do microfone negada.',
  'no-speech': 'Não entendi. Tente falar de novo.',
  unsupported: 'Reconhecimento de fala não suportado neste navegador.',
  error: 'Erro no microfone. Tente de novo.',
};

// Controles de áudio para uma palavra: ouvir (TTS) e praticar a fala (STT).
// target: texto a pronunciar (a palavra). example: frase opcional para ouvir.
export function AudioControls({ target, example }) {
  const [listening, setListening] = useState(false);
  const [feedback, setFeedback] = useState(null); // { transcript, score }
  const [error, setError] = useState('');

  const canSpeak = isSpeakSupported();
  const canListen = isListenSupported();

  async function practice() {
    if (listening) return;
    setError('');
    setFeedback(null);
    setListening(true);
    try {
      const transcript = await listen({ lang: 'en-US' });
      setFeedback({ transcript, score: similarity(transcript, target) });
    } catch (err) {
      setError(LISTEN_ERRORS[err.message] || LISTEN_ERRORS.error);
    } finally {
      setListening(false);
    }
  }

  if (!canSpeak && !canListen) return null;

  return (
    <div className="mt-4">
      <div className="flex items-center justify-center gap-2">
        {canSpeak && (
          <button
            onClick={() => speak(target)}
            className="rounded bg-indigo-100 px-3 py-1 text-sm font-medium text-indigo-700 hover:bg-indigo-200"
          >
            🔊 Ouvir
          </button>
        )}
        {canSpeak && example && (
          <button
            onClick={() => speak(example)}
            className="rounded bg-indigo-100 px-3 py-1 text-sm font-medium text-indigo-700 hover:bg-indigo-200"
          >
            🔊 Frase
          </button>
        )}
        {canListen && (
          <button
            onClick={practice}
            disabled={listening}
            className="rounded bg-amber-100 px-3 py-1 text-sm font-medium text-amber-800 hover:bg-amber-200 disabled:opacity-60"
          >
            {listening ? '🎤 Ouvindo...' : '🎤 Falar'}
          </button>
        )}
      </div>

      {error && <p className="mt-2 text-center text-sm text-red-600">{error}</p>}

      {feedback && (
        <p className="mt-2 text-center text-sm text-slate-600">
          Você disse: <span className="font-medium">"{feedback.transcript}"</span> —{' '}
          <span className={feedback.score >= 70 ? 'text-emerald-600' : 'text-amber-600'}>
            {feedback.score}%
          </span>
        </p>
      )}
    </div>
  );
}

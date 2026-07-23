import { useEffect, useRef, useState } from 'react';
import {
  speak,
  newRecognition,
  isSpeakSupported,
  isListenSupported,
} from '../../../services/speechService';
import { similarity } from '../../../lib/textMatch';

const LISTEN_ERRORS = {
  'not-allowed': 'Permissão do microfone negada.',
  'service-not-allowed': 'Permissão do microfone negada.',
  'no-speech': 'Não entendi. Toque em Falar e tente de novo.',
  error: 'Erro no microfone. Tente de novo.',
};

// Controles de áudio para uma palavra: ouvir (TTS) e praticar a fala (STT).
// target: texto a pronunciar (a palavra). example: frase opcional para ouvir.
export function AudioControls({ target, example }) {
  const [listening, setListening] = useState(false);
  const [feedback, setFeedback] = useState(null); // { transcript, score }
  const [error, setError] = useState('');
  const recRef = useRef(null);

  const canSpeak = isSpeakSupported();
  const canListen = isListenSupported();

  // Garante que o microfone seja desligado ao sair da tela.
  useEffect(() => {
    return () => {
      if (recRef.current) {
        try {
          recRef.current.stop();
        } catch {
          /* ignora */
        }
      }
    };
  }, []);

  function toggleMic() {
    // Segundo toque: encerra a gravação (o mic desliga no onend).
    if (listening) {
      try {
        recRef.current?.stop();
      } catch {
        /* ignora */
      }
      return;
    }

    // Primeiro toque: começa a ouvir.
    const rec = newRecognition('en-US');
    if (!rec) {
      setError(LISTEN_ERRORS.error);
      return;
    }
    setError('');
    setFeedback(null);
    recRef.current = rec;

    rec.onresult = (event) => {
      const transcript = event.results[0][0].transcript;
      setFeedback({ transcript, score: similarity(transcript, target) });
    };
    rec.onerror = (event) => {
      // 'aborted' acontece ao parar sem fala — não é erro para o usuário.
      if (event.error !== 'aborted') {
        setError(LISTEN_ERRORS[event.error] || LISTEN_ERRORS.error);
      }
    };
    rec.onend = () => {
      setListening(false);
      recRef.current = null;
    };

    try {
      rec.start();
      setListening(true);
    } catch {
      setError(LISTEN_ERRORS.error);
      recRef.current = null;
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
            onClick={toggleMic}
            className={`rounded px-3 py-1 text-sm font-medium ${
              listening
                ? 'bg-red-500 text-white hover:bg-red-600'
                : 'bg-amber-100 text-amber-800 hover:bg-amber-200'
            }`}
          >
            {listening ? '⏹️ Parar' : '🎤 Falar'}
          </button>
        )}
      </div>

      {listening && (
        <p className="mt-2 text-center text-sm text-slate-500">
          Ouvindo... fale a palavra e toque em Parar.
        </p>
      )}

      {error && <p className="mt-2 text-center text-sm text-red-600">{error}</p>}

      {feedback && !listening && (
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

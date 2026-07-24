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
  const [liveText, setLiveText] = useState('');
  const [feedback, setFeedback] = useState(null); // { transcript, score }
  const [error, setError] = useState('');

  const recRef = useRef(null);
  const transcriptRef = useRef('');
  const erroredRef = useRef(false);

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
    // Segundo toque: encerra a gravação (o resultado é tratado no onend).
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
    setLiveText('');
    transcriptRef.current = '';
    erroredRef.current = false;
    recRef.current = rec;

    rec.onresult = (event) => {
      // Pega o texto mais recente (parcial ou final).
      const text = event.results[event.results.length - 1][0].transcript.trim();
      transcriptRef.current = text;
      setLiveText(text);
    };
    rec.onerror = (event) => {
      // 'aborted' acontece ao parar sem fala — não é erro para o usuário.
      if (event.error !== 'aborted') {
        erroredRef.current = true;
        setError(LISTEN_ERRORS[event.error] || LISTEN_ERRORS.error);
      }
    };
    rec.onend = () => {
      setListening(false);
      recRef.current = null;
      const t = transcriptRef.current;
      if (t) {
        setFeedback({ transcript: t, score: similarity(t, target) });
      } else if (!erroredRef.current) {
        setError(LISTEN_ERRORS['no-speech']);
      }
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
            className="rounded-full bg-primary-soft px-3 py-1 text-sm font-semibold text-primary-dark hover:brightness-95"
          >
            🔊 Ouvir
          </button>
        )}
        {canSpeak && example && (
          <button
            onClick={() => speak(example)}
            className="rounded-full bg-primary-soft px-3 py-1 text-sm font-semibold text-primary-dark hover:brightness-95"
          >
            🔊 Frase
          </button>
        )}
        {canListen && (
          <button
            onClick={toggleMic}
            className={`rounded-full px-3 py-1 text-sm font-semibold ${
              listening
                ? 'bg-error text-white hover:brightness-95'
                : 'bg-surface-2 text-streak hover:brightness-95'
            }`}
          >
            {listening ? '⏹️ Parar' : '🎤 Falar'}
          </button>
        )}
      </div>

      {listening && (
        <p className="mt-2 text-center text-sm text-text-muted">
          {liveText ? `🎧 "${liveText}"` : 'Ouvindo... fale e toque em Parar.'}
        </p>
      )}

      {error && <p className="mt-2 text-center text-sm text-error">{error}</p>}

      {feedback && !listening && (
        <p className="mt-2 text-center text-sm text-text-muted">
          Você disse: <span className="font-semibold text-text">"{feedback.transcript}"</span> —{' '}
          <span className={feedback.score >= 70 ? 'text-success' : 'text-xp'}>
            {feedback.score}%
          </span>
        </p>
      )}
    </div>
  );
}

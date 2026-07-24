import { useEffect, useRef, useState } from 'react';
import { speak, isSpeakSupported } from '../../../services/speechService';
import { isRecordingSupported, startWavRecording } from '../../../lib/wavRecorder';
import { assessPronunciation } from '../../../services/pronunciationService';

const MIC_ERRORS = {
  NotAllowedError: 'Permissão do microfone negada.',
  NotFoundError: 'Nenhum microfone encontrado.',
  default: 'Erro no microfone. Tente de novo.',
};

function scoreClass(score) {
  if (score >= 80) return 'border-success text-success';
  if (score >= 60) return 'border-xp text-xp';
  return 'border-error text-error';
}

// Controles de áudio para uma palavra: ouvir (TTS) e avaliar a pronúncia por
// fonema (grava o áudio de verdade e manda para a Azure Pronunciation
// Assessment via Edge Function — a Web Speech API só dá texto, não fonemas).
// target: palavra a pronunciar. example: frase opcional para ouvir.
export function AudioControls({ target, example }) {
  const [recording, setRecording] = useState(false);
  const [assessing, setAssessing] = useState(false);
  const [result, setResult] = useState(null);
  const [error, setError] = useState('');

  const recorderRef = useRef(null);

  const canSpeak = isSpeakSupported();
  const canRecord = isRecordingSupported();

  // Garante que o microfone seja desligado ao sair da tela.
  useEffect(() => {
    return () => {
      try {
        recorderRef.current?.stop();
      } catch {
        /* ignora */
      }
    };
  }, []);

  async function toggleMic() {
    if (recording) {
      setRecording(false);
      setAssessing(true);
      try {
        const { blob, sampleRate } = recorderRef.current.stop();
        recorderRef.current = null;
        const data = await assessPronunciation({ referenceText: target, audioBlob: blob, sampleRate });
        setResult(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setAssessing(false);
      }
      return;
    }

    setError('');
    setResult(null);
    try {
      recorderRef.current = await startWavRecording();
      setRecording(true);
    } catch (err) {
      setError(MIC_ERRORS[err.name] || MIC_ERRORS.default);
    }
  }

  if (!canSpeak && !canRecord) return null;

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
        {canRecord && (
          <button
            onClick={toggleMic}
            disabled={assessing}
            className={`rounded-full px-3 py-1 text-sm font-semibold disabled:opacity-50 ${
              recording
                ? 'bg-error text-white hover:brightness-95'
                : 'bg-surface-2 text-streak hover:brightness-95'
            }`}
          >
            {recording ? '⏹️ Parar' : assessing ? 'Avaliando...' : '🎤 Falar'}
          </button>
        )}
      </div>

      {recording && (
        <p className="mt-2 text-center text-sm text-text-muted">
          Ouvindo... fale "{target}" e toque em Parar.
        </p>
      )}

      {error && <p className="mt-2 text-center text-sm text-error">{error}</p>}

      {result?.recognized && (
        <div className="mt-3 rounded-2xl border-2 border-border bg-surface-2 p-3 text-center">
          <div className="mb-2 flex flex-wrap justify-center gap-1">
            {result.words.flatMap((w) => w.phonemes).map((p, i) => (
              <span
                key={i}
                className={`rounded-md border-2 px-1.5 py-0.5 font-mono text-xs font-bold ${scoreClass(p.accuracyScore)}`}
                title={`${Math.round(p.accuracyScore)}%`}
              >
                {p.phoneme}
              </span>
            ))}
          </div>
          <p className="text-sm text-text-muted">
            Pronúncia:{' '}
            <span className={`font-bold ${scoreClass(result.pronScore).split(' ')[1]}`}>
              {Math.round(result.pronScore)}%
            </span>
          </p>
        </div>
      )}

      {result && !result.recognized && (
        <p className="mt-2 text-center text-sm text-xp">
          Não entendi. Tente falar mais perto do microfone.
        </p>
      )}
    </div>
  );
}

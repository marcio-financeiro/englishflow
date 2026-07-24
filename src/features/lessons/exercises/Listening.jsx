import { useEffect, useState } from 'react';
import { speak, isSpeakSupported } from '../../../services/speechService';

export function Listening({ content, onAnswer }) {
  const [selected, setSelected] = useState(null);
  const supported = isSpeakSupported();

  // Toca o áudio automaticamente ao abrir (funciona onde não exige gesto).
  useEffect(() => {
    if (supported) speak(content.audio_text);
  }, [content.audio_text, supported]);

  function handleSelect(index) {
    if (selected !== null) return;
    setSelected(index);
    onAnswer(index === content.correct_index, {
      userAnswer: content.options[index],
      correctAnswer: content.options[content.correct_index],
    });
  }

  return (
    <div>
      {supported ? (
        <button
          onClick={() => speak(content.audio_text)}
          className="mb-4 rounded-full bg-primary-soft px-4 py-2 font-semibold text-primary-dark hover:brightness-95"
        >
          🔊 Ouvir de novo
        </button>
      ) : (
        <p className="mb-4 text-sm text-xp">
          🔇 Áudio não suportado neste navegador (use Chrome, Edge ou Safari).
        </p>
      )}

      <p className="mb-4 font-display text-lg font-bold text-text">{content.question}</p>

      <div className="flex flex-col gap-2">
        {content.options.map((option, index) => {
          const isSelected = selected === index;
          const isCorrect = index === content.correct_index;
          let style = 'border-border bg-surface hover:bg-surface-2';
          if (selected !== null && isSelected) {
            style = isCorrect
              ? 'border-success bg-surface-2 text-success-dark'
              : 'border-error bg-surface-2 text-error-dark';
          } else if (selected !== null && isCorrect) {
            style = 'border-success bg-surface-2 text-success-dark';
          }

          return (
            <button
              key={index}
              onClick={() => handleSelect(index)}
              disabled={selected !== null}
              className={`rounded-2xl border-2 px-4 py-3 text-left font-semibold transition ${style}`}
            >
              {option}
            </button>
          );
        })}
      </div>
    </div>
  );
}

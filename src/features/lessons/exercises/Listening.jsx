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
          className="mb-4 rounded bg-indigo-100 px-4 py-2 font-medium text-indigo-700 hover:bg-indigo-200"
        >
          🔊 Ouvir de novo
        </button>
      ) : (
        <p className="mb-4 text-sm text-amber-700">
          🔇 Áudio não suportado neste navegador (use Chrome, Edge ou Safari).
        </p>
      )}

      <p className="mb-4 text-lg font-medium text-slate-900">{content.question}</p>

      <div className="flex flex-col gap-2">
        {content.options.map((option, index) => {
          const isSelected = selected === index;
          const isCorrect = index === content.correct_index;
          let style = 'border-slate-300 bg-white hover:bg-slate-50';
          if (selected !== null && isSelected) {
            style = isCorrect ? 'border-emerald-500 bg-emerald-50' : 'border-red-500 bg-red-50';
          } else if (selected !== null && isCorrect) {
            style = 'border-emerald-500 bg-emerald-50';
          }

          return (
            <button
              key={index}
              onClick={() => handleSelect(index)}
              disabled={selected !== null}
              className={`rounded border px-4 py-3 text-left transition ${style}`}
            >
              {option}
            </button>
          );
        })}
      </div>
    </div>
  );
}

import { useState } from 'react';

export function MultipleChoice({ content, onAnswer }) {
  const [selected, setSelected] = useState(null);

  function handleSelect(index) {
    if (selected !== null) return;
    setSelected(index);
    onAnswer(index === content.correct_index, {
      vocabularyId: content.vocabulary_id,
      userAnswer: content.options[index],
      correctAnswer: content.options[content.correct_index],
    });
  }

  return (
    <div>
      <p className="mb-4 text-lg font-medium text-slate-900">{content.question}</p>
      <div className="flex flex-col gap-2">
        {content.options.map((option, index) => {
          const isSelected = selected === index;
          const isCorrect = index === content.correct_index;
          let style = 'border-slate-300 bg-white hover:bg-slate-50';
          if (selected !== null && isSelected) {
            style = isCorrect
              ? 'border-emerald-500 bg-emerald-50'
              : 'border-red-500 bg-red-50';
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

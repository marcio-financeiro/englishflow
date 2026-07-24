import { useState } from 'react';
import { TranslateToggle } from './TranslateToggle';

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
      <p className="mb-2 font-display text-lg font-bold text-text">{content.question}</p>
      <TranslateToggle text={content.translation} />
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

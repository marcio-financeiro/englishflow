import { useState } from 'react';
import { TranslateToggle } from './TranslateToggle';

export function FillBlank({ content, onAnswer }) {
  const [selected, setSelected] = useState(null);
  const parts = content.sentence.split('___');

  function handleSelect(option) {
    if (selected !== null) return;
    setSelected(option);
    onAnswer(option === content.correct, {
      userAnswer: option,
      correctAnswer: content.correct,
    });
  }

  return (
    <div>
      <p className="mb-4 font-display text-lg font-bold text-text">
        {parts[0]}
        <span className="mx-1 inline-block min-w-[4rem] border-b-2 border-primary text-center text-primary">
          {selected ?? '___'}
        </span>
        {parts[1]}
      </p>

      <TranslateToggle text={content.translation} />

      <div className="flex flex-wrap gap-2">
        {content.options.map((option) => {
          const isSelected = selected === option;
          const isCorrect = option === content.correct;
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
              key={option}
              onClick={() => handleSelect(option)}
              disabled={selected !== null}
              className={`rounded-2xl border-2 px-4 py-2 font-semibold transition ${style}`}
            >
              {option}
            </button>
          );
        })}
      </div>
    </div>
  );
}

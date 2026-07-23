import { useState } from 'react';

export function FillBlank({ content, onAnswer }) {
  const [selected, setSelected] = useState(null);
  const parts = content.sentence.split('___');

  function handleSelect(option) {
    if (selected !== null) return;
    setSelected(option);
    onAnswer(option === content.correct);
  }

  return (
    <div>
      <p className="mb-4 text-lg font-medium text-slate-900">
        {parts[0]}
        <span className="mx-1 inline-block min-w-[4rem] border-b-2 border-slate-400 text-center text-indigo-600">
          {selected ?? '___'}
        </span>
        {parts[1]}
      </p>

      <div className="flex flex-wrap gap-2">
        {content.options.map((option) => {
          const isSelected = selected === option;
          const isCorrect = option === content.correct;
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
              key={option}
              onClick={() => handleSelect(option)}
              disabled={selected !== null}
              className={`rounded border px-4 py-2 transition ${style}`}
            >
              {option}
            </button>
          );
        })}
      </div>

      {selected !== null && content.translation && (
        <p className="mt-3 text-sm text-slate-500">{content.translation}</p>
      )}
    </div>
  );
}

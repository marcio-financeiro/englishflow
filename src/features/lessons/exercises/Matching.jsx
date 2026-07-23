import { useMemo, useState } from 'react';

function shuffle(array) {
  return [...array].sort(() => Math.random() - 0.5);
}

export function Matching({ content, onAnswer }) {
  const rightOptions = useMemo(
    () => shuffle(content.pairs.map((p) => p.right)),
    [content]
  );

  const [selectedLeft, setSelectedLeft] = useState(null);
  const [matched, setMatched] = useState({});
  const [wrongPair, setWrongPair] = useState(null);

  function handleLeftClick(left) {
    if (matched[left]) return;
    setSelectedLeft(left);
  }

  function handleRightClick(right) {
    if (!selectedLeft || Object.values(matched).includes(right)) return;

    const pair = content.pairs.find((p) => p.left === selectedLeft);
    if (pair.right === right) {
      const newMatched = { ...matched, [selectedLeft]: right };
      setMatched(newMatched);
      setSelectedLeft(null);

      if (Object.keys(newMatched).length === content.pairs.length) {
        onAnswer(true);
      }
    } else {
      setWrongPair(`${selectedLeft}-${right}`);
      setTimeout(() => setWrongPair(null), 500);
      setSelectedLeft(null);
    }
  }

  return (
    <div className="grid grid-cols-2 gap-6">
      <div className="flex flex-col gap-2">
        {content.pairs.map((p) => (
          <button
            key={p.left}
            onClick={() => handleLeftClick(p.left)}
            disabled={!!matched[p.left]}
            className={`rounded border px-3 py-2 text-left transition ${
              matched[p.left]
                ? 'border-emerald-500 bg-emerald-50 text-emerald-700'
                : selectedLeft === p.left
                  ? 'border-indigo-500 bg-indigo-50'
                  : 'border-slate-300 bg-white hover:bg-slate-50'
            }`}
          >
            {p.left}
          </button>
        ))}
      </div>

      <div className="flex flex-col gap-2">
        {rightOptions.map((right) => {
          const isMatched = Object.values(matched).includes(right);
          const isWrong = wrongPair === `${selectedLeft}-${right}`;
          return (
            <button
              key={right}
              onClick={() => handleRightClick(right)}
              disabled={isMatched}
              className={`rounded border px-3 py-2 text-left transition ${
                isMatched
                  ? 'border-emerald-500 bg-emerald-50 text-emerald-700'
                  : isWrong
                    ? 'border-red-500 bg-red-50'
                    : 'border-slate-300 bg-white hover:bg-slate-50'
              }`}
            >
              {right}
            </button>
          );
        })}
      </div>
    </div>
  );
}

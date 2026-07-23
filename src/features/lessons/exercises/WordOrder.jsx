import { useState } from 'react';

export function WordOrder({ content, onAnswer }) {
  const [available, setAvailable] = useState(
    content.words.map((word, i) => ({ word, key: i }))
  );
  const [chosen, setChosen] = useState([]);
  const [checked, setChecked] = useState(false);
  const [correct, setCorrect] = useState(false);

  function pickWord(item) {
    if (checked) return;
    setChosen([...chosen, item]);
    setAvailable(available.filter((w) => w.key !== item.key));
  }

  function removeWord(item) {
    if (checked) return;
    setAvailable([...available, item]);
    setChosen(chosen.filter((w) => w.key !== item.key));
  }

  function handleCheck() {
    const sentence = chosen.map((w) => w.word).join(' ');
    const isCorrect = sentence === content.correct_sentence;
    setCorrect(isCorrect);
    setChecked(true);
    onAnswer(isCorrect);
  }

  return (
    <div>
      <div
        className={`mb-4 min-h-[3rem] rounded border-2 border-dashed p-3 ${
          checked ? (correct ? 'border-emerald-500' : 'border-red-500') : 'border-slate-300'
        }`}
      >
        {chosen.map((item) => (
          <button
            key={item.key}
            onClick={() => removeWord(item)}
            disabled={checked}
            className="mr-2 mb-2 inline-block rounded bg-indigo-100 px-3 py-1 text-indigo-800"
          >
            {item.word}
          </button>
        ))}
      </div>

      <div className="mb-4 flex flex-wrap gap-2">
        {available.map((item) => (
          <button
            key={item.key}
            onClick={() => pickWord(item)}
            className="rounded border border-slate-300 bg-white px-3 py-1 hover:bg-slate-50"
          >
            {item.word}
          </button>
        ))}
      </div>

      {checked && content.translation && (
        <p className="mb-3 text-sm text-slate-500">{content.translation}</p>
      )}

      {!checked && (
        <button
          onClick={handleCheck}
          disabled={chosen.length !== content.words.length}
          className="rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700 disabled:opacity-50"
        >
          Verificar
        </button>
      )}
    </div>
  );
}

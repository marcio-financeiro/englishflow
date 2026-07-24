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
    onAnswer(isCorrect, {
      userAnswer: sentence,
      correctAnswer: content.correct_sentence,
    });
  }

  return (
    <div>
      <div
        className={`mb-4 min-h-[3rem] rounded-2xl border-2 border-dashed p-3 ${
          checked ? (correct ? 'border-success' : 'border-error') : 'border-border'
        }`}
      >
        {chosen.map((item) => (
          <button
            key={item.key}
            onClick={() => removeWord(item)}
            disabled={checked}
            className="mr-2 mb-2 inline-block rounded-full bg-primary-soft px-3 py-1 font-semibold text-primary-dark"
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
            className="rounded-full border-2 border-border bg-surface px-3 py-1 font-semibold text-text hover:bg-surface-2"
          >
            {item.word}
          </button>
        ))}
      </div>

      {checked && content.translation && (
        <p className="mb-3 text-sm text-text-muted">{content.translation}</p>
      )}

      {!checked && (
        <button
          onClick={handleCheck}
          disabled={chosen.length !== content.words.length}
          className="ef-juicy-btn px-6"
        >
          Verificar
        </button>
      )}
    </div>
  );
}

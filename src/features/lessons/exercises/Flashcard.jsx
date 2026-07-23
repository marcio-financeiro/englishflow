import { useEffect, useState } from 'react';

export function Flashcard({ content, vocabulary, onAnswer }) {
  const [revealed, setRevealed] = useState(false);

  // Reseta ao trocar de palavra (defesa extra caso o componente seja reutilizado)
  useEffect(() => {
    setRevealed(false);
  }, [vocabulary?.id]);

  if (!vocabulary) return null;

  function reveal() {
    if (revealed) return;
    setRevealed(true);
    onAnswer(true);
  }

  return (
    <div className="text-center">
      <button
        onClick={reveal}
        className="mx-auto flex h-56 w-full max-w-sm flex-col items-center justify-center rounded-lg border border-slate-200 bg-white p-6 shadow"
      >
        {!revealed ? (
          <>
            <span className="text-3xl font-bold text-slate-900">{vocabulary.word}</span>
            {vocabulary.pronunciation_pt && (
              <span className="mt-2 text-slate-500">{vocabulary.pronunciation_pt}</span>
            )}
            <span className="mt-4 text-sm text-slate-400">Toque para ver a tradução</span>
          </>
        ) : (
          <>
            <span className="text-2xl font-bold text-indigo-600">
              {vocabulary.translation_pt}
            </span>
            {vocabulary.example_en && (
              <p className="mt-3 text-sm text-slate-600">{vocabulary.example_en}</p>
            )}
            {vocabulary.example_pt && (
              <p className="text-sm text-slate-400">{vocabulary.example_pt}</p>
            )}
          </>
        )}
      </button>
    </div>
  );
}

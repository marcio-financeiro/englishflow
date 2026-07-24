import { useEffect, useState } from 'react';
import { AudioControls } from './AudioControls';
import { VocabImage } from './VocabImage';

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
    onAnswer(true, { vocabularyId: vocabulary.id });
  }

  return (
    <div className="text-center">
      <VocabImage vocabulary={vocabulary} />
      <button
        onClick={reveal}
        className="mx-auto flex h-56 w-full max-w-sm flex-col items-center justify-center rounded-2xl border-2 border-dashed border-border bg-surface-2 p-6"
      >
        {!revealed ? (
          <>
            <span className="font-display text-3xl font-extrabold text-text">
              {vocabulary.word}
            </span>
            {vocabulary.pronunciation_pt && (
              <span className="mt-2 text-text-muted">{vocabulary.pronunciation_pt}</span>
            )}
            <span className="mt-4 text-sm text-text-muted">Toque para ver a tradução</span>
          </>
        ) : (
          <>
            <span className="font-display text-2xl font-extrabold text-primary">
              {vocabulary.translation_pt}
            </span>
            {vocabulary.example_en && (
              <p className="mt-3 text-sm text-text">{vocabulary.example_en}</p>
            )}
            {vocabulary.example_pt && (
              <p className="text-sm text-text-muted">{vocabulary.example_pt}</p>
            )}
          </>
        )}
      </button>

      {/* Áudio visível desde o início: ouça a palavra antes de revelar. */}
      <AudioControls target={vocabulary.word} example={vocabulary.example_en} />
    </div>
  );
}

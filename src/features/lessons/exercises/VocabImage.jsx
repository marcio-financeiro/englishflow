import { useEffect, useState } from 'react';
import { fetchVocabularyImage } from '../../../services/vocabImageService';

// Imagem ilustrativa de uma palavra do vocabulário (busca automática via
// Unsplash na primeira vez; depois vem direto do cache salvo em `vocabulary`).
export function VocabImage({ vocabulary }) {
  const [image, setImage] = useState(vocabulary?.image_url ? vocabulary : null);
  const [loading, setLoading] = useState(!vocabulary?.image_url);

  useEffect(() => {
    setImage(vocabulary?.image_url ? vocabulary : null);
    setLoading(!vocabulary?.image_url);

    if (!vocabulary?.id || vocabulary.image_url) return;

    let cancelled = false;
    fetchVocabularyImage(vocabulary.id)
      .then((result) => {
        if (!cancelled) setImage(result);
      })
      .catch(() => {
        // Sem imagem disponível — segue sem quebrar o exercício.
      })
      .finally(() => {
        if (!cancelled) setLoading(false);
      });

    return () => {
      cancelled = true;
    };
  }, [vocabulary?.id, vocabulary?.image_url]);

  if (loading) {
    return <div className="mb-4 h-40 w-full animate-pulse rounded-2xl bg-surface-2" />;
  }

  if (!image?.image_url) return null;

  return (
    <div className="mb-4">
      <img
        src={image.image_url}
        alt=""
        className="mx-auto h-40 w-full max-w-sm rounded-2xl object-cover"
      />
      {image.image_photographer && (
        <p className="mt-1 text-center text-xs text-text-muted">
          Foto:{' '}
          <a
            href={`${image.image_photographer_url}?utm_source=englishflow&utm_medium=referral`}
            target="_blank"
            rel="noreferrer"
            className="underline"
          >
            {image.image_photographer}
          </a>{' '}
          /{' '}
          <a
            href="https://unsplash.com/?utm_source=englishflow&utm_medium=referral"
            target="_blank"
            rel="noreferrer"
            className="underline"
          >
            Unsplash
          </a>
        </p>
      )}
    </div>
  );
}

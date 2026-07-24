import { useState } from 'react';

// Botão que revela a tradução (pt-BR) de uma frase sob demanda.
// Não renderiza nada se não houver texto de tradução.
export function TranslateToggle({ text }) {
  const [shown, setShown] = useState(false);
  if (!text) return null;

  return (
    <div className="mb-4">
      <button
        onClick={() => setShown((s) => !s)}
        className="text-sm text-indigo-600 hover:underline"
      >
        🇧🇷 {shown ? 'Ocultar tradução' : 'Traduzir'}
      </button>
      {shown && <p className="mt-1 text-sm text-slate-500">{text}</p>}
    </div>
  );
}

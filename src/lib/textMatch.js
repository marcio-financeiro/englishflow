// Comparação tolerante de texto (para ditado e prática de fala).
// Normaliza caixa e pontuação e usa distância de Levenshtein para % de acerto.
// NOTA: isto compara TEXTO, não fonemas. Score fonético real fica para a Fase 6.

export function normalize(text) {
  return String(text ?? '')
    .toLowerCase()
    .replace(/[.,!?;:"'`´]/g, '')
    .replace(/\s+/g, ' ')
    .trim();
}

function levenshtein(a, b) {
  const m = a.length;
  const n = b.length;
  if (m === 0) return n;
  if (n === 0) return m;

  let prev = Array.from({ length: n + 1 }, (_, i) => i);
  let curr = new Array(n + 1);

  for (let i = 1; i <= m; i++) {
    curr[0] = i;
    for (let j = 1; j <= n; j++) {
      const cost = a[i - 1] === b[j - 1] ? 0 : 1;
      curr[j] = Math.min(prev[j] + 1, curr[j - 1] + 1, prev[j - 1] + cost);
    }
    [prev, curr] = [curr, prev];
  }
  return prev[n];
}

// Retorna 0..100 de similaridade entre dois textos (após normalizar).
export function similarity(a, b) {
  const na = normalize(a);
  const nb = normalize(b);
  if (!na && !nb) return 100;
  const dist = levenshtein(na, nb);
  const maxLen = Math.max(na.length, nb.length) || 1;
  return Math.round((1 - dist / maxLen) * 100);
}

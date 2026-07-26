import confetti from 'canvas-confetti';

const COLORS = ['#20D6D2', '#5B6EF7', '#3DDC84', '#FFC857'];

export function celebrate(options = {}) {
  confetti({
    particleCount: 80,
    spread: 70,
    origin: { y: 0.6 },
    colors: COLORS,
    disableForReducedMotion: true,
    ...options,
  });
}

// Burst maior para marcos importantes: subir de nível, bater sequência ou passar no teste de nivelamento.
export function celebrateBig() {
  celebrate({ particleCount: 140, spread: 100, origin: { y: 0.5 } });
  setTimeout(() => celebrate({ particleCount: 70, spread: 120, origin: { y: 0.4 } }), 200);
}

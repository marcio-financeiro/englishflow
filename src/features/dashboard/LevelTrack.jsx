import { LEVEL_ORDER, hasPassedLevel } from '../../services/levelTestService';

const LEVEL_TITLES = {
  A1: 'Iniciante',
  A2: 'Básico',
  B1: 'Intermediário',
  B2: 'Intermediário Avançado',
  C1: 'Avançado',
  C2: 'Proficiência',
};

function LevelRow({ level, state }) {
  const badgeStyle =
    state === 'current'
      ? { background: 'linear-gradient(155deg, var(--primary), var(--primary-dark))', color: '#fff' }
      : state === 'done'
        ? { background: 'var(--success)', color: '#fff' }
        : { background: 'var(--surface-2)', color: 'var(--text-muted)' };

  return (
    <div
      className={`flex items-center gap-3 rounded-2xl px-2 py-2 ${
        state === 'current' ? 'bg-primary-soft' : ''
      }`}
    >
      <div
        className="flex h-9 w-9 flex-shrink-0 items-center justify-center rounded-xl text-xs font-extrabold"
        style={badgeStyle}
      >
        {state === 'done' ? '✓' : state === 'locked' ? '🔒' : level}
      </div>
      <div className="min-w-0">
        <div
          className={`truncate text-sm font-bold ${
            state === 'locked' ? 'text-text-muted' : 'text-text'
          }`}
        >
          {LEVEL_TITLES[level] ?? level}
        </div>
        {state === 'current' && <div className="text-xs font-semibold text-primary">Atual</div>}
      </div>
    </div>
  );
}

// Lista/carrossel dos 6 níveis CEFR com estado (concluído/atual/bloqueado),
// a partir dos resultados reais de level_tests (fetchLevelTests).
export function LevelTrack({ levelTests }) {
  let currentFound = false;
  const rows = LEVEL_ORDER.map((level) => {
    const done = hasPassedLevel(levelTests, level);
    let state = 'locked';
    if (done) state = 'done';
    else if (!currentFound) {
      state = 'current';
      currentFound = true;
    }
    return { level, state };
  });

  return (
    <section className="rounded-3xl border-2 border-border bg-surface p-4">
      <h3 className="mb-2 font-display font-bold text-text">Níveis</h3>
      <div className="flex gap-2 overflow-x-auto pb-1 min-[1024px]:flex-col min-[1024px]:overflow-visible min-[1024px]:pb-0">
        {[...rows].reverse().map(({ level, state }) => (
          <div key={level} className="min-w-[168px] flex-shrink-0 min-[1024px]:min-w-0">
            <LevelRow level={level} state={state} />
          </div>
        ))}
      </div>
    </section>
  );
}

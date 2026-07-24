const SKILLS = [
  { key: 'listening', label: 'Listening', icon: '🎧', color: 'var(--skill-listening)', x: 50, y: 16 },
  { key: 'vocabulary', label: 'Vocabulary', icon: '📖', color: 'var(--primary)', x: 15, y: 32 },
  { key: 'speaking', label: 'Speaking', icon: '🎤', color: 'var(--skill-speaking)', x: 85, y: 32 },
  { key: 'reading', label: 'Reading', icon: '📗', color: 'var(--success)', x: 15, y: 68 },
  { key: 'grammar', label: 'Grammar', icon: '✏️', color: 'var(--xp)', x: 85, y: 68 },
  { key: 'writing', label: 'Writing', icon: '🖊️', color: 'var(--skill-writing)', x: 50, y: 84 },
];

function DotBar({ pct }) {
  const filled = pct == null ? 0 : Math.round((pct / 100) * 5);
  return (
    <div className="flex gap-0.5">
      {Array.from({ length: 5 }, (_, i) => (
        <span
          key={i}
          className="h-1.5 w-1.5 rounded-full"
          style={{ background: i < filled ? 'currentColor' : 'rgba(255,255,255,0.22)' }}
        />
      ))}
    </div>
  );
}

function SkillHex({ skill, pct }) {
  const hasData = pct != null;
  const glow = hasData
    ? `drop-shadow(0 2px 4px rgba(0,0,0,.45)) drop-shadow(0 0 10px color-mix(in srgb, ${skill.color} 75%, transparent)) drop-shadow(0 0 22px color-mix(in srgb, ${skill.color} 45%, transparent))`
    : 'drop-shadow(0 2px 4px rgba(0,0,0,.35))';

  return (
    <div
      className="absolute flex -translate-x-1/2 -translate-y-1/2 flex-col items-center gap-1"
      style={{ left: `${skill.x}%`, top: `${skill.y}%`, width: '21%' }}
    >
      <div
        className="flex aspect-square w-full items-center justify-center rounded-full text-2xl"
        style={{
          background: hasData
            ? `linear-gradient(155deg, color-mix(in srgb, ${skill.color} 80%, white) 0%, ${skill.color} 45%, color-mix(in srgb, ${skill.color} 65%, black) 100%)`
            : 'linear-gradient(155deg, rgba(255,255,255,0.10), rgba(255,255,255,0.03))',
          filter: glow,
        }}
      >
        <span style={{ filter: hasData ? 'drop-shadow(0 1px 1px rgba(0,0,0,.35))' : 'grayscale(1) opacity(0.6)' }}>
          {hasData ? skill.icon : '🔒'}
        </span>
      </div>
      <div className="text-center leading-tight">
        <div className="text-xs font-bold text-white">{skill.label}</div>
        {hasData ? (
          <div className="text-xs font-semibold" style={{ color: skill.color, filter: 'brightness(1.3)' }}>
            {pct}%
          </div>
        ) : (
          <div className="text-[11px] text-white/45">Em breve</div>
        )}
      </div>
      {hasData && (
        <div style={{ color: skill.color, filter: 'brightness(1.3)' }}>
          <DotBar pct={pct} />
        </div>
      )}
    </div>
  );
}

// "Centro de Conhecimento": diagrama de hexágonos com % de domínio real por
// habilidade (calculado em dashboardService.computeSkillMastery). Speaking e
// Reading não têm dado persistido ainda (ver plano) e aparecem travados.
// O canvas do diagrama é sempre escuro (independente do tema claro/escuro do
// app) para o glow neon ter contraste — igual à referência enviada.
export function KnowledgeHexGrid({ level, skillMastery }) {
  const mastery = { speaking: null, reading: null, ...skillMastery };

  return (
    <section className="rounded-3xl border-2 border-border bg-surface p-5">
      <h3 className="font-display font-bold text-text">Centro de Conhecimento</h3>
      <p className="mb-4 text-sm text-text-muted">Desenvolva todas as habilidades do inglês</p>

      <div
        className="relative mx-auto w-full max-w-sm overflow-hidden rounded-2xl"
        style={{
          aspectRatio: '1 / 1.28',
          background:
            'radial-gradient(circle at 50% 38%, #16323a 0%, #0e1f26 45%, #060d11 100%)',
        }}
      >
        {/* ambiência: partículas + blobs de cor, puramente decorativo */}
        <div
          className="pointer-events-none absolute inset-0 opacity-40"
          style={{
            backgroundImage: 'radial-gradient(rgba(255,255,255,0.35) 1px, transparent 1.5px)',
            backgroundSize: '22px 22px',
          }}
        />
        <div
          className="pointer-events-none absolute -left-8 -top-8 h-32 w-32 rounded-full opacity-30 blur-3xl"
          style={{ background: 'var(--skill-listening)' }}
        />
        <div
          className="pointer-events-none absolute -bottom-10 -right-6 h-36 w-36 rounded-full opacity-30 blur-3xl"
          style={{ background: 'var(--xp)' }}
        />
        <div
          className="pointer-events-none absolute -bottom-8 -left-10 h-28 w-28 rounded-full opacity-25 blur-3xl"
          style={{ background: 'var(--skill-writing)' }}
        />

        <svg className="absolute inset-0 h-full w-full" viewBox="0 0 100 100" preserveAspectRatio="none">
          {SKILLS.map((skill) => (
            <line
              key={skill.key}
              x1="50"
              y1="50"
              x2={skill.x}
              y2={skill.y}
              stroke="rgba(255,255,255,0.18)"
              strokeWidth="0.6"
            />
          ))}
        </svg>

        <div
          className="absolute flex -translate-x-1/2 -translate-y-1/2 flex-col items-center justify-center rounded-full text-center font-display font-extrabold text-white"
          style={{
            left: '50%',
            top: '50%',
            width: '30%',
            aspectRatio: '1 / 1',
            background: 'linear-gradient(155deg, color-mix(in srgb, var(--primary) 85%, white), var(--primary), var(--primary-dark))',
            filter:
              'drop-shadow(0 2px 6px rgba(0,0,0,.5)) drop-shadow(0 0 14px color-mix(in srgb, var(--primary) 80%, transparent)) drop-shadow(0 0 30px color-mix(in srgb, var(--primary) 50%, transparent))',
          }}
        >
          <span className="text-[11px] font-bold opacity-85">INGLÊS</span>
          <span className="text-lg">{level}</span>
        </div>

        {SKILLS.map((skill) => (
          <SkillHex key={skill.key} skill={skill} pct={mastery[skill.key]} />
        ))}
      </div>
    </section>
  );
}

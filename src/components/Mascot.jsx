import { motion, useReducedMotion } from 'framer-motion';

// Mascote placeholder em SVG + Framer Motion. Suporta os moods usados hoje
// (idle/wave/celebrate); trocar pelo asset Lottie definitivo é só substituir
// o conteúdo deste componente — a prop `mood` já mapeia os estados esperados.
export function Mascot({ mood = 'idle', size = 72, className = '', tone = 'brand' }) {
  const reduceMotion = useReducedMotion();
  const bodyFill = tone === 'light' ? '#ffffff' : 'url(#ef-mascot-grad)';
  const faceStroke = tone === 'light' ? 'var(--primary-dark)' : '#ffffff';
  const antennaStroke = tone === 'light' ? '#ffffff' : 'url(#ef-mascot-grad)';
  const armFill = tone === 'light' ? 'var(--xp)' : bodyFill;

  const bodyAnimate = reduceMotion
    ? {}
    : mood === 'celebrate'
      ? { y: [0, -10, 0], scale: [1, 1.08, 1] }
      : { y: [0, -4, 0] };
  const bodyTransition = {
    duration: mood === 'celebrate' ? 0.6 : 2.6,
    repeat: reduceMotion ? 0 : Infinity,
    ease: 'easeInOut',
  };

  const armAnimate =
    !reduceMotion && (mood === 'wave' || mood === 'celebrate')
      ? { rotate: [0, -30, 10, -25, 0] }
      : { rotate: 0 };
  const armTransition = {
    duration: 1.1,
    repeat: !reduceMotion && mood !== 'idle' ? Infinity : 0,
    repeatDelay: 1,
  };

  const blinkAnimate = reduceMotion ? {} : { ry: [5, 5, 0.6, 5] };
  const blinkTransition = { duration: 3, repeat: Infinity, times: [0, 0.9, 0.95, 1] };

  return (
    <svg
      viewBox="0 0 100 100"
      width={size}
      height={size}
      className={className}
      role="img"
      aria-label="Mascote EnglishFlow"
    >
      <defs>
        <linearGradient id="ef-mascot-grad" x1="0" y1="0" x2="1" y2="1">
          <stop offset="0%" stopColor="var(--primary)" />
          <stop offset="100%" stopColor="var(--secondary)" />
        </linearGradient>
      </defs>

      <motion.g animate={bodyAnimate} transition={bodyTransition}>
        <ellipse cx="50" cy="58" rx="30" ry="28" fill={bodyFill} />

        <line x1="50" y1="22" x2="50" y2="10" stroke={antennaStroke} strokeWidth="3" strokeLinecap="round" />
        <circle cx="50" cy="8" r="4" fill="var(--xp)" />

        <motion.g
          style={{ transformOrigin: '78px 58px' }}
          animate={armAnimate}
          transition={armTransition}
        >
          <circle cx="78" cy="60" r="7" fill={armFill} />
        </motion.g>

        {mood === 'celebrate' ? (
          <>
            <path d="M34 48 q4 -6 8 0" stroke={faceStroke} strokeWidth="3" fill="none" strokeLinecap="round" />
            <path d="M58 48 q4 -6 8 0" stroke={faceStroke} strokeWidth="3" fill="none" strokeLinecap="round" />
          </>
        ) : (
          <>
            <motion.ellipse cx="38" cy="50" rx="5" fill={faceStroke} animate={blinkAnimate} transition={blinkTransition} />
            <motion.ellipse cx="62" cy="50" rx="5" fill={faceStroke} animate={blinkAnimate} transition={blinkTransition} />
          </>
        )}

        <path d="M40 66 q10 8 20 0" stroke={faceStroke} strokeWidth="3" fill="none" strokeLinecap="round" />
      </motion.g>
    </svg>
  );
}

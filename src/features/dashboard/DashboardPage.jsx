import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { motion, useMotionValue, useTransform, animate } from 'framer-motion';
import { Flame, Star, Check, Trophy, Sparkles, Brain, Lock, Bell, BookMarked } from 'lucide-react';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchDashboard, setDailyGoal } from '../../services/dashboardService';
import { fetchModulesWithProgress } from '../../services/lessonService';
import { fetchLevelTests, currentLevelProgress } from '../../services/levelTestService';
import { ACHIEVEMENTS, levelFromXp } from './achievements';
import { KnowledgeHexGrid } from './KnowledgeHexGrid';
import { LevelTrack } from './LevelTrack';
import { hojeISO } from '../../lib/dateUtils';
import { celebrate } from '../../lib/celebration';
import { Mascot } from '../../components/Mascot';
import {
  isPushSupported,
  isSubscribed,
  enableReminders,
  disableReminders,
} from '../../services/pushService';

const GOAL_OPTIONS = [5, 10, 20, 30];

const WEEKDAY_LETTERS = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];

function findNextLesson(modules) {
  for (const module of modules ?? []) {
    const lesson = module.lessons.find((l) => l.status === 'available');
    if (lesson) return { ...lesson, moduleTitle: module.title };
  }
  return null;
}

// Anima um número inteiro subindo do valor anterior até `value` (ex: XP, streak).
function CountUp({ value }) {
  const motionValue = useMotionValue(0);
  const rounded = useTransform(motionValue, (v) => Math.round(v));
  const [display, setDisplay] = useState(0);

  useEffect(() => {
    const controls = animate(motionValue, value, { duration: 0.8, ease: 'easeOut' });
    const unsubscribe = rounded.on('change', setDisplay);
    return () => {
      controls.stop();
      unsubscribe();
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [value]);

  return <>{display}</>;
}

function lastSevenDays() {
  const days = [];
  for (let i = 6; i >= 0; i--) {
    const d = new Date();
    d.setDate(d.getDate() - i);
    const iso = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
    days.push({ iso, weekday: WEEKDAY_LETTERS[d.getDay()] });
  }
  return days;
}

export function DashboardPage() {
  const { user, profile, dueReviewCount, refreshProfile } = useAuth();
  const [data, setData] = useState(null);
  const [modules, setModules] = useState(null);
  const [levelTests, setLevelTests] = useState(null);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchDashboard(user.id).then(setData).catch((err) => setError(err.message));
    fetchModulesWithProgress(user.id).then(setModules).catch(() => setModules([]));
    fetchLevelTests(user.id).then(setLevelTests).catch(() => setLevelTests([]));
  }, [user.id]);

  async function changeGoal(minutes) {
    try {
      await setDailyGoal(user.id, minutes);
      await refreshProfile();
    } catch (err) {
      setError(err.message);
    }
  }

  const xp = profile?.xp_total ?? 0;
  const { level, inLevel, perLevel } = levelFromXp(xp);
  const goal = profile?.daily_goal_minutes ?? 10;
  const nextLesson = findNextLesson(modules);
  const week = lastSevenDays();
  const cefr = currentLevelProgress(modules ?? []);
  const cefrPct = cefr.total > 0 ? Math.round((cefr.completed / cefr.total) * 100) : 0;
  const firstName = profile?.display_name?.trim().split(' ')[0];

  // Comemora a meta diária uma vez por dia (flag em localStorage evita repetir a cada visita).
  useEffect(() => {
    if (!data || data.minutesToday < goal) return;
    const key = `ef_goal_hit_${user.id}_${hojeISO()}`;
    if (localStorage.getItem(key)) return;
    localStorage.setItem(key, '1');
    celebrate();
  }, [data, goal, user.id]);

  return (
    <div className="flex min-h-screen flex-col bg-bg text-text min-[760px]:flex-row">
      <Sidebar />
      <main className="mx-auto w-full max-w-4xl space-y-4 p-6 pb-24 min-[760px]:pb-6">
        <div className="flex items-center gap-3">
          <Mascot mood="idle" size={56} />
          <div>
            <h1 className="font-display text-2xl font-extrabold text-text">
              Olá{firstName ? `, ${firstName}` : ''}!
            </h1>
            <p className="text-text-muted">Continue de onde parou hoje.</p>
          </div>
        </div>
        {error && <p className="text-error">{error}</p>}

        {/* Card principal: streak / XP / nível CEFR / meta diária + CTA */}
        <motion.section
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.4, ease: 'easeOut' }}
          className="relative overflow-hidden rounded-lg p-6 text-white shadow-elevation-3"
          style={{
            background:
              'linear-gradient(155deg, color-mix(in srgb, var(--primary) 92%, black) 0%, var(--primary-dark) 55%, color-mix(in srgb, var(--secondary) 80%, black) 100%)',
          }}
        >
          <div
            className="pointer-events-none absolute inset-0 opacity-40"
            style={{
              backdropFilter: 'blur(var(--blur-md))',
              background:
                'radial-gradient(circle at 85% -10%, rgba(255,255,255,0.25), transparent 55%)',
            }}
          />

          <div className="relative flex flex-wrap items-center gap-2">
            <div className="flex items-center gap-1.5 rounded-full bg-white/15 px-4 py-2 text-sm font-bold backdrop-blur-sm">
              <Flame size={16} />
              <CountUp value={profile?.streak_current ?? 0} />{' '}
              <span className="font-normal opacity-80">sequência</span>
            </div>
            <div className="flex items-center gap-1.5 rounded-full bg-white/15 px-4 py-2 text-sm font-bold backdrop-blur-sm">
              <Star size={16} /> <CountUp value={xp} /> <span className="font-normal opacity-80">XP</span>
            </div>
            <div className="flex items-center gap-1.5 rounded-full bg-white/15 px-4 py-2 text-sm font-bold backdrop-blur-sm">
              <Check size={16} /> {data ? `${data.lessonsCompleted}/${data.totalLessons}` : '...'}{' '}
              <span className="font-normal opacity-80">lições</span>
            </div>
          </div>

          <div className="relative mt-5 flex items-center justify-between gap-3">
            <div>
              <div className="font-display text-lg font-extrabold">Seu inglês está evoluindo!</div>
              <p className="text-sm text-white/85">
                {cefrPct >= 100
                  ? `Nível ${cefr.level} completo — faça o Teste de Nivelamento!`
                  : `Faltam ${100 - cefrPct}% para o próximo nível`}
              </p>
            </div>
            <div className="flex h-14 w-14 flex-shrink-0 items-center justify-center rounded-2xl bg-white/15 font-display text-lg font-extrabold backdrop-blur-sm">
              {cefr.level}
            </div>
          </div>
          <div className="relative mt-3 flex items-center gap-2">
            <div className="h-2 flex-1 rounded-full bg-white/25">
              <motion.div
                className="h-2 rounded-full bg-white"
                initial={{ width: 0 }}
                animate={{ width: `${cefrPct}%` }}
                transition={{ duration: 0.7, ease: 'easeOut' }}
              />
            </div>
            <span className="text-sm font-bold">{cefrPct}%</span>
          </div>

          {cefrPct >= 100 && (
            <Link
              to="/level-test"
              className="relative mt-3 inline-flex items-center gap-1.5 rounded-2xl bg-white px-4 py-2 text-sm font-bold text-primary-dark"
            >
              <Trophy size={16} /> Fazer Teste de Nivelamento
            </Link>
          )}

          <div className="relative mt-5 border-t border-white/20 pt-4">
            <div className="mb-1 flex justify-between text-xs font-semibold text-white/85">
              <span>Meta diária</span>
              <span>{data ? `${data.minutesToday}/${goal} min` : '...'}</span>
            </div>
            <div className="h-2 rounded-full bg-white/25">
              <motion.div
                className="h-2 rounded-full bg-white"
                initial={{ width: 0 }}
                animate={{
                  width: `${data ? Math.min(100, Math.round((data.minutesToday / goal) * 100)) : 0}%`,
                }}
                transition={{ duration: 0.7, ease: 'easeOut', delay: 0.15 }}
              />
            </div>
          </div>

          {nextLesson && (
            <div className="relative mt-5 flex items-center justify-between gap-3 rounded-2xl bg-white/10 p-4 backdrop-blur-sm">
              <div className="min-w-0">
                <div className="text-xs font-bold uppercase tracking-wide text-white/70">
                  Continue aprendendo
                </div>
                <div className="truncate font-display text-base font-bold">{nextLesson.title}</div>
                <div className="text-xs text-white/75">
                  {nextLesson.moduleTitle} · +{nextLesson.xp_reward} XP
                </div>
              </div>
              <motion.div whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.97 }}>
                <Link
                  to={`/lesson/${nextLesson.id}`}
                  className="flex-shrink-0 rounded-2xl bg-white px-6 py-2.5 font-display font-bold text-primary-dark"
                >
                  Continuar
                </Link>
              </motion.div>
            </div>
          )}
        </motion.section>

        {/* Centro de Conhecimento + Níveis */}
        <div className="min-[1024px]:grid min-[1024px]:grid-cols-[1fr_260px] min-[1024px]:items-start min-[1024px]:gap-4 min-[1024px]:space-y-0 space-y-4">
          <KnowledgeHexGrid level={cefr.level} skillMastery={data?.skillMastery} />
          <LevelTrack levelTests={levelTests ?? []} />
        </div>

        {/* Nível de XP */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <div className="mb-1 flex justify-between text-sm text-text-muted">
            <span>Nível {level}</span>
            <span>
              {inLevel}/{perLevel} XP
            </span>
          </div>
          <Bar pct={Math.round((inLevel / perLevel) * 100)} color="bg-primary" />
        </section>

        {/* Sua semana + Revisão pendente */}
        <section className="grid grid-cols-2 gap-3">
          <div className="rounded-2xl border-2 border-border bg-surface p-4">
            <h3 className="mb-3 font-display font-bold text-text">Sua semana</h3>
            <div className="flex gap-1">
              {week.map(({ iso }) => (
                <div
                  key={iso}
                  className={`h-8 flex-1 rounded-lg ${
                    data?.studyDays?.has(iso) ? 'bg-success' : 'bg-surface-2'
                  }`}
                />
              ))}
            </div>
          </div>

          <motion.div whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.98 }}>
            <Link
              to="/review"
              className={`block rounded-2xl p-4 transition-shadow ${
                dueReviewCount > 0 ? 'text-white' : 'border-2 border-border bg-surface hover:bg-surface-2'
              }`}
              style={
                dueReviewCount > 0
                  ? {
                      background: 'var(--gradient-primary)',
                      boxShadow: '0 0 24px color-mix(in srgb, var(--primary) 45%, transparent)',
                    }
                  : undefined
              }
            >
              <h3
                className={`flex items-center gap-1.5 font-display font-bold ${
                  dueReviewCount > 0 ? 'text-white' : 'text-text'
                }`}
              >
                <BookMarked size={16} /> Revisão pendente
              </h3>
              <p
                className={`mt-1 flex items-center gap-1 text-sm ${
                  dueReviewCount > 0 ? 'text-white/90' : 'text-text-muted'
                }`}
              >
                {dueReviewCount > 0 ? (
                  `${dueReviewCount} ${dueReviewCount === 1 ? 'palavra' : 'palavras'} · Revisar agora →`
                ) : (
                  <>
                    <Sparkles size={14} /> Nada pendente
                  </>
                )}
              </p>
            </Link>
          </motion.div>
        </section>

        {/* Meta diária: ajustar */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <div className="flex items-center justify-between">
            <h3 className="font-display font-bold text-text">Ajustar meta diária</h3>
            <select
              value={goal}
              onChange={(e) => changeGoal(Number(e.target.value))}
              className="rounded-[14px] border-2 border-border bg-surface px-2 py-1 text-sm text-text"
            >
              {GOAL_OPTIONS.map((m) => (
                <option key={m} value={m}>
                  {m} min
                </option>
              ))}
            </select>
          </div>
        </section>

        {/* Lembretes diários */}
        <ReminderToggle userId={user.id} />

        {/* Calendário do mês */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <h3 className="mb-3 font-display font-bold text-text">Dias estudados este mês</h3>
          <MonthCalendar studyDays={data?.studyDays ?? new Set()} />
        </section>

        <Link to="/practice" className="ef-juicy-btn flex items-center justify-center gap-2">
          <Brain size={18} /> Praticar meus erros
        </Link>

        {/* Conquistas */}
        {data && (
          <section>
            <h3 className="mb-3 font-display font-bold text-text">Conquistas</h3>
            <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
              {ACHIEVEMENTS.map((a) => {
                const earned = a.earned({
                  xpTotal: xp,
                  streakBest: profile?.streak_best ?? 0,
                  lessonsCompleted: data.lessonsCompleted,
                  reviewCount: data.reviewCount,
                  conversationCount: data.conversationCount,
                });
                return (
                  <div
                    key={a.code}
                    className={`rounded-2xl border-2 p-3 text-center ${
                      earned ? 'border-xp bg-surface-2' : 'border-border bg-surface-2 opacity-60'
                    }`}
                    style={earned ? { filter: 'drop-shadow(0 0 8px color-mix(in srgb, var(--xp) 50%, transparent))' } : undefined}
                  >
                    <div className="flex justify-center text-2xl">
                      {earned ? <a.icon size={28} /> : <Lock size={24} />}
                    </div>
                    <div className="mt-1 text-sm font-semibold text-text">{a.title}</div>
                    <div className="text-xs text-text-muted">{a.description}</div>
                  </div>
                );
              })}
            </div>
          </section>
        )}

        <Link to="/" className="inline-block font-semibold text-primary hover:underline">
          ← Voltar para as lições
        </Link>
      </main>
    </div>
  );
}

function ReminderToggle({ userId }) {
  const [subscribed, setSubscribed] = useState(null); // null = carregando
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState('');

  useEffect(() => {
    if (!isPushSupported()) {
      setSubscribed(false);
      return;
    }
    isSubscribed().then(setSubscribed);
  }, []);

  async function toggle() {
    setBusy(true);
    setError('');
    try {
      if (subscribed) {
        await disableReminders();
        setSubscribed(false);
      } else {
        await enableReminders(userId);
        setSubscribed(true);
      }
    } catch (err) {
      setError(err.message);
    } finally {
      setBusy(false);
    }
  }

  if (!isPushSupported()) return null;

  return (
    <section className="rounded-2xl border-2 border-border bg-surface p-4">
      <div className="flex items-center justify-between gap-3">
        <div>
          <h3 className="flex items-center gap-2 font-display font-bold text-text">
            <Bell size={18} /> Lembrete diário
          </h3>
          <p className="text-sm text-text-muted">
            {subscribed
              ? 'Ativado — você recebe um aviso às 20h se ainda não estudou.'
              : 'Receba um aviso às 20h nos dias que você ainda não estudou.'}
          </p>
        </div>
        <button
          onClick={toggle}
          disabled={busy || subscribed === null}
          className={`flex-shrink-0 rounded-2xl px-4 py-2 text-sm font-semibold disabled:opacity-50 ${
            subscribed
              ? 'border-2 border-border text-text-muted hover:bg-surface-2'
              : 'ef-juicy-btn'
          }`}
        >
          {busy ? '...' : subscribed ? 'Desativar' : 'Ativar'}
        </button>
      </div>
      {error && <p className="mt-2 text-sm text-error">{error}</p>}
    </section>
  );
}

function Bar({ pct, color }) {
  return (
    <div className="h-2 w-full rounded-full bg-surface-2">
      <div className={`h-2 rounded-full transition-all ${color}`} style={{ width: `${pct}%` }} />
    </div>
  );
}

function MonthCalendar({ studyDays }) {
  const now = new Date();
  const year = now.getFullYear();
  const month = now.getMonth();
  const daysInMonth = new Date(year, month + 1, 0).getDate();
  const firstWeekday = new Date(year, month, 1).getDay();
  const cells = [];
  for (let i = 0; i < firstWeekday; i++) cells.push(null);
  for (let d = 1; d <= daysInMonth; d++) cells.push(d);

  const iso = (d) =>
    `${year}-${String(month + 1).padStart(2, '0')}-${String(d).padStart(2, '0')}`;

  return (
    <div className="grid grid-cols-7 gap-1 text-center text-xs">
      {WEEKDAY_LETTERS.map((w, i) => (
        <div key={i} className="font-semibold text-text-muted">
          {w}
        </div>
      ))}
      {cells.map((d, i) => (
        <div
          key={i}
          className={`flex h-8 items-center justify-center rounded-lg ${
            d == null
              ? ''
              : studyDays.has(iso(d))
                ? 'bg-success font-semibold text-white'
                : 'bg-surface-2 text-text-muted'
          }`}
        >
          {d ?? ''}
        </div>
      ))}
    </div>
  );
}

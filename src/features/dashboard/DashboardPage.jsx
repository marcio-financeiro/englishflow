import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchDashboard, setDailyGoal } from '../../services/dashboardService';
import { fetchModulesWithProgress } from '../../services/lessonService';
import { ACHIEVEMENTS, levelFromXp } from './achievements';
import {
  isPushSupported,
  isSubscribed,
  enableReminders,
  disableReminders,
} from '../../services/pushService';

const GOAL_OPTIONS = [5, 10, 20, 30];

const SKILL_LABEL = {
  grammar: 'Gramática',
  vocab: 'Vocabulário',
  listening: 'Escuta',
  writing: 'Escrita',
  other: 'Outros',
};

const WEEKDAY_LETTERS = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];

function findNextLesson(modules) {
  for (const module of modules ?? []) {
    const lesson = module.lessons.find((l) => l.status === 'available');
    if (lesson) return { ...lesson, moduleTitle: module.title };
  }
  return null;
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
  const [error, setError] = useState('');

  useEffect(() => {
    fetchDashboard(user.id).then(setData).catch((err) => setError(err.message));
    fetchModulesWithProgress(user.id).then(setModules).catch(() => setModules([]));
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

  return (
    <div className="flex min-h-screen flex-col bg-bg text-text min-[760px]:flex-row">
      <Sidebar />
      <main className="mx-auto w-full max-w-2xl space-y-4 p-6 pb-24 min-[760px]:pb-6">
        <h1 className="font-display text-2xl font-extrabold text-text">Olá! 👋</h1>
        <p className="-mt-3 text-text-muted">Continue de onde parou hoje.</p>
        {error && <p className="text-error">{error}</p>}

        {/* Streak / XP / lições — resumo rápido */}
        <section className="grid grid-cols-3 gap-3">
          <div
            className="rounded-2xl p-4 text-center text-white shadow-card"
            style={{ background: 'linear-gradient(135deg, var(--xp), var(--streak))' }}
          >
            <div className="font-display text-xl font-extrabold">
              🔥 {profile?.streak_current ?? 0} dias
            </div>
            <div className="text-xs text-white/85">sequência ativa</div>
          </div>
          <div className="rounded-2xl border-2 border-border bg-surface p-4 text-center">
            <div className="font-display text-xl font-extrabold text-text">⭐ {xp} XP</div>
            <div className="text-xs text-text-muted">experiência total</div>
          </div>
          <div className="rounded-2xl border-2 border-border bg-surface p-4 text-center">
            <div className="font-display text-xl font-extrabold text-text">
              ✓ {data ? `${data.lessonsCompleted}/${data.totalLessons}` : '...'}
            </div>
            <div className="text-xs text-text-muted">lições concluídas</div>
          </div>
        </section>

        {/* Continue aprendendo */}
        {nextLesson && (
          <section className="flex items-center justify-between rounded-2xl border-2 border-border bg-surface p-5">
            <div>
              <div className="text-xs font-bold uppercase tracking-wide text-primary">
                Continue aprendendo
              </div>
              <div className="font-display text-lg font-bold text-text">{nextLesson.title}</div>
              <div className="text-sm text-text-muted">
                {nextLesson.moduleTitle} · +{nextLesson.xp_reward} XP
              </div>
            </div>
            <Link to={`/lesson/${nextLesson.id}`} className="ef-juicy-btn px-6">
              Continuar
            </Link>
          </section>
        )}

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

          <Link
            to="/review"
            className={`rounded-2xl border-2 p-4 ${
              dueReviewCount > 0
                ? 'border-primary bg-primary-soft'
                : 'border-border bg-surface hover:bg-surface-2'
            }`}
          >
            <h3
              className={`font-display font-bold ${
                dueReviewCount > 0 ? 'text-primary-dark' : 'text-text'
              }`}
            >
              Revisão pendente
            </h3>
            <p className={`text-sm ${dueReviewCount > 0 ? 'text-primary-dark' : 'text-text-muted'}`}>
              {dueReviewCount > 0
                ? `${dueReviewCount} ${dueReviewCount === 1 ? 'palavra' : 'palavras'} para revisar`
                : 'Nada pendente ✨'}
            </p>
          </Link>
        </section>

        {/* Nível */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <div className="mb-1 flex justify-between text-sm text-text-muted">
            <span>Nível {level}</span>
            <span>
              {inLevel}/{perLevel} XP
            </span>
          </div>
          <Bar pct={Math.round((inLevel / perLevel) * 100)} color="bg-primary" />
        </section>

        {/* Meta diária */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <div className="mb-2 flex items-center justify-between">
            <h3 className="font-display font-bold text-text">Meta diária</h3>
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
          <div className="mb-1 text-sm text-text-muted">
            {data ? `${data.minutesToday} de ${goal} min hoje` : '...'}
          </div>
          <Bar
            pct={data ? Math.min(100, Math.round((data.minutesToday / goal) * 100)) : 0}
            color="bg-success"
          />
        </section>

        {/* Lembretes diários */}
        <ReminderToggle userId={user.id} />

        {/* Calendário do mês */}
        <section className="rounded-2xl border-2 border-border bg-surface p-4">
          <h3 className="mb-3 font-display font-bold text-text">Dias estudados este mês</h3>
          <MonthCalendar studyDays={data?.studyDays ?? new Set()} />
        </section>

        {/* Pontos a praticar */}
        {data && (
          <section className="rounded-2xl border-2 border-border bg-surface p-4">
            <h3 className="mb-3 font-display font-bold text-text">Onde praticar mais</h3>
            <SkillBreakdown mistakesByType={data.mistakesByType} />
            <Link to="/practice" className="ef-juicy-btn mt-4 block text-center">
              🧠 Praticar meus erros
            </Link>
          </section>
        )}

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
                  >
                    <div className="text-2xl">{earned ? a.icon : '🔒'}</div>
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
          <h3 className="font-display font-bold text-text">🔔 Lembrete diário</h3>
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

function SkillBreakdown({ mistakesByType }) {
  const entries = Object.entries(mistakesByType).sort((a, b) => b[1] - a[1]);
  if (entries.length === 0) {
    return <p className="text-sm text-text-muted">Sem erros registrados ainda 🎉</p>;
  }
  const max = entries[0][1] || 1;
  return (
    <div className="space-y-2">
      {entries.map(([type, count]) => (
        <div key={type}>
          <div className="mb-1 flex justify-between text-sm text-text-muted">
            <span>{SKILL_LABEL[type] || type}</span>
            <span>{count} erro(s)</span>
          </div>
          <Bar pct={Math.round((count / max) * 100)} color="bg-error" />
        </div>
      ))}
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

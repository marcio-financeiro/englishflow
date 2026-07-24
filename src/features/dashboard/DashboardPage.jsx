import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchDashboard, setDailyGoal } from '../../services/dashboardService';
import { ACHIEVEMENTS, levelFromXp } from './achievements';

const GOAL_OPTIONS = [5, 10, 20, 30];

const SKILL_LABEL = {
  grammar: 'Gramática',
  vocab: 'Vocabulário',
  listening: 'Escuta',
  writing: 'Escrita',
  other: 'Outros',
};

const WEEKDAYS = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];

export function DashboardPage() {
  const { user, profile, refreshProfile } = useAuth();
  const [data, setData] = useState(null);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchDashboard(user.id).then(setData).catch((err) => setError(err.message));
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

  return (
    <div className="flex min-h-screen bg-bg text-text">
      <Sidebar />
      <main className="mx-auto w-full max-w-2xl space-y-6 p-6">
        <h2 className="text-2xl font-bold text-slate-900">Meu progresso</h2>
        {error && <p className="text-red-600">{error}</p>}

        {/* Nível + XP + streak */}
        <section className="grid grid-cols-3 gap-3">
          <Stat label="Nível" value={level} />
          <Stat label="XP total" value={xp} />
          <Stat label="Melhor streak" value={`${profile?.streak_best ?? 0} 🔥`} />
        </section>

        <section className="rounded-lg bg-white p-4 shadow">
          <div className="mb-1 flex justify-between text-sm text-slate-500">
            <span>Nível {level}</span>
            <span>
              {inLevel}/{perLevel} XP
            </span>
          </div>
          <Bar pct={Math.round((inLevel / perLevel) * 100)} color="bg-indigo-600" />
        </section>

        {/* Meta diária */}
        <section className="rounded-lg bg-white p-4 shadow">
          <div className="mb-2 flex items-center justify-between">
            <h3 className="font-semibold text-slate-900">Meta diária</h3>
            <select
              value={goal}
              onChange={(e) => changeGoal(Number(e.target.value))}
              className="rounded border border-slate-300 px-2 py-1 text-sm"
            >
              {GOAL_OPTIONS.map((m) => (
                <option key={m} value={m}>
                  {m} min
                </option>
              ))}
            </select>
          </div>
          <div className="mb-1 text-sm text-slate-500">
            {data ? `${data.minutesToday} de ${goal} min hoje` : '...'}
          </div>
          <Bar
            pct={data ? Math.min(100, Math.round((data.minutesToday / goal) * 100)) : 0}
            color="bg-emerald-500"
          />
        </section>

        {/* Calendário do mês */}
        <section className="rounded-lg bg-white p-4 shadow">
          <h3 className="mb-3 font-semibold text-slate-900">Dias estudados este mês</h3>
          <Calendar studyDays={data?.studyDays ?? new Set()} />
        </section>

        {/* Progresso das lições */}
        {data && (
          <section className="rounded-lg bg-white p-4 shadow">
            <div className="mb-1 flex justify-between text-sm text-slate-500">
              <span className="font-semibold text-slate-900">Lições concluídas</span>
              <span>
                {data.lessonsCompleted}/{data.totalLessons}
              </span>
            </div>
            <Bar
              pct={
                data.totalLessons
                  ? Math.round((data.lessonsCompleted / data.totalLessons) * 100)
                  : 0
              }
              color="bg-indigo-600"
            />
          </section>
        )}

        {/* Pontos a praticar */}
        {data && (
          <section className="rounded-lg bg-white p-4 shadow">
            <h3 className="mb-3 font-semibold text-slate-900">Onde praticar mais</h3>
            <SkillBreakdown mistakesByType={data.mistakesByType} />
            <Link
              to="/practice"
              className="mt-4 block rounded bg-indigo-600 px-4 py-2 text-center font-medium text-white hover:bg-indigo-700"
            >
              🧠 Praticar meus erros
            </Link>
          </section>
        )}

        {/* Conquistas */}
        {data && (
          <section>
            <h3 className="mb-3 font-semibold text-slate-900">Conquistas</h3>
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
                    className={`rounded-lg border p-3 text-center ${
                      earned
                        ? 'border-amber-300 bg-amber-50'
                        : 'border-slate-200 bg-slate-100 opacity-60'
                    }`}
                  >
                    <div className="text-2xl">{earned ? a.icon : '🔒'}</div>
                    <div className="mt-1 text-sm font-medium text-slate-900">{a.title}</div>
                    <div className="text-xs text-slate-500">{a.description}</div>
                  </div>
                );
              })}
            </div>
          </section>
        )}

        <Link to="/" className="inline-block text-indigo-600 hover:underline">
          ← Voltar para as lições
        </Link>
      </main>
    </div>
  );
}

function Stat({ label, value }) {
  return (
    <div className="rounded-lg bg-white p-4 text-center shadow">
      <div className="text-2xl font-bold text-slate-900">{value}</div>
      <div className="text-xs text-slate-500">{label}</div>
    </div>
  );
}

function Bar({ pct, color }) {
  return (
    <div className="h-2 w-full rounded bg-slate-200">
      <div className={`h-2 rounded transition-all ${color}`} style={{ width: `${pct}%` }} />
    </div>
  );
}

function SkillBreakdown({ mistakesByType }) {
  const entries = Object.entries(mistakesByType).sort((a, b) => b[1] - a[1]);
  if (entries.length === 0) {
    return <p className="text-sm text-slate-500">Sem erros registrados ainda 🎉</p>;
  }
  const max = entries[0][1] || 1;
  return (
    <div className="space-y-2">
      {entries.map(([type, count]) => (
        <div key={type}>
          <div className="mb-1 flex justify-between text-sm text-slate-600">
            <span>{SKILL_LABEL[type] || type}</span>
            <span>{count} erro(s)</span>
          </div>
          <Bar pct={Math.round((count / max) * 100)} color="bg-red-400" />
        </div>
      ))}
    </div>
  );
}

function Calendar({ studyDays }) {
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
      {WEEKDAYS.map((w, i) => (
        <div key={i} className="font-medium text-slate-400">
          {w}
        </div>
      ))}
      {cells.map((d, i) => (
        <div
          key={i}
          className={`flex h-8 items-center justify-center rounded ${
            d == null
              ? ''
              : studyDays.has(iso(d))
                ? 'bg-emerald-500 font-medium text-white'
                : 'bg-slate-100 text-slate-500'
          }`}
        >
          {d ?? ''}
        </div>
      ))}
    </div>
  );
}

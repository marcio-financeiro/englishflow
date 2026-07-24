import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchModulesWithProgress } from '../../services/lessonService';

const NODE_ICON = {
  completed: '✓',
  available: '▶',
  locked: '🔒',
};

export function LessonList() {
  const { user, profile, dueReviewCount } = useAuth();
  const [modules, setModules] = useState(null);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchModulesWithProgress(user.id)
      .then(setModules)
      .catch((err) => setError(err.message));
  }, [user.id]);

  const totalLessons = modules?.reduce((sum, m) => sum + m.lessons.length, 0) ?? 0;
  const completedLessons =
    modules?.reduce((sum, m) => sum + m.lessons.filter((l) => l.status === 'completed').length, 0) ??
    0;

  return (
    <div className="flex min-h-screen bg-bg text-text">
      <Sidebar />

      <main className="flex flex-1 justify-center gap-8 p-6 md:p-10">
        <div className="w-full max-w-3xl">
          <h1 className="font-display text-2xl font-extrabold text-text">Suas lições</h1>
          <p className="mb-6 text-text-muted">
            Continue de onde parou e mantenha sua sequência.
          </p>

          {error && <p className="text-error">{error}</p>}
          {!modules && !error && <p className="text-text-muted">Carregando lições...</p>}

          {dueReviewCount > 0 && (
            <Link
              to="/review"
              className="mb-6 flex items-center justify-between rounded-2xl border-2 border-primary bg-primary-soft px-4 py-3 text-primary-dark hover:brightness-105"
            >
              <span className="font-semibold">
                📚 Você tem {dueReviewCount} {dueReviewCount === 1 ? 'palavra' : 'palavras'} para
                revisar hoje
              </span>
              <span className="font-semibold">Revisar →</span>
            </Link>
          )}

          {modules?.map((module) => (
            <section key={module.id} className="mb-10">
              <h2 className="font-display text-xl font-bold text-text">{module.title}</h2>
              {module.description && (
                <p className="mb-4 text-sm text-text-muted">{module.description}</p>
              )}

              <div className="flex flex-wrap gap-6">
                {module.lessons.map((lesson) => (
                  <LessonNode key={lesson.id} lesson={lesson} />
                ))}
              </div>
            </section>
          ))}
        </div>

        <aside className="hidden w-[260px] flex-shrink-0 min-[1200px]:block">
          <div className="rounded-2xl border-2 border-border bg-surface p-5 shadow-card">
            <h3 className="mb-4 font-display text-base font-bold text-text">Seu progresso</h3>
            <div className="space-y-3 text-sm">
              <StatRow icon="⭐" label="XP total" value={profile?.xp_total ?? 0} />
              <StatRow icon="🔥" label="Sequência" value={`${profile?.streak_current ?? 0} dias`} />
              <StatRow icon="📖" label="Lições" value={`${completedLessons}/${totalLessons}`} />
            </div>
          </div>
        </aside>
      </main>
    </div>
  );
}

function StatRow({ icon, label, value }) {
  return (
    <div className="flex items-center justify-between">
      <span className="text-text-muted">
        {icon} {label}
      </span>
      <span className="font-display font-bold text-text">{value}</span>
    </div>
  );
}

function LessonNode({ lesson }) {
  const locked = lesson.status === 'locked';

  const circle = (
    <div
      className={`flex h-[68px] w-[68px] items-center justify-center rounded-full text-2xl transition-transform ${
        lesson.status === 'completed'
          ? 'bg-success text-white shadow-card'
          : lesson.status === 'available'
            ? 'ef-node-available border-[3px] border-primary bg-surface text-primary hover:scale-105'
            : 'cursor-not-allowed border-2 border-dashed border-border bg-surface-2 text-text-muted opacity-65'
      }`}
    >
      {NODE_ICON[lesson.status]}
    </div>
  );

  return (
    <div className="flex w-[84px] flex-col items-center gap-2 text-center">
      {locked ? circle : <Link to={`/lesson/${lesson.id}`}>{circle}</Link>}
      <span className="line-clamp-2 text-xs font-semibold text-text">{lesson.title}</span>
      <span className="text-xs font-bold text-xp">{lesson.xp_reward} XP</span>
    </div>
  );
}

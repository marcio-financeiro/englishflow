import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';
import { fetchModulesWithProgress } from '../../services/lessonService';

const STATUS_LABEL = {
  completed: '✅',
  available: '▶️',
  locked: '🔒',
};

export function LessonList() {
  const { user, dueReviewCount } = useAuth();
  const [modules, setModules] = useState(null);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchModulesWithProgress(user.id)
      .then(setModules)
      .catch((err) => setError(err.message));
  }, [user.id]);

  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <main className="mx-auto max-w-3xl p-6">
        {error && <p className="text-red-600">{error}</p>}
        {!modules && !error && <p className="text-slate-500">Carregando lições...</p>}

        {dueReviewCount > 0 && (
          <Link
            to="/review"
            className="mb-6 flex items-center justify-between rounded-lg border border-amber-300 bg-amber-50 px-4 py-3 hover:bg-amber-100"
          >
            <span className="font-medium text-amber-900">
              📚 Você tem {dueReviewCount}{' '}
              {dueReviewCount === 1 ? 'palavra' : 'palavras'} para revisar hoje
            </span>
            <span className="text-amber-700">Revisar →</span>
          </Link>
        )}

        {modules?.map((module) => (
          <section key={module.id} className="mb-8">
            <h2 className="text-lg font-semibold text-slate-900">{module.title}</h2>
            {module.description && (
              <p className="mb-3 text-sm text-slate-500">{module.description}</p>
            )}

            <div className="flex flex-col gap-2">
              {module.lessons.map((lesson) => {
                const locked = lesson.status === 'locked';
                const content = (
                  <div
                    className={`flex items-center justify-between rounded border px-4 py-3 ${
                      locked
                        ? 'border-slate-200 bg-slate-100 text-slate-400'
                        : 'border-slate-300 bg-white hover:bg-slate-50'
                    }`}
                  >
                    <span>{lesson.title}</span>
                    <span>
                      {STATUS_LABEL[lesson.status]} {lesson.xp_reward} XP
                    </span>
                  </div>
                );

                return locked ? (
                  <div key={lesson.id}>{content}</div>
                ) : (
                  <Link key={lesson.id} to={`/lesson/${lesson.id}`}>
                    {content}
                  </Link>
                );
              })}
            </div>
          </section>
        ))}
      </main>
    </div>
  );
}

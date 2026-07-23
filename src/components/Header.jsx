import { Link } from 'react-router-dom';
import { useAuth } from '../features/auth/AuthContext';

export function Header() {
  const { profile, dueReviewCount, signOut } = useAuth();

  return (
    <header className="flex items-center justify-between bg-indigo-600 px-6 py-4 text-white shadow">
      <Link to="/" className="text-lg font-bold">
        EnglishFlow
      </Link>

      <div className="flex items-center gap-4 text-sm font-medium">
        <span title="XP total">⭐ {profile?.xp_total ?? 0} XP</span>
        <span title="Streak atual">🔥 {profile?.streak_current ?? 0} dias</span>

        <Link
          to="/review"
          title="Revisão do dia"
          className="relative rounded bg-indigo-700 px-3 py-1 hover:bg-indigo-800"
        >
          📚 Revisão
          {dueReviewCount > 0 && (
            <span className="absolute -right-2 -top-2 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full bg-amber-400 px-1 text-xs font-bold text-slate-900">
              {dueReviewCount}
            </span>
          )}
        </Link>

        <Link
          to="/chat"
          title="Conversar com IA"
          className="rounded bg-indigo-700 px-3 py-1 hover:bg-indigo-800"
        >
          💬 Conversar
        </Link>

        <button
          onClick={signOut}
          className="rounded bg-indigo-700 px-3 py-1 hover:bg-indigo-800"
        >
          Sair
        </button>
      </div>
    </header>
  );
}

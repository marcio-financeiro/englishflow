import { Link } from 'react-router-dom';
import { useAuth } from '../features/auth/AuthContext';

export function Header() {
  const { profile, dueReviewCount, signOut } = useAuth();

  return (
    <header className="flex items-center justify-between gap-2 bg-indigo-600 px-3 py-3 text-white shadow sm:px-6 sm:py-4">
      <Link to="/" className="text-base font-bold sm:text-lg">
        EnglishFlow
      </Link>

      <div className="flex items-center gap-2 text-sm font-medium sm:gap-4">
        <span title="XP total" className="whitespace-nowrap">
          ⭐ {profile?.xp_total ?? 0}
          <span className="hidden sm:inline"> XP</span>
        </span>
        <span title="Streak atual" className="whitespace-nowrap">
          🔥 {profile?.streak_current ?? 0}
          <span className="hidden sm:inline"> dias</span>
        </span>

        <Link
          to="/review"
          title="Revisão do dia"
          className="relative rounded bg-indigo-700 px-2 py-1 hover:bg-indigo-800 sm:px-3"
        >
          📚<span className="hidden sm:inline"> Revisão</span>
          {dueReviewCount > 0 && (
            <span className="absolute -right-2 -top-2 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full bg-amber-400 px-1 text-xs font-bold text-slate-900">
              {dueReviewCount}
            </span>
          )}
        </Link>

        <Link
          to="/chat"
          title="Conversar com IA"
          className="rounded bg-indigo-700 px-2 py-1 hover:bg-indigo-800 sm:px-3"
        >
          💬<span className="hidden sm:inline"> Conversar</span>
        </Link>

        <button
          onClick={signOut}
          className="rounded bg-indigo-700 px-2 py-1 hover:bg-indigo-800 sm:px-3"
        >
          Sair
        </button>
      </div>
    </header>
  );
}

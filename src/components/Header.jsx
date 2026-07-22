import { useAuth } from '../features/auth/AuthContext';

export function Header() {
  const { profile, signOut } = useAuth();

  return (
    <header className="flex items-center justify-between bg-indigo-600 px-6 py-4 text-white shadow">
      <span className="text-lg font-bold">EnglishFlow</span>

      <div className="flex items-center gap-4 text-sm font-medium">
        <span title="XP total">⭐ {profile?.xp_total ?? 0} XP</span>
        <span title="Streak atual">🔥 {profile?.streak_current ?? 0} dias</span>
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

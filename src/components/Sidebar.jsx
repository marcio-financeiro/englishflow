import { Link, useLocation } from 'react-router-dom';
import { useAuth } from '../features/auth/AuthContext';

const NAV_ITEMS = [
  { to: '/', label: 'Lições', icon: '📖' },
  { to: '/dashboard', label: 'Painel', icon: '🏠' },
  { to: '/review', label: 'Revisão', icon: '🔁', badge: true },
  { to: '/chat', label: 'Conversar', icon: '💬' },
];

export function Sidebar() {
  const { profile, dueReviewCount, signOut } = useAuth();
  const location = useLocation();

  return (
    <aside className="ef-sidebar sticky top-0 flex h-screen w-[236px] flex-shrink-0 flex-col border-r-2 border-border bg-surface p-4 max-[760px]:w-[76px] max-[760px]:p-2">
      <Link
        to="/"
        className="mb-6 flex items-center gap-2 px-2 font-display text-lg font-extrabold text-primary"
      >
        <span className="text-xl">📱</span>
        <span className="ef-navlabel max-[760px]:hidden">EnglishFlow</span>
      </Link>

      <nav className="flex flex-1 flex-col gap-1">
        {NAV_ITEMS.map((item) => {
          const active = location.pathname === item.to;
          return (
            <Link
              key={item.to}
              to={item.to}
              className={`relative flex items-center gap-3 rounded-2xl px-3 py-3 font-semibold transition-colors max-[760px]:justify-center ${
                active ? 'bg-primary-soft text-primary-dark' : 'text-text-muted hover:bg-surface-2'
              }`}
            >
              <span className="text-lg">{item.icon}</span>
              <span className="ef-navlabel max-[760px]:hidden">{item.label}</span>
              {item.badge && dueReviewCount > 0 && (
                <span className="absolute right-2 top-2 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full bg-streak px-1 text-xs font-bold text-white max-[760px]:right-1 max-[760px]:top-1">
                  {dueReviewCount}
                </span>
              )}
            </Link>
          );
        })}
      </nav>

      <div className="mt-4 space-y-3 border-t-2 border-border pt-4">
        <div className="ef-navlabel flex items-center justify-between px-2 text-sm font-semibold text-text-muted max-[760px]:hidden">
          <span>⭐ {profile?.xp_total ?? 0} XP</span>
          <span>🔥 {profile?.streak_current ?? 0}</span>
        </div>
        <button
          onClick={signOut}
          className="w-full rounded-2xl px-3 py-2 text-sm font-semibold text-text-muted hover:bg-surface-2"
        >
          <span className="ef-navlabel max-[760px]:hidden">Sair</span>
          <span className="hidden max-[760px]:inline">🚪</span>
        </button>
      </div>
    </aside>
  );
}

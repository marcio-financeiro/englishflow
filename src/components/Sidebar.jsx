import { Link, useLocation } from 'react-router-dom';
import { useAuth } from '../features/auth/AuthContext';

const NAV_ITEMS = [
  { to: '/', label: 'Lições', icon: '📖' },
  { to: '/dashboard', label: 'Painel', icon: '🏠' },
  { to: '/review', label: 'Revisão', icon: '🔁', badge: true },
  { to: '/chat', label: 'Conversar', icon: '💬' },
];

function Brand() {
  return (
    <Link to="/" className="flex items-center gap-2">
      <img src="/brand/icon.png" alt="" className="h-9 w-9 flex-shrink-0 rounded-xl" />
      <span className="font-display text-lg font-extrabold text-text">EnglishFlow</span>
    </Link>
  );
}

function NavLinks({ dueReviewCount }) {
  const location = useLocation();
  return (
    <nav className="flex flex-1 flex-col gap-1">
      {NAV_ITEMS.map((item) => {
        const active = location.pathname === item.to;
        return (
          <Link
            key={item.to}
            to={item.to}
            className={`relative flex items-center gap-3 rounded-2xl px-3 py-3 font-semibold transition-colors ${
              active ? 'bg-primary-soft text-primary-dark' : 'text-text-muted hover:bg-surface-2'
            }`}
          >
            <span className="text-lg">{item.icon}</span>
            <span>{item.label}</span>
            {item.badge && dueReviewCount > 0 && (
              <span className="absolute right-2 top-2 flex h-5 min-w-[1.25rem] items-center justify-center rounded-full bg-streak px-1 text-xs font-bold text-white">
                {dueReviewCount}
              </span>
            )}
          </Link>
        );
      })}
    </nav>
  );
}

function StatsAndSignOut({ profile, signOut }) {
  return (
    <div className="mt-4 space-y-3">
      <div className="grid grid-cols-2 gap-2">
        <div className="rounded-2xl border-2 border-border bg-surface-2 p-2 text-center">
          <div className="font-display text-base font-extrabold text-streak">
            🔥 {profile?.streak_current ?? 0}
          </div>
          <div className="text-[11px] text-text-muted">dias</div>
        </div>
        <div className="rounded-2xl border-2 border-border bg-surface-2 p-2 text-center">
          <div className="font-display text-base font-extrabold text-xp">
            ⭐ {profile?.xp_total ?? 0}
          </div>
          <div className="text-[11px] text-text-muted">XP</div>
        </div>
      </div>
      <button
        onClick={signOut}
        className="flex w-full items-center gap-3 rounded-2xl px-3 py-3 text-sm font-semibold text-text-muted hover:bg-surface-2"
      >
        <span className="text-lg">🚪</span>
        <span>Sair</span>
      </button>
    </div>
  );
}

function BottomTabBar({ dueReviewCount, signOut }) {
  const location = useLocation();
  const tabs = [...NAV_ITEMS, { label: 'Sair', icon: '🚪', action: signOut }];

  return (
    <nav
      className="fixed inset-x-0 bottom-0 z-40 flex border-t-2 border-border bg-surface pb-[env(safe-area-inset-bottom)] min-[760px]:hidden"
      aria-label="Navegação principal"
    >
      {tabs.map((item) => {
        const active = item.to && location.pathname === item.to;
        const content = (
          <>
            <span className="relative text-xl">
              {item.icon}
              {item.badge && dueReviewCount > 0 && (
                <span className="absolute -right-1.5 -top-1 h-2.5 w-2.5 rounded-full bg-streak" />
              )}
            </span>
            <span className="text-[11px] font-semibold leading-none">{item.label}</span>
          </>
        );
        const className = `flex flex-1 flex-col items-center justify-center gap-1 py-2.5 ${
          active ? 'text-primary' : 'text-text-muted'
        }`;

        return item.to ? (
          <Link key={item.label} to={item.to} className={className}>
            {content}
          </Link>
        ) : (
          <button key={item.label} onClick={item.action} className={className}>
            {content}
          </button>
        );
      })}
    </nav>
  );
}

export function Sidebar() {
  const { profile, dueReviewCount, signOut } = useAuth();

  return (
    <>
      {/* Desktop: sidebar fixa */}
      <aside className="sticky top-0 hidden h-screen w-[236px] flex-shrink-0 flex-col border-r-2 border-border bg-surface p-4 min-[760px]:flex">
        <div className="mb-6 px-2">
          <Brand />
        </div>
        <NavLinks dueReviewCount={dueReviewCount} />
        <StatsAndSignOut profile={profile} signOut={signOut} />
      </aside>

      {/* Mobile: logo fixa no topo + navegação fixa embaixo */}
      <header className="sticky top-0 z-30 flex items-center border-b-2 border-border bg-surface px-4 py-3 min-[760px]:hidden">
        <Brand />
      </header>
      <BottomTabBar dueReviewCount={dueReviewCount} signOut={signOut} />
    </>
  );
}

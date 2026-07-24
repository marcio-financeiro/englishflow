import { useEffect, useState } from 'react';
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

function NavLinks({ dueReviewCount, onNavigate }) {
  const location = useLocation();
  return (
    <nav className="flex flex-1 flex-col gap-1">
      {NAV_ITEMS.map((item) => {
        const active = location.pathname === item.to;
        return (
          <Link
            key={item.to}
            to={item.to}
            onClick={onNavigate}
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

export function Sidebar() {
  const { profile, dueReviewCount, signOut } = useAuth();
  const location = useLocation();
  const [drawerOpen, setDrawerOpen] = useState(false);

  // Fecha o menu ao navegar ou ao apertar Escape.
  useEffect(() => setDrawerOpen(false), [location.pathname]);
  useEffect(() => {
    if (!drawerOpen) return;
    const onKey = (e) => e.key === 'Escape' && setDrawerOpen(false);
    document.addEventListener('keydown', onKey);
    return () => document.removeEventListener('keydown', onKey);
  }, [drawerOpen]);

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

      {/* Mobile: barra superior + menu deslizante */}
      <header className="sticky top-0 z-40 flex items-center justify-between border-b-2 border-border bg-surface px-4 py-3 min-[760px]:hidden">
        <Brand />
        <button
          onClick={() => setDrawerOpen(true)}
          aria-label="Abrir menu"
          className="relative flex h-10 w-10 items-center justify-center rounded-xl border-2 border-border text-lg text-text"
        >
          ☰
          {dueReviewCount > 0 && (
            <span className="absolute -right-1 -top-1 h-3 w-3 rounded-full bg-streak" />
          )}
        </button>
      </header>

      {drawerOpen && (
        <div className="fixed inset-0 z-50 min-[760px]:hidden" role="dialog" aria-modal="true">
          <div className="absolute inset-0 bg-black/40" onClick={() => setDrawerOpen(false)} />
          <div className="absolute left-0 top-0 flex h-full w-[280px] flex-col bg-surface p-4 shadow-card">
            <div className="mb-6 flex items-center justify-between px-2">
              <Brand />
              <button
                onClick={() => setDrawerOpen(false)}
                aria-label="Fechar menu"
                className="flex h-9 w-9 items-center justify-center rounded-xl border-2 border-border text-text"
              >
                ✕
              </button>
            </div>
            <NavLinks dueReviewCount={dueReviewCount} onNavigate={() => setDrawerOpen(false)} />
            <StatsAndSignOut profile={profile} signOut={signOut} />
          </div>
        </div>
      )}
    </>
  );
}

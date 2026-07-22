import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';

export function DashboardPage() {
  const { profile } = useAuth();

  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <main className="mx-auto max-w-3xl p-6">
        <h2 className="text-xl font-semibold text-slate-900">
          Olá, {profile?.display_name ?? 'aluno'}!
        </h2>
        <p className="mt-2 text-slate-600">
          Nível atual: {profile?.cefr_level ?? 'A1'}
        </p>
      </main>
    </div>
  );
}

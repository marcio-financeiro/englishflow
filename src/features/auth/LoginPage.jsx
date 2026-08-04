import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Eye, EyeOff } from 'lucide-react';
import { useAuth } from './AuthContext';
import { AuthBrandPanel } from './AuthBrandPanel';

export function LoginPage() {
  const { signIn } = useAuth();
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [error, setError] = useState('');
  const [submitting, setSubmitting] = useState(false);

  async function handleSubmit(e) {
    e.preventDefault();
    setError('');
    setSubmitting(true);
    try {
      await signIn(email, password);
      navigate('/');
    } catch (err) {
      setError(err.message);
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <div className="flex min-h-screen bg-bg font-sans text-text">
      <AuthBrandPanel />

      <div className="ef-authform flex flex-1 items-center justify-center p-8">
        <form onSubmit={handleSubmit} className="w-full max-w-[380px]">
          <div className="mb-6 flex items-center gap-3 min-[681px]:hidden">
            <img src="/brand/icon.png" alt="" className="h-10 w-10 rounded-xl" />
            <span className="font-display text-lg font-bold text-text">EnglishFlow</span>
          </div>

          <h1 className="mb-1 font-display text-3xl font-extrabold text-text">
            Bem-vindo de volta
          </h1>
          <p className="mb-6 text-text-muted">Entre para continuar sua sequência.</p>

          <label className="mb-1 block text-sm font-semibold text-text">Email</label>
          <input
            type="email"
            required
            placeholder="voce@email.com"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="mb-4 w-full rounded-[14px] border-2 border-border bg-surface px-4 py-3 text-text outline-none transition-colors focus:border-primary"
          />

          <label className="mb-1 block text-sm font-semibold text-text">Senha</label>
          <div className="relative mb-6">
            <input
              type={showPassword ? 'text' : 'password'}
              required
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="w-full rounded-[14px] border-2 border-border bg-surface px-4 py-3 pr-11 text-text outline-none transition-colors focus:border-primary"
            />
            <button
              type="button"
              onClick={() => setShowPassword((v) => !v)}
              aria-label={showPassword ? 'Ocultar senha' : 'Mostrar senha'}
              className="absolute right-3 top-1/2 -translate-y-1/2 text-text-muted hover:text-text"
            >
              {showPassword ? <EyeOff size={20} /> : <Eye size={20} />}
            </button>
          </div>

          {error && <p className="mb-4 text-sm text-error">{error}</p>}

          <button type="submit" disabled={submitting} className="ef-juicy-btn w-full">
            {submitting ? 'Entrando...' : 'Entrar'}
          </button>

          <p className="mt-4 text-center text-sm text-text-muted">
            Não tem conta?{' '}
            <Link to="/signup" className="font-semibold text-primary hover:underline">
              Cadastre-se
            </Link>
          </p>
        </form>
      </div>
    </div>
  );
}

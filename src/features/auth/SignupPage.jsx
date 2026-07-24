import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from './AuthContext';
import { AuthBrandPanel } from './AuthBrandPanel';

export function SignupPage() {
  const { signUp } = useAuth();
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [info, setInfo] = useState('');
  const [submitting, setSubmitting] = useState(false);

  async function handleSubmit(e) {
    e.preventDefault();
    setError('');
    setInfo('');
    setSubmitting(true);
    try {
      await signUp(email, password);
      setInfo('Conta criada. Verifique seu email para confirmar o cadastro.');
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
          <h1 className="mb-1 font-display text-3xl font-extrabold text-text">Criar conta</h1>
          <p className="mb-6 text-text-muted">Comece sua sequência de aprendizado hoje.</p>

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
          <input
            type="password"
            required
            minLength={6}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="mb-6 w-full rounded-[14px] border-2 border-border bg-surface px-4 py-3 text-text outline-none transition-colors focus:border-primary"
          />

          {error && <p className="mb-4 text-sm text-error">{error}</p>}
          {info && (
            <p className="mb-4 rounded-[14px] bg-primary-soft px-4 py-3 text-sm text-primary-dark">
              {info}
            </p>
          )}

          <button type="submit" disabled={submitting} className="ef-juicy-btn w-full">
            {submitting ? 'Criando...' : 'Criar conta'}
          </button>

          <p className="mt-4 text-center text-sm text-text-muted">
            Já tem conta?{' '}
            <Link to="/login" className="font-semibold text-primary hover:underline">
              Entrar
            </Link>
          </p>
        </form>
      </div>
    </div>
  );
}

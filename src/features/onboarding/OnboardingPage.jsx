import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../auth/AuthContext';
import {
  DAILY_GOAL_OPTIONS,
  LEARNING_GOAL_OPTIONS,
  LEVEL_OPTIONS,
  completeOnboarding,
} from '../../services/onboardingService';

const TOTAL_STEPS = 3;
const ADVANCED_LEVELS = ['B1', 'C1'];

function OptionCard({ selected, onClick, title, subtitle, multi }) {
  return (
    <button
      type="button"
      onClick={onClick}
      className={`mb-3 flex w-full items-center justify-between rounded-2xl border-2 px-5 py-4 text-left transition-colors ${
        selected ? 'border-primary bg-primary-soft' : 'border-border bg-surface'
      }`}
    >
      <span>
        <span className="block font-display font-bold text-text">{title}</span>
        {subtitle && <span className="block text-sm text-text-muted">{subtitle}</span>}
      </span>
      <span
        className={`h-5 w-5 flex-shrink-0 ${multi ? 'rounded-md' : 'rounded-full'} border-2 ${
          selected ? 'border-primary bg-primary' : 'border-border'
        }`}
      />
    </button>
  );
}

function StepTime({ value, onSelect }) {
  return (
    <div>
      <h1 className="mb-1 text-center font-display text-2xl font-extrabold text-text">
        Quanto tempo por dia?
      </h1>
      <p className="mb-6 text-center text-text-muted">Consistência supera intensidade</p>
      {DAILY_GOAL_OPTIONS.map((opt) => (
        <OptionCard
          key={opt.minutes}
          title={opt.label}
          selected={value === opt.minutes}
          onClick={() => onSelect(opt.minutes)}
        />
      ))}
    </div>
  );
}

function StepGoals({ selected, onToggle }) {
  return (
    <div>
      <h1 className="mb-1 text-center font-display text-2xl font-extrabold text-text">
        Qual é seu objetivo?
      </h1>
      <p className="mb-6 text-center text-text-muted">Selecione todos que se aplicam</p>
      {LEARNING_GOAL_OPTIONS.map((opt) => (
        <OptionCard
          key={opt.key}
          title={opt.label}
          selected={selected.includes(opt.key)}
          onClick={() => onToggle(opt.key)}
          multi
        />
      ))}
    </div>
  );
}

function StepLevel({ value, onSelect }) {
  return (
    <div>
      <h1 className="mb-1 text-center font-display text-2xl font-extrabold text-text">
        Qual é seu nível atual?
      </h1>
      <p className="mb-6 text-center text-text-muted">Vamos personalizar sua experiência</p>
      {LEVEL_OPTIONS.map((opt) => (
        <OptionCard
          key={opt.key}
          title={opt.label}
          subtitle={opt.description}
          selected={value === opt.key}
          onClick={() => onSelect(opt.key)}
        />
      ))}
      {ADVANCED_LEVELS.includes(value) && (
        <p className="mt-2 rounded-2xl bg-primary-soft px-4 py-3 text-sm text-primary-dark">
          Ainda estamos construindo o conteúdo para esse nível. Você vai começar pelo A2 (o mais
          avançado disponível hoje) e sobe automaticamente assim que liberarmos mais lições.
        </p>
      )}
    </div>
  );
}

export function OnboardingPage() {
  const { user, refreshProfile } = useAuth();
  const navigate = useNavigate();

  const [step, setStep] = useState(1);
  const [dailyGoalMinutes, setDailyGoalMinutes] = useState(null);
  const [learningGoals, setLearningGoals] = useState([]);
  const [targetLevel, setTargetLevel] = useState(null);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState('');

  function toggleGoal(key) {
    setLearningGoals((current) =>
      current.includes(key) ? current.filter((g) => g !== key) : [...current, key]
    );
  }

  async function finish() {
    setSubmitting(true);
    setError('');
    try {
      await completeOnboarding(user.id, { dailyGoalMinutes, learningGoals, targetLevel });
      await refreshProfile();
      navigate('/', { replace: true });
    } catch (err) {
      setError(err.message);
      setSubmitting(false);
    }
  }

  const canContinue =
    (step === 1 && dailyGoalMinutes != null) ||
    (step === 2 && learningGoals.length > 0) ||
    (step === 3 && targetLevel != null);

  return (
    <div className="flex min-h-screen items-center justify-center bg-bg p-6 font-sans text-text">
      <div className="w-full max-w-[420px]">
        {step > 1 && (
          <button
            type="button"
            onClick={() => setStep((s) => s - 1)}
            className="mb-4 flex items-center gap-1 text-sm font-semibold text-text-muted hover:text-text"
          >
            ‹ Voltar
          </button>
        )}

        <div className="mb-8 flex justify-center gap-2">
          {Array.from({ length: TOTAL_STEPS }, (_, i) => i + 1).map((n) => (
            <span
              key={n}
              className={`h-1.5 w-10 rounded-full ${n <= step ? 'bg-primary' : 'bg-border'}`}
            />
          ))}
        </div>

        {step === 1 && <StepTime value={dailyGoalMinutes} onSelect={setDailyGoalMinutes} />}
        {step === 2 && <StepGoals selected={learningGoals} onToggle={toggleGoal} />}
        {step === 3 && <StepLevel value={targetLevel} onSelect={setTargetLevel} />}

        {error && <p className="mt-4 text-sm text-error">{error}</p>}

        <button
          type="button"
          disabled={!canContinue || submitting}
          onClick={() => (step < TOTAL_STEPS ? setStep((s) => s + 1) : finish())}
          className="ef-juicy-btn mt-8 w-full"
        >
          {step < TOTAL_STEPS ? 'Continuar' : submitting ? 'Salvando...' : 'Começar'}
        </button>
      </div>
    </div>
  );
}

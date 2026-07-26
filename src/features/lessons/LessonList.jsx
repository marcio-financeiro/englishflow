import { useEffect, useRef, useState } from 'react';
import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';
import {
  Check,
  Play,
  Lock,
  BookOpen,
  GraduationCap,
  Repeat,
  CheckCircle2,
  BookMarked,
  Star,
  Flame,
  ChevronRight,
  ChevronDown,
} from 'lucide-react';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { fetchModulesWithProgress } from '../../services/lessonService';
import { findCumulativeReviewTarget } from '../../services/cumulativeReviewService';
import { findLevelTestTarget } from '../../services/levelTestService';

const NODE_ICON = {
  completed: Check,
  available: Play,
  locked: Lock,
};

function isModuleCompleted(module) {
  return module.lessons.length > 0 && module.lessons.every((l) => l.status === 'completed');
}

// Módulo "atual" = primeiro módulo (na ordem) ainda não 100% concluído.
// Por padrão só ele e o próximo da lista ficam expandidos; o resto (módulos
// já concluídos e módulos futuros ainda não alcançados) começa recolhido —
// evita rolagem infinita conforme o histórico cresce (A1→C2, ~110 módulos).
function defaultExpandedState(modules) {
  const currentIndex = modules.findIndex((m) => !isModuleCompleted(m));
  const expanded = new Set();
  if (currentIndex !== -1) {
    expanded.add(modules[currentIndex].id);
    if (modules[currentIndex + 1]) expanded.add(modules[currentIndex + 1].id);
  }
  return { expanded, currentModuleId: currentIndex !== -1 ? modules[currentIndex].id : null };
}

export function LessonList() {
  const { user, profile, dueReviewCount } = useAuth();
  const [modules, setModules] = useState(null);
  const [error, setError] = useState('');
  const [expandedIds, setExpandedIds] = useState(new Set());
  const [currentModuleId, setCurrentModuleId] = useState(null);
  const currentModuleRef = useRef(null);

  useEffect(() => {
    fetchModulesWithProgress(user.id)
      .then((data) => {
        setModules(data);
        const { expanded, currentModuleId: currentId } = defaultExpandedState(data);
        setExpandedIds(expanded);
        setCurrentModuleId(currentId);
      })
      .catch((err) => setError(err.message));
  }, [user.id]);

  // Ancora a tela no módulo em andamento ao carregar, em vez de sempre abrir no topo.
  useEffect(() => {
    if (currentModuleId && currentModuleRef.current) {
      currentModuleRef.current.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  }, [currentModuleId]);

  function toggleModule(moduleId) {
    setExpandedIds((prev) => {
      const next = new Set(prev);
      if (next.has(moduleId)) next.delete(moduleId);
      else next.add(moduleId);
      return next;
    });
  }

  const cumulativeReviewTarget = modules ? findCumulativeReviewTarget(modules) : null;
  const levelTestTarget = modules ? findLevelTestTarget(modules) : null;

  const totalLessons = modules?.reduce((sum, m) => sum + m.lessons.length, 0) ?? 0;
  const completedLessons =
    modules?.reduce((sum, m) => sum + m.lessons.filter((l) => l.status === 'completed').length, 0) ??
    0;

  return (
    <div className="flex min-h-screen flex-col bg-bg text-text min-[760px]:flex-row">
      <Sidebar />

      <main className="flex flex-1 justify-center gap-8 p-6 pb-24 md:p-10 min-[760px]:pb-10">
        <div className="w-full max-w-3xl">
          <h1 className="font-display text-2xl font-extrabold text-text">Suas lições</h1>
          <p className="mb-6 text-text-muted">
            Continue de onde parou e mantenha sua sequência.
          </p>

          {error && <p className="text-error">{error}</p>}
          {!modules && !error && <p className="text-text-muted">Carregando lições...</p>}

          {dueReviewCount > 0 && (
            <Link
              to="/review"
              className="mb-6 flex items-center justify-between rounded-2xl border-2 border-primary bg-primary-soft px-4 py-3 text-primary-dark hover:brightness-105"
            >
              <span className="flex items-center gap-2 font-semibold">
                <BookMarked size={18} /> Você tem {dueReviewCount}{' '}
                {dueReviewCount === 1 ? 'palavra' : 'palavras'} para revisar hoje
              </span>
              <span className="font-semibold">Revisar →</span>
            </Link>
          )}

          {levelTestTarget && (
            <Link
              to={`/level-test?level=${levelTestTarget}`}
              className="mb-6 flex items-center justify-between rounded-2xl border-2 border-xp bg-primary-soft px-4 py-3 text-primary-dark hover:brightness-105"
            >
              <span className="flex items-center gap-2 font-semibold">
                <GraduationCap size={18} /> Faça o Teste de Nivelamento {levelTestTarget} pra
                liberar o próximo nível
              </span>
              <span className="font-semibold">Começar →</span>
            </Link>
          )}

          {cumulativeReviewTarget && (
            <Link
              to={`/checkpoint?level=${cumulativeReviewTarget.level}`}
              className="mb-6 flex items-center justify-between rounded-2xl border-2 border-primary bg-primary-soft px-4 py-3 text-primary-dark hover:brightness-105"
            >
              <span className="flex items-center gap-2 font-semibold">
                <Repeat size={18} /> Revisão cumulativa disponível ({cumulativeReviewTarget.level})
              </span>
              <span className="font-semibold">Revisar →</span>
            </Link>
          )}

          {modules?.map((module) => (
            <ModuleSection
              key={module.id}
              module={module}
              expanded={expandedIds.has(module.id)}
              onToggle={() => toggleModule(module.id)}
              sectionRef={module.id === currentModuleId ? currentModuleRef : undefined}
            />
          ))}
        </div>

        <aside className="hidden w-[260px] flex-shrink-0 min-[1200px]:block">
          <div className="rounded-2xl border-2 border-border bg-surface p-5 shadow-card">
            <h3 className="mb-4 font-display text-base font-bold text-text">Seu progresso</h3>
            <div className="space-y-3 text-sm">
              <StatRow icon={Star} label="XP total" value={profile?.xp_total ?? 0} />
              <StatRow icon={Flame} label="Sequência" value={`${profile?.streak_current ?? 0} dias`} />
              <StatRow icon={BookOpen} label="Lições" value={`${completedLessons}/${totalLessons}`} />
            </div>
          </div>
        </aside>
      </main>
    </div>
  );
}

function ModuleSection({ module, expanded, onToggle, sectionRef }) {
  const completedCount = module.lessons.filter((l) => l.status === 'completed').length;
  const total = module.lessons.length;
  const allCompleted = completedCount === total && total > 0;
  const pct = total > 0 ? Math.round((completedCount / total) * 100) : 0;
  const ModuleIcon = allCompleted ? CheckCircle2 : module.levelUnlocked ? BookOpen : Lock;
  const badgeStyle = allCompleted
    ? { background: 'var(--success)', color: '#fff' }
    : module.levelUnlocked
      ? { background: 'var(--gradient-primary)', color: '#fff' }
      : { background: 'var(--surface-2)', color: 'var(--text-muted)' };

  if (!expanded) {
    return (
      <button
        ref={sectionRef}
        onClick={onToggle}
        className="mb-3 flex w-full items-center gap-3 rounded-2xl border-2 border-border bg-surface px-4 py-3 text-left shadow-elevation-1 hover:bg-surface-2"
      >
        <div
          className="flex h-10 w-10 flex-shrink-0 items-center justify-center rounded-xl"
          style={badgeStyle}
        >
          <ModuleIcon size={18} />
        </div>
        <div className="min-w-0 flex-1">
          <div className="truncate font-semibold text-text">{module.title}</div>
          <div className="mt-1 h-1.5 w-full rounded-full bg-surface-2">
            <div
              className="h-1.5 rounded-full bg-primary transition-all"
              style={{ width: `${pct}%` }}
            />
          </div>
        </div>
        <span className="flex flex-shrink-0 items-center gap-1 text-sm text-text-muted">
          {completedCount}/{total} <ChevronRight size={14} />
        </span>
      </button>
    );
  }

  return (
    <section ref={sectionRef} className="mb-10">
      <button
        onClick={onToggle}
        className="mb-3 flex w-full items-center gap-3 rounded-2xl border-2 border-border bg-surface px-4 py-3 text-left shadow-elevation-1 hover:bg-surface-2"
      >
        <div
          className="flex h-11 w-11 flex-shrink-0 items-center justify-center rounded-xl"
          style={badgeStyle}
        >
          <ModuleIcon size={20} />
        </div>
        <div className="min-w-0 flex-1">
          <h2 className="truncate font-display text-lg font-bold text-text">{module.title}</h2>
          <div className="mt-1.5 flex items-center gap-2">
            <div className="h-1.5 flex-1 rounded-full bg-surface-2">
              <div
                className="h-1.5 rounded-full bg-primary transition-all"
                style={{ width: `${pct}%` }}
              />
            </div>
            <span className="flex-shrink-0 text-xs font-semibold text-text-muted">{pct}%</span>
          </div>
        </div>
        <span className="flex flex-shrink-0 items-center gap-1 text-sm text-text-muted">
          {completedCount}/{total} <ChevronDown size={14} />
        </span>
      </button>
      {module.description && (
        <p className="mb-4 text-sm text-text-muted">{module.description}</p>
      )}

      <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
        {module.lessons.map((lesson) => (
          <LessonNode key={lesson.id} lesson={lesson} />
        ))}
      </div>
    </section>
  );
}

function StatRow({ icon: Icon, label, value }) {
  return (
    <div className="flex items-center justify-between">
      <span className="flex items-center gap-1.5 text-text-muted">
        <Icon size={16} /> {label}
      </span>
      <span className="font-display font-bold text-text">{value}</span>
    </div>
  );
}

function LessonNode({ lesson }) {
  const locked = lesson.status === 'locked';
  const completed = lesson.status === 'completed';
  const Icon = NODE_ICON[lesson.status];

  const cardClass = `flex h-full flex-col gap-3 rounded-2xl border-2 p-4 text-left transition-colors ${
    completed
      ? 'border-success bg-surface-2'
      : lesson.status === 'available'
        ? 'ef-node-available border-primary bg-surface'
        : 'cursor-not-allowed border-dashed border-border bg-surface-2 opacity-60'
  }`;

  const badgeClass = `flex h-11 w-11 flex-shrink-0 items-center justify-center rounded-full ${
    completed
      ? 'bg-success text-white'
      : lesson.status === 'available'
        ? 'bg-primary-soft text-primary'
        : 'bg-surface text-text-muted'
  }`;

  const content = (
    <>
      <div className={badgeClass}>
        <Icon size={20} />
      </div>
      <div>
        <div className="line-clamp-2 text-sm font-semibold text-text">{lesson.title}</div>
        <div className="mt-1 text-xs font-bold text-xp">{lesson.xp_reward} XP</div>
      </div>
    </>
  );

  if (locked) {
    return <div className={cardClass}>{content}</div>;
  }

  return (
    <motion.div whileHover={{ scale: 1.03, y: -2 }} whileTap={{ scale: 0.98 }}>
      <Link to={`/lesson/${lesson.id}`} className={`${cardClass} shadow-elevation-1`}>
        {content}
      </Link>
    </motion.div>
  );
}

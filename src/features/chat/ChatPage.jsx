import { useState } from 'react';
import { Link } from 'react-router-dom';
import { UtensilsCrossed, Briefcase, MessageCircle, PartyPopper } from 'lucide-react';
import { Sidebar } from '../../components/Sidebar';
import { useAuth } from '../auth/AuthContext';
import { supabase } from '../../services/supabaseClient';
import { chatTurn, chatFeedback } from '../../services/aiService';

const MAX_LEN = 300;

const SCENARIOS = {
  waiter: {
    label: 'Garçom',
    icon: UtensilsCrossed,
    description: 'Peça comida em um restaurante.',
    greeting: 'Hello! Welcome to our restaurant. What would you like to order?',
  },
  interview: {
    label: 'Entrevista de emprego',
    icon: Briefcase,
    description: 'Responda perguntas de um entrevistador.',
    greeting: 'Good morning! Thanks for coming. Can you tell me about yourself?',
  },
  free_talk: {
    label: 'Conversa livre',
    icon: MessageCircle,
    description: 'Bate-papo casual do dia a dia.',
    greeting: 'Hi! How are you today?',
  },
};

export function ChatPage() {
  const { user, profile } = useAuth();
  const level = profile?.cefr_level ?? 'A1';

  const [scenario, setScenario] = useState(null);
  const [messages, setMessages] = useState([]); // apenas turnos reais (começa no usuário)
  const [input, setInput] = useState('');
  const [sending, setSending] = useState(false);
  const [ending, setEnding] = useState(false);
  const [feedback, setFeedback] = useState(null);
  const [error, setError] = useState('');

  async function send() {
    const text = input.trim();
    if (!text || sending) return;

    const next = [...messages, { role: 'user', content: text }];
    setMessages(next);
    setInput('');
    setSending(true);
    setError('');
    try {
      const { reply } = await chatTurn({ level, scenario, messages: next });
      setMessages([...next, { role: 'assistant', content: reply }]);
    } catch (err) {
      setError(err.message);
      setMessages(messages); // desfaz em caso de erro
    } finally {
      setSending(false);
    }
  }

  async function endConversation() {
    if (ending) return;
    setEnding(true);
    setError('');
    try {
      const fb = await chatFeedback({ level, messages });
      const transcript = [
        { role: 'assistant', content: SCENARIOS[scenario].greeting },
        ...messages,
      ];
      await supabase.from('conversation_history').insert({
        user_id: user.id,
        scenario,
        messages: transcript,
        feedback: fb,
      });
      setFeedback(fb);
    } catch (err) {
      setError(err.message);
    } finally {
      setEnding(false);
    }
  }

  // Seleção de cenário
  if (!scenario) {
    return (
      <Shell>
        <h2 className="mb-4 text-xl font-bold text-text">Escolha um cenário</h2>
        <div className="flex flex-col gap-3">
          {Object.entries(SCENARIOS).map(([key, s]) => (
            <button
              key={key}
              onClick={() => setScenario(key)}
              className="rounded-lg border-2 border-border bg-surface px-4 py-4 text-left hover:bg-surface-2"
            >
              <span className="flex items-center gap-2 font-medium text-text">
                <s.icon size={18} /> {s.label}
              </span>
              <span className="text-sm text-text-muted">{s.description}</span>
            </button>
          ))}
        </div>
      </Shell>
    );
  }

  // Tela de feedback final
  if (feedback) {
    return (
      <Shell>
        <div className="rounded-lg border-2 border-border bg-surface p-6 shadow-card">
          <h2 className="flex items-center gap-2 text-2xl font-bold text-text">
            Conversa concluída! <PartyPopper size={22} />
          </h2>
          <p className="mt-1 text-lg text-primary">Nota: {feedback.score}/100</p>

          <FeedbackList
            title="Pontos a melhorar"
            items={feedback.errors}
            render={(e) => e.explanation_pt}
          />
          <FeedbackList
            title="Vocabulário novo"
            items={feedback.new_vocabulary}
            render={(v) => `${v.word} — ${v.translation_pt}`}
          />
          <FeedbackList
            title="Como dizer melhor"
            items={feedback.better_expressions}
            render={(b) => `"${b.original}" → "${b.better}"`}
          />

          <Link
            to="/"
            className="mt-6 inline-block rounded bg-primary px-6 py-2 font-medium text-white hover:brightness-105"
          >
            Voltar
          </Link>
        </div>
      </Shell>
    );
  }

  // Chat
  return (
    <Shell>
      <div className="mb-4 flex items-center justify-between">
        <span className="font-medium text-text">{SCENARIOS[scenario].label}</span>
        <button
          onClick={endConversation}
          disabled={ending || messages.length === 0}
          className="rounded bg-success px-3 py-1 text-sm font-medium text-white hover:brightness-105 disabled:opacity-50"
        >
          {ending ? 'Analisando...' : 'Encerrar e ver feedback'}
        </button>
      </div>

      <div className="mb-4 flex flex-col gap-2 rounded-lg border-2 border-border bg-surface p-4 shadow-card">
        <Bubble role="assistant">{SCENARIOS[scenario].greeting}</Bubble>
        {messages.map((m, i) => (
          <Bubble key={i} role={m.role}>
            {m.content}
          </Bubble>
        ))}
        {sending && <Bubble role="assistant">...</Bubble>}
      </div>

      {error && <p className="mb-2 text-sm text-error">{error}</p>}

      <div className="flex gap-2">
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={(e) => e.key === 'Enter' && send()}
          disabled={sending}
          maxLength={MAX_LEN}
          placeholder="Escreva em inglês..."
          className="flex-1 rounded border-2 border-border bg-surface p-2 text-text focus:border-primary focus:outline-none disabled:bg-surface-2"
        />
        <button
          onClick={send}
          disabled={sending || !input.trim()}
          className="rounded bg-primary px-4 py-2 font-medium text-white hover:brightness-105 disabled:opacity-50"
        >
          Enviar
        </button>
      </div>
    </Shell>
  );
}

function Bubble({ role, children }) {
  const mine = role === 'user';
  return (
    <div
      className={`max-w-[80%] rounded-lg px-3 py-2 text-sm ${
        mine
          ? 'self-end bg-primary text-white'
          : 'self-start bg-surface-2 text-text'
      }`}
    >
      {children}
    </div>
  );
}

function FeedbackList({ title, items, render }) {
  if (!Array.isArray(items) || items.length === 0) return null;
  return (
    <div className="mt-4">
      <h3 className="text-sm font-semibold text-text">{title}</h3>
      <ul className="mt-1 space-y-1 text-sm text-text-muted">
        {items.map((item, i) => (
          <li key={i}>• {render(item)}</li>
        ))}
      </ul>
    </div>
  );
}

function Shell({ children }) {
  return (
    <div className="flex min-h-screen flex-col bg-bg text-text min-[760px]:flex-row">
      <Sidebar />
      <main className="mx-auto w-full max-w-2xl p-6 pb-24 min-[760px]:pb-6">{children}</main>
    </div>
  );
}

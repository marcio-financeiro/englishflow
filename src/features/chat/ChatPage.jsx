import { useState } from 'react';
import { Link } from 'react-router-dom';
import { Header } from '../../components/Header';
import { useAuth } from '../auth/AuthContext';
import { supabase } from '../../services/supabaseClient';
import { chatTurn, chatFeedback } from '../../services/aiService';

const MAX_LEN = 300;

const SCENARIOS = {
  waiter: {
    label: 'Garçom 🍽️',
    description: 'Peça comida em um restaurante.',
    greeting: 'Hello! Welcome to our restaurant. What would you like to order?',
  },
  interview: {
    label: 'Entrevista de emprego 💼',
    description: 'Responda perguntas de um entrevistador.',
    greeting: 'Good morning! Thanks for coming. Can you tell me about yourself?',
  },
  free_talk: {
    label: 'Conversa livre 💬',
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
        <h2 className="mb-4 text-xl font-bold text-slate-900">Escolha um cenário</h2>
        <div className="flex flex-col gap-3">
          {Object.entries(SCENARIOS).map(([key, s]) => (
            <button
              key={key}
              onClick={() => setScenario(key)}
              className="rounded-lg border border-slate-300 bg-white px-4 py-4 text-left hover:bg-slate-50"
            >
              <span className="block font-medium text-slate-900">{s.label}</span>
              <span className="text-sm text-slate-500">{s.description}</span>
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
        <div className="rounded-lg bg-white p-6 shadow">
          <h2 className="text-2xl font-bold text-slate-900">Conversa concluída! 🎉</h2>
          <p className="mt-1 text-lg text-indigo-600">Nota: {feedback.score}/100</p>

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
            className="mt-6 inline-block rounded bg-indigo-600 px-6 py-2 font-medium text-white hover:bg-indigo-700"
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
        <span className="font-medium text-slate-700">{SCENARIOS[scenario].label}</span>
        <button
          onClick={endConversation}
          disabled={ending || messages.length === 0}
          className="rounded bg-emerald-600 px-3 py-1 text-sm font-medium text-white hover:bg-emerald-700 disabled:opacity-50"
        >
          {ending ? 'Analisando...' : 'Encerrar e ver feedback'}
        </button>
      </div>

      <div className="mb-4 flex flex-col gap-2 rounded-lg bg-white p-4 shadow">
        <Bubble role="assistant">{SCENARIOS[scenario].greeting}</Bubble>
        {messages.map((m, i) => (
          <Bubble key={i} role={m.role}>
            {m.content}
          </Bubble>
        ))}
        {sending && <Bubble role="assistant">...</Bubble>}
      </div>

      {error && <p className="mb-2 text-sm text-red-600">{error}</p>}

      <div className="flex gap-2">
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={(e) => e.key === 'Enter' && send()}
          disabled={sending}
          maxLength={MAX_LEN}
          placeholder="Escreva em inglês..."
          className="flex-1 rounded border border-slate-300 p-2 focus:border-indigo-500 focus:outline-none disabled:bg-slate-50"
        />
        <button
          onClick={send}
          disabled={sending || !input.trim()}
          className="rounded bg-indigo-600 px-4 py-2 font-medium text-white hover:bg-indigo-700 disabled:opacity-50"
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
          ? 'self-end bg-indigo-600 text-white'
          : 'self-start bg-slate-100 text-slate-800'
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
      <h3 className="text-sm font-semibold text-slate-900">{title}</h3>
      <ul className="mt-1 space-y-1 text-sm text-slate-600">
        {items.map((item, i) => (
          <li key={i}>• {render(item)}</li>
        ))}
      </ul>
    </div>
  );
}

function Shell({ children }) {
  return (
    <div className="min-h-screen bg-slate-50">
      <Header />
      <main className="mx-auto max-w-2xl p-6">{children}</main>
    </div>
  );
}

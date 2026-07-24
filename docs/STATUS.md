# EnglishFlow — Status do Projeto

> Documento vivo. Atualizado a cada avanço para servir de referência rápida do que existe.
>
> **Última atualização:** 2026-07-23 · **Estado:** MVP (Fases 0–5) em produção · Fase 6 em andamento (IA adaptativa).

PWA de aprendizado de inglês (nível A1), gamificado, com IA. Deploy na Vercel (auto-deploy da `main`), banco no Supabase.

---

## Stack

| Camada | Tecnologia |
|---|---|
| Front-end | React 18 + Vite + Tailwind CSS |
| Backend/DB | Supabase (PostgreSQL + Auth + RLS + Edge Functions) |
| IA | Claude Sonnet via Edge Function `ai-proxy` (chave só em secret) |
| Áudio | Web Speech API (TTS + STT no browser) |
| Hosting | Vercel |

---

## Fases

| Fase | Entrega | Status |
|---|---|---|
| 0 — Fundação | Auth, schema inicial, header com XP/streak | ✅ |
| 1 — Núcleo de lições | Player + 5 tipos de exercício, seed A1, XP/streak | ✅ |
| 2 — Revisão (SM-2) | Repetição espaçada, fila do dia, registro de erros | ✅ |
| 3 — IA | Edge Function, correção de escrita (typing), chat + feedback | ✅ |
| 4 — Áudio | TTS/STT, ditado, listening, ouvir/falar nos flashcards | ✅ |
| 5 — Gamificação + PWA | Dashboard, conquistas, meta diária, app instalável | ✅ |
| 6 — Avançado (pós-MVP) | IA adaptativa ✅ · Score fonético, A2+, notificações ⬜ | 🔄 |

---

## Funcionalidades

- **Auth:** login, cadastro, rota protegida, perfil automático.
- **Lições:** módulos/lições com progresso (cadeado/em andamento/concluída); 8 tipos de exercício (flashcard, múltipla escolha, completar lacuna, ordenar palavras, associação, escrita/typing, ditado, listening).
- **Revisão espaçada (SM-2):** palavras vistas entram na fila; autoavaliação Errei/Difícil/Fácil; badge de pendências.
- **IA:** correção de escrita em pt-BR (erros, versão natural, nota); chat por cenário (Garçom / Entrevista / Conversa livre) com feedback final. Rate limit de 50 chamadas/dia.
- **Áudio:** ouvir palavra/frase (TTS); prática de fala com % de acerto (STT, toggle Falar/Parar); ditado e listening.
- **Gamificação:** XP, nível (100 XP/nível), streak, meta diária configurável (5/10/20/30 min), calendário de dias estudados, conquistas, "onde praticar mais".
- **PWA:** instalável no iPhone (Safari → Adicionar à Tela de Início); cache básico offline.
- **Prática adaptativa (Fase 6):** tela `/practice` que usa seus erros (`mistakes`) para a IA gerar exercícios de reforço (múltipla escolha / completar lacuna). Acesso pelo botão "Praticar meus erros" no dashboard. Cada exercício tem um botão **"🇧🇷 Traduzir"** (`TranslateToggle`) que revela sob demanda a tradução em pt-BR da frase/pergunta — ajuda um aluno A1 a entender frases com vocabulário que ainda não viu.

---

## Estrutura do código

```
src/
  components/Header.jsx
  features/
    auth/         LoginPage, SignupPage, AuthContext, ProtectedRoute
    lessons/      LessonList, LessonPlayer
      exercises/  Flashcard, MultipleChoice, FillBlank, WordOrder,
                  Matching, Typing, Dictation, Listening, AudioControls
    review/       ReviewPage
    chat/         ChatPage
    dashboard/    DashboardPage, achievements.js
    practice/     PracticePage (prática adaptativa via IA)
  services/       supabaseClient, lessonService, srsService, reviewService,
                  aiService, speechService, dashboardService
  lib/            dateUtils, textMatch
supabase/
  migrations/     001..005
  functions/ai-proxy/index.ts
public/           manifest.json, sw.js, icons/
```

**Rotas:** `/` · `/lesson/:id` · `/review` · `/chat` · `/dashboard` · `/practice` · `/login` · `/signup`

---

## Banco de dados (Supabase)

Tabelas (todas com RLS): `profiles`, `modules`, `lessons`, `exercises`, `vocabulary`, `user_progress`, `review_items`, `mistakes`, `conversation_history`, `xp_events`, `ai_usage`, `daily_activity`.

**Migrations:**
- `001_initial_schema.sql` — schema + RLS
- `002_seed_a1.sql` — conteúdo A1 (2 módulos, 10 lições, 60 palavras)
- `003_add_pronunciation_pt.sql` — pronúncia aproximada em pt-BR
- `004_ai_usage.sql` — rate limit de IA (tabela + RPC `consume_ai_usage`)
- `005_daily_activity.sql` — tempo de estudo (tabela + RPC `add_study_minutes`)

**Edge Function `ai-proxy`:** tasks `correct_writing`, `chat`, `chat_feedback`, `generate_practice`. Valida JWT, aplica rate limit, chave em secret `ANTHROPIC_API_KEY`. Modelo `claude-sonnet-5`.

---

## Notas de operação

- **Deploy do front:** automático na Vercel ao mergear na `main`.
- **Migrations e Edge Functions:** aplicadas manualmente no Supabase (o MCP desta sessão é somente-leitura).
- **Cache do PWA:** ao mudar o app, incrementar `CACHE_VERSION` em `public/sw.js` (atual: `ef-v8`).
- **Ícone do app:** placeholder ("E" em índigo) — trocar por definitivo quando quiser.

---

## Histórico de PRs

| PR | Descrição |
|---|---|
| #1 | Fase 2 — repetição espaçada (SM-2) |
| #2 | Fase 3 — IA (correção + chat) |
| #3 | PWA instalável |
| #4 | Fase 4 — áudio (Web Speech API) |
| #5 | Header responsivo + bump do cache |
| #6 | Áudio visível desde o início |
| #7 | Fase 5 — dashboard de gamificação |
| #8 | Microfone com toggle Falar/Parar |
| #9 | Microfone reconhece fala (resultados parciais) |
| #10 | docs: STATUS.md |
| #11 | Fase 6 — prática adaptativa (IA gera exercícios dos seus erros) |
| #12 | Tradução sob demanda nos exercícios da prática adaptativa |

---

## Próximos passos (pós-MVP)

- Score de pronúncia por fonema (Azure Speech Pronunciation Assessment).
- Conteúdo A2+.
- ~~IA adaptativa: gerar exercícios a partir dos erros registrados em `mistakes`.~~ ✅ feito
- Notificações de lembrete.
- Ícone do app personalizado.

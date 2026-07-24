# EnglishFlow — Status do Projeto

> Documento vivo. Atualizado a cada avanço para servir de referência rápida do que existe.
>
> **Última atualização:** 2026-07-24 · **Estado:** MVP (Fases 0–6) em produção · Redesign visual completo.

PWA de aprendizado de inglês (A1 e A2), gamificado, com IA. Deploy na Vercel (auto-deploy da `main`), banco no Supabase.

---

## Stack

| Camada | Tecnologia |
|---|---|
| Front-end | React 18 + Vite + Tailwind CSS |
| Backend/DB | Supabase (PostgreSQL + Auth + RLS + Edge Functions) |
| IA | Claude Sonnet via Edge Function `ai-proxy` (chave só em secret) |
| Áudio | Web Speech API (TTS) + Azure Speech Pronunciation Assessment (score por fonema, via Edge Function `pronunciation-proxy`) |
| Hosting | Vercel (front + cron `api/send-reminders.js`) |
| Notificações | Web Push (VAPID) — service worker + `api/send-reminders.js` |

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
| 6 — Avançado (pós-MVP) | IA adaptativa ✅ · Score fonético ✅ · Notificações ✅ | ✅ |
| 7 — Redesign visual | Tokens/dark mode, login/cadastro, sidebar, lições, player, revisão, painel, logo/ícone definitivo, navegação mobile | ✅ |
| 8 — Conteúdo A2 | Daily Routines + Past Experiences (2 módulos, 10 lições, 60 palavras) | ✅ |
| 9 — Pronúncia por fonema | Grava áudio real (WAV) + Azure Pronunciation Assessment, feedback colorido por fonema no botão "🎤 Falar" | ✅ |
| 10 — Lembretes | Push notification (VAPID) às 20h (Brasília) pra quem não estudou no dia, toggle no painel | ✅ |

---

## Funcionalidades

- **Auth:** login, cadastro, rota protegida, perfil automático.
- **Lições:** módulos/lições com progresso (cadeado/em andamento/concluída); 8 tipos de exercício (flashcard, múltipla escolha, completar lacuna, ordenar palavras, associação, escrita/typing, ditado, listening).
- **Revisão espaçada (SM-2):** palavras vistas entram na fila; autoavaliação Errei/Difícil/Fácil; badge de pendências.
- **IA:** correção de escrita em pt-BR (erros, versão natural, nota); chat por cenário (Garçom / Entrevista / Conversa livre) com feedback final. Rate limit de 50 chamadas/dia.
- **Áudio:** ouvir palavra/frase (TTS); prática de fala com score de pronúncia **por fonema** (Azure Pronunciation Assessment — grava áudio real via `wavRecorder.js`, mostra cada fonema colorido por precisão + nota geral), toggle Falar/Parar; ditado e listening (esses dois continuam usando a Web Speech API só para texto).
- **Gamificação:** XP, nível (100 XP/nível), streak, meta diária configurável (5/10/20/30 min), calendário de dias estudados, conquistas, "onde praticar mais".
- **PWA:** instalável no iPhone (Safari → Adicionar à Tela de Início); cache básico offline.
- **Lembretes:** botão "🔔 Lembrete diário" no painel ativa push notification (Web Push/VAPID); um cron na Vercel (20h Brasília) avisa quem ainda não estudou no dia. Só funciona com o app instalado na Tela de Início (iOS 16.4+).
- **Prática adaptativa (Fase 6):** tela `/practice` que usa seus erros (`mistakes`) para a IA gerar exercícios de reforço (múltipla escolha / completar lacuna). Acesso pelo botão "Praticar meus erros" no dashboard. Cada exercício tem um botão **"🇧🇷 Traduzir"** (`TranslateToggle`) que revela sob demanda a tradução em pt-BR da frase/pergunta — ajuda um aluno A1 a entender frases com vocabulário que ainda não viu.

---

## Estrutura do código

```
src/
  components/     Sidebar.jsx, ThemeToggle.jsx
  features/
    auth/         LoginPage, SignupPage, AuthBrandPanel, AuthContext, ProtectedRoute
    theme/        ThemeContext (dark mode, localStorage)
    lessons/      LessonList, LessonPlayer
      exercises/  Flashcard, MultipleChoice, FillBlank, WordOrder,
                  Matching, Typing, Dictation, Listening, AudioControls
    review/       ReviewPage
    chat/         ChatPage
    dashboard/    DashboardPage, achievements.js
    practice/     PracticePage (prática adaptativa via IA)
  services/       supabaseClient, lessonService, srsService, reviewService,
                  aiService, speechService, dashboardService, pronunciationService,
                  pushService
  lib/            dateUtils, textMatch, wavRecorder
supabase/
  migrations/     001..007
  functions/      ai-proxy/index.ts, pronunciation-proxy/index.ts
public/           manifest.json, sw.js, icons/ (PWA), brand/ (logo/ícone UI)
api/              send-reminders.js (cron da Vercel, 20h Brasília)
vercel.json       config do cron
```

**Rotas:** `/` · `/lesson/:id` · `/review` · `/chat` · `/dashboard` · `/practice` · `/login` · `/signup`

---

## Banco de dados (Supabase)

Tabelas (todas com RLS): `profiles`, `modules`, `lessons`, `exercises`, `vocabulary`, `user_progress`, `review_items`, `mistakes`, `conversation_history`, `xp_events`, `ai_usage`, `daily_activity`, `push_subscriptions`.

**Migrations:**
- `001_initial_schema.sql` — schema + RLS
- `002_seed_a1.sql` — conteúdo A1 (2 módulos, 10 lições, 60 palavras)
- `003_add_pronunciation_pt.sql` — pronúncia aproximada em pt-BR
- `004_ai_usage.sql` — rate limit de IA (tabela + RPC `consume_ai_usage`)
- `005_daily_activity.sql` — tempo de estudo (tabela + RPC `add_study_minutes`)
- `006_seed_a2.sql` — conteúdo A2 (Daily Routines + Past Experiences, 2 módulos, 10 lições, 60 palavras)
- `007_push_subscriptions.sql` — inscrições de push notification (lembrete diário)

**Edge Function `ai-proxy`:** tasks `correct_writing`, `chat`, `chat_feedback`, `generate_practice`. Valida JWT, aplica rate limit, chave em secret `ANTHROPIC_API_KEY`. Modelo `claude-sonnet-5`.

**Edge Function `pronunciation-proxy`:** recebe áudio WAV (base64) + texto de referência, chama a Azure Pronunciation Assessment (REST, formato "detailed"), devolve score geral + por palavra/fonema. Valida JWT, compartilha o rate limit diário com `ai-proxy` (mesma tabela `ai_usage`). Secrets: `AZURE_SPEECH_KEY`, `AZURE_SPEECH_REGION`.

**Cron `api/send-reminders.js` (Vercel, 20h Brasília / 23h UTC):** busca perfis com `last_study_date` diferente de hoje, manda Web Push (biblioteca `web-push`) pra cada inscrição em `push_subscriptions` desses usuários, remove inscrições expiradas (404/410). Protegido por `CRON_SECRET` (Vercel injeta automaticamente como `Authorization: Bearer` nas chamadas de cron quando essa env var existe). Env vars: `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, `VAPID_PUBLIC_KEY`, `VAPID_PRIVATE_KEY`, `VAPID_SUBJECT`, `CRON_SECRET`.

---

## Notas de operação

- **Deploy do front:** automático na Vercel ao mergear na `main`.
- **Migrations e Edge Functions:** aplicadas manualmente no Supabase (o MCP desta sessão é somente-leitura).
- **Cache do PWA:** ao mudar o app, incrementar `CACHE_VERSION` em `public/sw.js` (atual: `ef-v10`).
- **Design system:** redesign moderno completo (tokens de cor claro/escuro, fontes Baloo 2 + Manrope, dark mode) — ver `design_handoff_englishflow_redesign/` na raiz do repo para referência original.
- **Ícone do app:** definitivo (livro em quadrado gradiente teal) — `public/icons/` (PWA/favicon) e `public/brand/` (uso na UI).

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
| #13 | Redesign visual moderno (login, sidebar, lições, player, revisão) |
| #14 | Ajustes de fidelidade ao mockup (sidebar, lista de lições, painel) |
| #15 | Logo e ícone definitivos |
| #16 | Menu mobile: topbar + drawer |
| #17 | Menu mobile: barra fixa embaixo (substitui #16) |
| #18 | Logo fixa no topo do mobile de volta |
| #19 | Conteúdo A2 (Daily Routines + Past Experiences) |
| #20 | Score de pronúncia por fonema (Azure Pronunciation Assessment) |
| #21 | Lembretes diários (Web Push + cron na Vercel) |

---

## Próximos passos (pós-MVP)

- Mais conteúdo A2 ou avançar pra B1.
- ~~IA adaptativa: gerar exercícios a partir dos erros registrados em `mistakes`.~~ ✅ feito
- ~~Ícone do app personalizado.~~ ✅ feito
- ~~Conteúdo A2.~~ ✅ feito
- ~~Score de pronúncia por fonema.~~ ✅ feito
- ~~Notificações de lembrete.~~ ✅ feito (falta aplicar a migration `007` e configurar as env vars na Vercel)

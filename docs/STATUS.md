# EnglishFlow — Status do Projeto

> Documento vivo. Atualizado a cada avanço para servir de referência rápida do que existe.
>
> **Última atualização:** 2026-07-24 · **Estado:** MVP (Fases 0–6) em produção · Redesign visual completo · seguindo roadmap CEFR (A1→C2, ver seção abaixo).

PWA de aprendizado de inglês (A1 e A2), gamificado, com IA. Deploy na Vercel (auto-deploy da `main`), banco no Supabase.

---

## Stack

| Camada | Tecnologia |
|---|---|
| Front-end | React 18 + Vite + Tailwind CSS |
| Backend/DB | Supabase (PostgreSQL + Auth + RLS + Edge Functions) |
| IA | Claude Sonnet via Edge Function `ai-proxy` (chave só em secret) |
| Áudio | Voz neural Azure TTS (Edge Function `tts-proxy`, fallback Web Speech API) + Azure Speech Pronunciation Assessment (score por fonema, via Edge Function `pronunciation-proxy`) |
| Imagens | Unsplash (busca automática por palavra, cacheada em `vocabulary`, via Edge Function `vocab-image-proxy`) |
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
| 11 — Onboarding | Wizard pós-cadastro (tempo diário, objetivo, nível) — prioriza revisão por objetivo | ✅ |
| 12 — Imagens | Flashcards/múltipla escolha com foto automática da palavra (Unsplash) | ✅ |
| 13 — Voz neural | Leitura via Azure TTS (SSML, pausas reais) no lugar da Web Speech API | ✅ |

---

## Funcionalidades

- **Auth:** login, cadastro, rota protegida, perfil automático.
- **Lições:** módulos/lições com progresso (cadeado/em andamento/concluída); 8 tipos de exercício (flashcard, múltipla escolha, completar lacuna, ordenar palavras, associação, escrita/typing, ditado, listening).
- **Revisão espaçada (SM-2):** palavras vistas entram na fila; autoavaliação Errei/Difícil/Fácil; badge de pendências.
- **IA:** correção de escrita em pt-BR (erros, versão natural, nota); chat por cenário (Garçom / Entrevista / Conversa livre) com feedback final. Rate limit de 50 chamadas/dia.
- **Áudio:** ouvir palavra/frase com voz neural (Azure TTS via `tts-proxy`, pausas reais em vírgulas/pontos via SSML; cai pra Web Speech API nativa se a Azure falhar); prática de fala com score de pronúncia **por fonema** (Azure Pronunciation Assessment — grava áudio real via `wavRecorder.js`, mostra cada fonema colorido por precisão + nota geral), toggle Falar/Parar; ditado e listening usam a mesma leitura neural.
- **Imagens:** flashcards e múltipla escolha ligados a um vocabulário mostram uma foto ilustrativa (busca automática no Unsplash na primeira vez, cacheada em `vocabulary` — chamadas seguintes não gastam API de novo), com crédito do fotógrafo.
- **Gamificação:** XP, nível (100 XP/nível), streak, meta diária configurável (5/10/20/30 min), calendário de dias estudados, conquistas, "onde praticar mais".
- **Onboarding:** wizard de 3 telas após o primeiro login (tempo diário disponível, objetivo de aprendizado, nível atual); salva no perfil e prioriza a fila de revisão por vocabulário relacionado ao objetivo escolhido (quando existir tag correspondente).
- **PWA:** instalável no iPhone (Safari → Adicionar à Tela de Início); cache básico offline.
- **Lembretes:** botão "🔔 Lembrete diário" no painel ativa push notification (Web Push/VAPID); um cron na Vercel (20h Brasília) avisa quem ainda não estudou no dia. Só funciona com o app instalado na Tela de Início (iOS 16.4+).
- **Prática adaptativa (Fase 6):** tela `/practice` que usa seus erros (`mistakes`) para a IA gerar exercícios de reforço (múltipla escolha / completar lacuna). Acesso pelo botão "Praticar meus erros" no dashboard. Cada exercício tem um botão **"🇧🇷 Traduzir"** (`TranslateToggle`) que revela sob demanda a tradução em pt-BR da frase/pergunta — ajuda um aluno A1 a entender frases com vocabulário que ainda não viu.

---

## Roadmap de conteúdo (CEFR A1 → C2)

Estrutura de longo prazo do curso, baseada no framework CEFR (o mesmo usado em cursos de inglês reais). Cada nível é dividido em módulos (tabela `modules`, ~5 lições cada) — a meta é a seguinte:

| Nível | Classificação | Módulos-alvo | Feitos |
|---|---|---|---|
| A1 | Iniciante | 15 | 9 |
| A2 | Básico | 15 | 9 |
| B1 | Intermediário | 20 | 0 |
| B2 | Intermediário Avançado | 20 | 0 |
| C1 | Avançado | 20 | 0 |
| C2 | Proficiência | 20 | 0 |

**Temas de referência por nível** (ordem não é rígida, ajusta conforme o que fizer mais sentido no momento):

- **A1:** Alfabeto e pronúncia (pendente — não é sobre vocabulário/gramática, fica pra quando fizer sentido), Greetings ✅, Numbers/Colors/Family ✅, Verb to be ✅, Present Simple ✅, Food ✅, Months & Seasons ✅ (dias da semana já cobertos no A2 "Daily Routines"), Directions ✅, Clothes & Shopping ✅, Body & Health ✅, House & Furniture, Weather, Sports & Hobbies, Technology & Devices, Transportation, Jobs & Workplace (lista definida em conjunto com o Márcio pra fechar os 15 módulos-alvo)
- **A2:** Daily Routines ✅ (já inclui dias da semana), Past Simple ✅ (feito como "Past Experiences"), Future (going to/will) ✅, Comparatives ✅, Countable x Uncountable ✅, Prepositions ✅, Daily conversations ✅, Shopping ✅, Travel ✅ — lista original esgotada, precisa de novos temas pra fechar os 15 módulos-alvo (igual foi feito com o A1)
- **B1:** Present Perfect, Modal verbs, Passive Voice, Reported Speech (introdução), Phrasal verbs básicos, Writing de e-mails, Listening intermediário
- **B2:** Conditionals, Reported Speech completo, Passive avançada, Relative clauses, Idioms, Debate e argumentação, Business English básico
- **C1:** Vocabulário acadêmico, Escrita formal, Expressões idiomáticas avançadas, Pronúncia refinada, Apresentações profissionais, Negociação
- **C2:** Nuances da linguagem, Literatura, Humor e sarcasmo, Diferentes sotaques, Escrita avançada, Preparação para exames de proficiência (IELTS, TOEFL, Cambridge C2)

**Como construímos:** em lotes pequenos (1-2 módulos por vez, sempre confirmando antes de escrever conteúdo), sempre esgotando A1/A2 antes de avançar pro próximo nível. Cada módulo novo = 1 migration (`0XX_seed_<nivel>_<tema>.sql`) com módulo + ~5 lições + exercícios + ~30 palavras de vocabulário novo, seguindo o padrão de `002_seed_a1.sql` e `006_seed_a2.sql`.

**Mapeamento "componentes de uma unidade" → recursos que já existem no app:**

| Componente da unidade | Onde já existe |
|---|---|
| Vocabulário / Gramática / Quiz | Exercícios: flashcard, multiple_choice, fill_blank, word_order, matching, typing |
| Listening / Speaking / Pronúncia | dictation, listening, `AudioControls` (TTS neural Azure + avaliação de pronúncia por fonema) |
| Revisão espaçada | Já existe (SM-2, `ReviewPage`) |
| Missão prática (conversação) | Já existe via `ChatPage` (cenários Garçom / Entrevista / Conversa livre) |
| Leitura (texto curto + perguntas) | **Não existe ainda** — fica como possível novo tipo de exercício quando fizer sentido (a partir do B1, onde "compreender textos curtos" aparece na classificação CEFR) |

---

## Estrutura do código

```
src/
  components/     Sidebar.jsx, ThemeToggle.jsx
  features/
    auth/         LoginPage, SignupPage, AuthBrandPanel, AuthContext, ProtectedRoute
    onboarding/   OnboardingPage (wizard pós-cadastro)
    theme/        ThemeContext (dark mode, localStorage)
    lessons/      LessonList, LessonPlayer
      exercises/  Flashcard, MultipleChoice, FillBlank, WordOrder,
                  Matching, Typing, Dictation, Listening, AudioControls, VocabImage
    review/       ReviewPage
    chat/         ChatPage
    dashboard/    DashboardPage, achievements.js
    practice/     PracticePage (prática adaptativa via IA)
  services/       supabaseClient, lessonService, srsService, reviewService,
                  aiService, speechService, ttsService, dashboardService,
                  pronunciationService, pushService, onboardingService,
                  vocabImageService
  lib/            dateUtils, textMatch, wavRecorder
supabase/
  migrations/     001..024
  functions/      ai-proxy/, pronunciation-proxy/, tts-proxy/, vocab-image-proxy/
public/           manifest.json, sw.js, icons/ (PWA), brand/ (logo/ícone UI)
api/              send-reminders.js (cron da Vercel, 20h Brasília)
vercel.json       config do cron
```

**Rotas:** `/` · `/lesson/:id` · `/review` · `/chat` · `/dashboard` · `/practice` · `/onboarding` · `/login` · `/signup`

---

## Banco de dados (Supabase)

Tabelas (todas com RLS): `profiles`, `modules`, `lessons`, `exercises`, `vocabulary`, `user_progress`, `review_items`, `mistakes`, `conversation_history`, `xp_events`, `ai_usage`, `daily_activity`, `push_subscriptions`, `tts_usage`.

**Migrations:**
- `001_initial_schema.sql` — schema + RLS
- `002_seed_a1.sql` — conteúdo A1 (2 módulos, 10 lições, 60 palavras)
- `003_add_pronunciation_pt.sql` — pronúncia aproximada em pt-BR
- `004_ai_usage.sql` — rate limit de IA (tabela + RPC `consume_ai_usage`)
- `005_daily_activity.sql` — tempo de estudo (tabela + RPC `add_study_minutes`)
- `006_seed_a2.sql` — conteúdo A2 (Daily Routines + Past Experiences, 2 módulos, 10 lições, 60 palavras)
- `007_push_subscriptions.sql` — inscrições de push notification (lembrete diário)
- `008_onboarding.sql` — `profiles` ganha `learning_goals`, `target_cefr_level`, `onboarding_completed`
- `009_vocabulary_images.sql` — `vocabulary` ganha `image_url`, `image_photographer`, `image_photographer_url`
- `010_tts_usage.sql` — rate limit da leitura em voz (tabela + RPC `consume_tts_usage`, separado do `ai_usage`)
- `011_seed_a1_verb_to_be.sql` — conteúdo A1 (módulo 3 "Verb to Be", 5 lições, 30 palavras)
- `012_seed_a2_future.sql` — conteúdo A2 (módulo 3 "Future (Going to / Will)", 5 lições, 30 palavras)
- `013_seed_a1_present_simple.sql` — conteúdo A1 (módulo 4 "Present Simple", 5 lições, 30 palavras)
- `014_seed_a2_comparatives.sql` — conteúdo A2 (módulo 4 "Comparatives", 5 lições, 30 palavras)
- `015_seed_a1_food.sql` — conteúdo A1 (módulo 5 "Food", 5 lições, 30 palavras)
- `016_seed_a2_countable_uncountable.sql` — conteúdo A2 (módulo 5 "Countable x Uncountable", 5 lições, 30 palavras)
- `017_seed_a1_months_seasons.sql` — conteúdo A1 (módulo 6 "Months & Seasons", 5 lições, 30 palavras)
- `018_seed_a2_prepositions.sql` — conteúdo A2 (módulo 6 "Prepositions", 5 lições, 30 palavras)
- `019_seed_a1_directions.sql` — conteúdo A1 (módulo 7 "Directions", 5 lições, 30 palavras)
- `020_seed_a2_daily_conversations.sql` — conteúdo A2 (módulo 7 "Daily Conversations", 5 lições, 30 palavras)
- `021_seed_a1_clothes_shopping.sql` — conteúdo A1 (módulo 8 "Clothes & Shopping", 5 lições, 30 palavras)
- `022_seed_a2_shopping.sql` — conteúdo A2 (módulo 8 "Shopping", 5 lições, 30 palavras)
- `023_seed_a1_body_health.sql` — conteúdo A1 (módulo 9 "Body & Health", 5 lições, 30 palavras)
- `024_seed_a2_travel.sql` — conteúdo A2 (módulo 9 "Travel", 5 lições, 30 palavras)

**Edge Function `ai-proxy`:** tasks `correct_writing`, `chat`, `chat_feedback`, `generate_practice`. Valida JWT, aplica rate limit, chave em secret `ANTHROPIC_API_KEY`. Modelo `claude-sonnet-5`.

**Edge Function `pronunciation-proxy`:** recebe áudio WAV (base64) + texto de referência, chama a Azure Pronunciation Assessment (REST, formato "detailed"), devolve score geral + por palavra/fonema. Valida JWT, compartilha o rate limit diário com `ai-proxy` (mesma tabela `ai_usage`). Secrets: `AZURE_SPEECH_KEY`, `AZURE_SPEECH_REGION`.

**Edge Function `tts-proxy`:** recebe um texto, monta SSML (pausas em vírgulas/pontos, voz `en-US-AriaNeural`), chama a Azure TTS REST e devolve o áudio em base64. Rate limit próprio (`tts_usage`, 300/dia). Secrets: `AZURE_SPEECH_KEY`, `AZURE_SPEECH_REGION` (reaproveitados do `pronunciation-proxy`).

**Edge Function `vocab-image-proxy`:** recebe um `vocabularyId`; se já tem `image_url` salvo, devolve do cache — senão busca no Unsplash pela palavra e grava o resultado em `vocabulary` (cache permanente). Secret: `UNSPLASH_ACCESS_KEY`.

**Cron `api/send-reminders.js` (Vercel, 20h Brasília / 23h UTC):** busca perfis com `last_study_date` diferente de hoje, manda Web Push (biblioteca `web-push`) pra cada inscrição em `push_subscriptions` desses usuários, remove inscrições expiradas (404/410). Protegido por `CRON_SECRET` (Vercel injeta automaticamente como `Authorization: Bearer` nas chamadas de cron quando essa env var existe). Env vars: `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, `VAPID_PUBLIC_KEY`, `VAPID_PRIVATE_KEY`, `VAPID_SUBJECT`, `CRON_SECRET`.

**Nota sobre Edge Functions deployadas via painel (Dashboard):** `auth.getUser()` sem argumento não pega o JWT de forma confiável nesse fluxo de deploy — sempre passar o token explicitamente: `auth.getUser(token)` (token extraído do header `Authorization: Bearer ...`). Foi a causa de um bug real no `vocab-image-proxy` (401 mesmo com token válido).

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
| #22 | Onboarding pós-cadastro (tempo, objetivo, nível) |
| #23 | Imagens automáticas nos flashcards/múltipla escolha (Unsplash) |
| #24 | fix: vocab-image-proxy retornava 401 mesmo com token válido |
| #25 | Leitura com voz neural (Azure TTS) |
| #26 | docs: roadmap de conteúdo CEFR (A1-C2) |
| #27 | Conteúdo: módulo A1 "Verb to Be" + módulo A2 "Future (Going to / Will)" |
| #28 | Conteúdo: módulo A1 "Present Simple" + módulo A2 "Comparatives" |
| #29 | Conteúdo: módulo A1 "Food" + módulo A2 "Countable x Uncountable" |
| #30 | Conteúdo: módulo A1 "Months & Seasons" + módulo A2 "Prepositions" |
| #31 | Conteúdo: módulo A1 "Directions" + módulo A2 "Daily Conversations" |
| #32 | Conteúdo: módulo A1 "Clothes & Shopping" + módulo A2 "Shopping" |
| #33 | Conteúdo: módulo A1 "Body & Health" + módulo A2 "Travel" |

---

## Próximos passos

Ver seção **Roadmap de conteúdo (CEFR A1 → C2)** acima. Próximos temas: A1 tem 6 temas restantes definidos com o Márcio pra completar os 15 módulos (House & Furniture, Weather, Sports & Hobbies, Technology & Devices, Transportation, Jobs & Workplace). A2 esgotou a lista original (Travel foi o último) — precisa definir novos temas com o Márcio pra chegar aos 15 módulos-alvo, igual foi feito com o A1.

- Módulo A1 "Body & Health" + módulo A2 "Travel" — ✅ feito (PR #33)
- Módulo A1 "Clothes & Shopping" + módulo A2 "Shopping" — ✅ feito (PR #32)
- Módulo A1 "Directions" + módulo A2 "Daily Conversations" — ✅ feito (PR #31)
- Módulo A1 "Months & Seasons" + módulo A2 "Prepositions" — ✅ feito (PR #30)
- Módulo A1 "Food" + módulo A2 "Countable x Uncountable" — ✅ feito (PR #29)
- Módulo A1 "Present Simple" + módulo A2 "Comparatives" — ✅ feito (PR #28)
- Módulo A1 "Verb to Be" + módulo A2 "Future (Going to / Will)" — ✅ feito (PR #27)
- Onboarding pós-cadastro (tempo/objetivo/nível) — ✅ feito (PR #22)
- Imagens automáticas nos flashcards/múltipla escolha (Unsplash) — ✅ feito (PR #23, #24)
- Voz neural (Azure TTS) no lugar da Web Speech API — ✅ feito (PR #25)
- ~~IA adaptativa: gerar exercícios a partir dos erros registrados em `mistakes`.~~ ✅ feito
- ~~Ícone do app personalizado.~~ ✅ feito
- ~~Conteúdo A2.~~ ✅ feito
- ~~Score de pronúncia por fonema.~~ ✅ feito
- ~~Notificações de lembrete.~~ ✅ feito

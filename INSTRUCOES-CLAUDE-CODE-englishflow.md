# EnglishFlow — Instruções Completas para Claude Code

> Documento de trabalho para desenvolvimento do MVP do EnglishFlow via Claude Code.
> Versão 1.0 — Julho/2026
> Contém: decisões de stack, CLAUDE.md do projeto, schema do banco, cronograma por fases e prompts prontos para cada fase.

---

## 1. Decisões de arquitetura (já tomadas — ajuste se discordar)

O prompt original deixava escolhas em aberto e incluía itens que inviabilizam um MVP. As decisões abaixo foram tomadas com base no seu fluxo de trabalho atual (Claude Code + Vercel + Supabase, sem background formal em programação):

| Item | Prompt original | Decisão para o MVP | Motivo |
|---|---|---|---|
| Front-end | Flutter OU React | **React + Vite + Tailwind (PWA)** | Você já trabalha com web + Vercel. Flutter exigiria Dart e um ecossistema novo inteiro. Claude Code é muito mais produtivo em React/JS. |
| Backend | Supabase | **Supabase** (mantido) | Você já domina: auth, RLS, Edge Functions, migrations. |
| IA | OpenAI ou Gemini | **Camada `AIService` + Claude API** (Gemini como fallback) | Você já tem conta Anthropic. A abstração permite trocar depois sem refatorar. |
| STT (fala→texto) | Google/Whisper/Web Speech | **Web Speech API** no MVP | Gratuita, roda no browser, zero custo de servidor. Whisper/Azure ficam para a Fase 6. |
| TTS (texto→fala) | Web Speech / ElevenLabs | **Web Speech API** no MVP | Mesmo motivo. ElevenLabs só se o produto validar. |
| Score de pronúncia por fonema | Obrigatório | **ADIADO para Fase 6** | Web Speech API não retorna fonemas/entonação. Isso exige Azure Pronunciation Assessment (F0: 5h/mês grátis). É o item tecnicamente mais difícil do app inteiro — não pode bloquear o MVP. |
| Clean Architecture completa | Obrigatória | **Estrutura simples por feature** | Clean Architecture com DTOs/Domain/Infra para um MVP solo é overengineering. Estrutura por pastas de feature + camada de services (padrão FinZen) resolve. |
| Conteúdo A1–C2 | Implícito | **Seed de A1 (2 módulos, ~10 lições) gerado por IA e revisado manualmente** | Ninguém escreve 6 níveis CEFR de conteúdo num MVP. Valide com A1 primeiro. |
| Offline-first completo | Obrigatório | **PWA com cache básico (Fase 5)** | Sync bidirecional offline é complexo. Cache de lições já baixadas é suficiente para validar. |
| Monetização | Free/Premium | **Fora do MVP** | Só faz sentido depois de ter usuários. |

**Regra de ouro do projeto:** tudo que consome API paga de IA passa por Edge Function no Supabase (nunca chave no front-end — mesma lição do incidente das credenciais no skill FinZen).

---

## 2. CLAUDE.md do projeto

Crie este arquivo na raiz do repositório antes de qualquer sessão do Claude Code:

```markdown
# CLAUDE.md — EnglishFlow

## Comunicação
- Responda sempre em português (pt-BR). Código, nomes de variáveis e commits em inglês.
- Explique decisões técnicas de forma simples — o usuário não tem background formal em programação.

## Estilo de trabalho
- NUNCA execute mudanças sem aprovação explícita. Sempre mostre o diff/plano antes de qualquer commit.
- Prefira soluções simples e práticas. Não adicione abstrações "para o futuro" sem necessidade real.
- Uma feature por vez. Não misture refatoração com feature nova no mesmo commit.
- Ao final de cada tarefa, liste o que foi feito e o que falta testar manualmente.

## Contexto do projeto
- EnglishFlow: PWA de aprendizado de inglês (A1→C2), gamificado, com IA para correção e conversação.
- Usuário: desenvolvedor solo, usa Windows 11 + PowerShell, deploy na Vercel, banco no Supabase.
- MVP focado em nível A1. Escopo controlado por fases (ver INSTRUCOES-CLAUDE-CODE-englishflow.md).

## Stack
- React 18 + Vite + Tailwind CSS
- Supabase (auth, PostgreSQL com RLS, Edge Functions, Storage)
- Vercel (hosting + serverless routes quando necessário)
- Web Speech API (STT/TTS no browser)
- IA via camada `src/services/aiService.js` → Edge Function `ai-proxy` (chave NUNCA no front)

## Comandos
```bash
npm run dev        # dev server local (Vite)
npm run build      # build de produção
npx supabase db push   # aplicar migrations (ou via MCP do Supabase)
```

## Estrutura de pastas
```
src/
  components/      # componentes compartilhados (Button, Card, ProgressBar...)
  features/
    auth/
    lessons/       # player de lições + tipos de exercício
    review/        # repetição espaçada (SM-2)
    dashboard/
    chat/          # conversação com IA
  services/
    aiService.js       # abstração de IA (provider-agnostic)
    supabaseClient.js
    speechService.js   # wrapper Web Speech API (STT + TTS)
    srsService.js      # algoritmo SM-2
  lib/             # helpers puros
supabase/
  migrations/      # SQL versionado por data (padrão FinZen)
  functions/
    ai-proxy/      # Edge Function que chama a API de IA
```

## Regras de segurança
- Chaves de API de IA existem SOMENTE em secrets de Edge Function. Se encontrar chave no front, pare e avise.
- RLS obrigatório em todas as tabelas com dados de usuário desde a primeira migration.
- Validar input do usuário antes de enviar para a IA (limite de tamanho, sanitização).

## Verificação antes de dizer "pronto"
- `npm run build` sem erros
- Testar o fluxo alterado no browser (Playwright hook se configurado)
- Conferir se nenhuma migration quebrou RLS
```

---

## 3. Schema do banco (Fase 0)

Versão enxuta para o MVP — 10 tabelas em vez das 15+ do prompt original. `Lives`, `Achievements`, `DailyChallenges` e loja entram na Fase 5.

```sql
-- 001_initial_schema.sql

-- Perfil (estende auth.users)
create table profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  display_name text,
  cefr_level text default 'A1',
  daily_goal_minutes int default 10,
  xp_total int default 0,
  streak_current int default 0,
  streak_best int default 0,
  last_study_date date,
  created_at timestamptz default now()
);

-- Estrutura do curso
create table modules (
  id uuid primary key default gen_random_uuid(),
  cefr_level text not null,          -- 'A1', 'A2'...
  title text not null,
  description text,
  sort_order int not null,
  is_published boolean default false
);

create table lessons (
  id uuid primary key default gen_random_uuid(),
  module_id uuid references modules(id) on delete cascade,
  title text not null,
  sort_order int not null,
  xp_reward int default 10
);

create table exercises (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references lessons(id) on delete cascade,
  type text not null check (type in (
    'flashcard','multiple_choice','fill_blank',
    'word_order','matching','typing','dictation','listening'
  )),
  sort_order int not null,
  content jsonb not null   -- estrutura varia por tipo (ver seção 4)
);

-- Vocabulário (cards inteligentes)
create table vocabulary (
  id uuid primary key default gen_random_uuid(),
  word text not null,
  ipa text,
  part_of_speech text,
  translation_pt text not null,
  example_en text,
  example_pt text,
  cefr_level text default 'A1',
  tags text[]
);

-- Progresso do usuário
create table user_progress (
  user_id uuid references profiles(id) on delete cascade,
  lesson_id uuid references lessons(id) on delete cascade,
  status text default 'not_started' check (status in ('not_started','in_progress','completed')),
  score int,
  completed_at timestamptz,
  primary key (user_id, lesson_id)
);

-- Repetição espaçada (SM-2)
create table review_items (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  vocabulary_id uuid references vocabulary(id) on delete cascade,
  easiness numeric default 2.5,
  interval_days int default 0,
  repetitions int default 0,
  next_review_at date default current_date,
  last_quality int,
  unique (user_id, vocabulary_id)
);

-- Erros (alimenta a "IA professora" depois)
create table mistakes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  exercise_id uuid references exercises(id),
  user_answer text,
  correct_answer text,
  mistake_type text,       -- 'grammar','vocab','spelling','listening'
  created_at timestamptz default now()
);

-- Histórico de conversação com IA
create table conversation_history (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  scenario text,           -- 'waiter','interview','free_talk'...
  messages jsonb not null, -- [{role, content}]
  feedback jsonb,          -- nota, erros, vocabulário novo
  created_at timestamptz default now()
);

-- Log de XP (auditoria da gamificação)
create table xp_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  amount int not null,
  source text not null,    -- 'lesson','review','streak_bonus','chat'
  created_at timestamptz default now()
);

-- RLS: usuário só vê os próprios dados; conteúdo do curso é público-leitura
alter table profiles enable row level security;
alter table user_progress enable row level security;
alter table review_items enable row level security;
alter table mistakes enable row level security;
alter table conversation_history enable row level security;
alter table xp_events enable row level security;
alter table modules enable row level security;
alter table lessons enable row level security;
alter table exercises enable row level security;
alter table vocabulary enable row level security;

create policy "own profile" on profiles for all using (auth.uid() = id);
create policy "own progress" on user_progress for all using (auth.uid() = user_id);
create policy "own reviews" on review_items for all using (auth.uid() = user_id);
create policy "own mistakes" on mistakes for all using (auth.uid() = user_id);
create policy "own conversations" on conversation_history for all using (auth.uid() = user_id);
create policy "own xp" on xp_events for all using (auth.uid() = user_id);
create policy "read published content" on modules for select using (is_published = true);
create policy "read lessons" on lessons for select using (true);
create policy "read exercises" on exercises for select using (true);
create policy "read vocabulary" on vocabulary for select using (true);
```

**Diferença importante vs. FinZen:** aqui o app nasce multi-usuário com RLS por `user_id` desde o dia 1 (no FinZen isso ficou como dívida técnica no roadmap). Custa quase nada agora e evita a migração de ~25 arquivos depois.

---

## 4. Formato `content` (jsonb) por tipo de exercício

Exemplo prático de cada tipo — use isto como referência ao gerar seed e ao construir o player:

```jsonc
// flashcard
{ "vocabulary_id": "uuid", "show_image": false }

// multiple_choice
{
  "question": "How do you say 'obrigado' in English?",
  "audio_text": null,              // se preenchido, toca TTS antes
  "options": ["Please", "Thank you", "Sorry", "Excuse me"],
  "correct_index": 1
}

// fill_blank
{
  "sentence": "She ___ from Brazil.",
  "options": ["is", "are", "am"],
  "correct": "is",
  "translation": "Ela é do Brasil."
}

// word_order (arrastar palavras)
{
  "words": ["name", "My", "is", "Márcio"],
  "correct_sentence": "My name is Márcio",
  "translation": "Meu nome é Márcio"
}

// matching (associação)
{
  "pairs": [
    { "left": "apple", "right": "maçã" },
    { "left": "water", "right": "água" },
    { "left": "bread", "right": "pão" }
  ]
}

// typing (digitação — corrigida por IA na Fase 3; antes, comparação exata tolerante)
{
  "prompt_pt": "Traduza: 'Eu gosto de café'",
  "expected": "I like coffee",
  "ai_review": true
}

// dictation (ditado)
{ "audio_text": "Where are you from?", "expected": "Where are you from?" }

// listening
{
  "audio_text": "Hello! My name is Anna. I am a teacher.",
  "question": "What is Anna's job?",
  "options": ["Doctor", "Teacher", "Student"],
  "correct_index": 1
}
```

---

## 5. Exemplos práticos dos dois serviços centrais

### 5.1 `srsService.js` — SM-2 em ~30 linhas

O SM-2 é só isso — não precisa de biblioteca:

```javascript
// quality: 0-5 (0 = errou feio, 5 = acertou fácil)
export function sm2(item, quality) {
  let { easiness, interval_days, repetitions } = item;

  if (quality < 3) {
    // Errou: volta pro início, revisa amanhã
    return { easiness, interval_days: 1, repetitions: 0 };
  }

  easiness = Math.max(1.3,
    easiness + (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02))
  );

  if (repetitions === 0)      interval_days = 1;
  else if (repetitions === 1) interval_days = 6;
  else                        interval_days = Math.round(interval_days * easiness);

  return { easiness, interval_days, repetitions: repetitions + 1 };
}

// Uso após responder um flashcard:
// const updated = sm2(reviewItem, quality);
// next_review_at = hoje + updated.interval_days
```

Fila de revisão do dia: `select * from review_items where user_id = X and next_review_at <= current_date order by next_review_at limit 20`.

### 5.2 `aiService.js` + Edge Function — IA desacoplada e segura

Front-end nunca conhece a chave:

```javascript
// src/services/aiService.js
import { supabase } from './supabaseClient';

export async function aiRequest(task, payload) {
  const { data, error } = await supabase.functions.invoke('ai-proxy', {
    body: { task, payload }   // task: 'correct_writing' | 'chat' | 'chat_feedback'
  });
  if (error) throw error;
  return data;
}
```

```typescript
// supabase/functions/ai-proxy/index.ts (resumo)
// Secrets: ANTHROPIC_API_KEY (e futuramente GEMINI_API_KEY)
const PROMPTS = {
  correct_writing: (p) => `Você é um professor de inglês. Corrija a frase do aluno
    (nível ${p.level}). Responda SOMENTE em JSON:
    { "corrected": "", "errors": [{"type":"","explanation_pt":""}],
      "natural_version": "", "score": 0-100 }
    Frase esperada: "${p.expected}". Frase do aluno: "${p.answer}"`,

  chat: (p) => `Você é ${p.role} (ex.: garçom) conversando em inglês nível ${p.level}.
    Nunca interrompa para corrigir. Respostas curtas e naturais.`,

  chat_feedback: (p) => `Analise a conversa e responda em JSON:
    { "score": 0-100, "errors": [...], "new_vocabulary": [...],
      "better_expressions": [...] }`
};
// Valida user via JWT do Supabase, aplica rate limit simples
// (ex.: max 50 chamadas/dia gravadas numa tabela ai_usage), chama a API, retorna JSON.
```

Trocar de provider no futuro = editar só a Edge Function.

---

## 6. Cronograma por fases

Estimativas assumindo dedicação parcial (compatível com escala offshore). Cada fase termina com deploy funcional na Vercel — nunca acumule duas fases sem deploy.

| Fase | Entrega | Duração estimada | Critério de aceite |
|---|---|---|---|
| **0 — Fundação** | Repo, Vite+React+Tailwind, auth Supabase (login/cadastro), migration 001, CLAUDE.md, deploy Vercel | 1 semana | Login funciona em produção; tabelas criadas com RLS |
| **1 — Núcleo de lições** | Player de lições com 5 tipos (flashcard, multiple_choice, fill_blank, word_order, matching), seed A1 (2 módulos, 10 lições), XP + streak básico | 2–3 semanas | Completar uma lição inteira ponta a ponta, XP salvo, streak incrementa |
| **2 — Revisão (SM-2)** | srsService, tela "Revisão do dia", registro de erros em `mistakes` | 1–2 semanas | Errar um card faz ele voltar amanhã; acertar espaça o intervalo |
| **3 — IA** | Edge Function `ai-proxy`, correção de escrita (tipo `typing`), chat de conversação com cenários + feedback final | 2–3 semanas | Digitar frase errada retorna correção em pt-BR; conversar com "garçom" gera nota ao final |
| **4 — Áudio** | speechService (TTS/STT via Web Speech API), tipos `dictation` e `listening`, botão de ouvir nos flashcards, prática de fala com comparação de texto transcrito | 2 semanas | Ditado funciona no Chrome; flashcard fala a palavra |
| **5 — Gamificação + PWA** | Dashboard completo (habilidades %, calendário, metas), conquistas básicas, manifest + service worker com cache de lições, notificações de lembrete | 2 semanas | App instalável no celular; dashboard reflete progresso real |
| **6 — Avançado (pós-MVP)** | Azure Pronunciation Assessment (fonemas/score), conteúdo A2+, IA adaptativa (gerar exercícios a partir de `mistakes`), monetização | contínuo | — |

**Total até MVP completo (fases 0–5): ~10–13 semanas de trabalho parcial.**

---

## 7. Prompts prontos para o Claude Code (um por fase)

### Fase 0
```
Leia o CLAUDE.md. Vamos iniciar o projeto EnglishFlow do zero.

1. Crie o projeto com Vite + React 18 + Tailwind CSS, estrutura de pastas
   conforme o CLAUDE.md (features/, services/, components/).
2. Configure supabaseClient.js lendo VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY
   do .env (crie .env.example, adicione .env ao .gitignore).
3. Implemente auth: telas de login e cadastro com email/senha, rota protegida,
   criação automática do registro em profiles no primeiro login.
4. Crie a migration supabase/migrations/001_initial_schema.sql com o schema
   do documento INSTRUCOES (seção 3), incluindo todas as policies RLS.
5. Layout base: header com nome do app, XP e streak (valores reais do profile).

Mostre o plano antes de executar. Não faça commit sem eu aprovar o diff.
```

### Fase 1
```
Leia o CLAUDE.md. Fase 1: núcleo de lições.

1. Crie src/features/lessons/ com:
   - LessonList: módulos e lições do nível A1 (via Supabase), com status
     de user_progress (cadeado/em andamento/concluída).
   - LessonPlayer: recebe lesson_id, carrega exercises ordenados e renderiza
     um componente por tipo: Flashcard, MultipleChoice, FillBlank,
     WordOrder, Matching (formatos jsonb da seção 4 do INSTRUCOES).
   - Barra de progresso da lição, feedback visual de acerto/erro,
     tela final com XP ganho.
2. Ao concluir: upsert em user_progress, insert em xp_events, atualizar
   xp_total/streak em profiles (streak: incrementa se last_study_date = ontem,
   mantém se hoje, zera se anterior).
3. Gere migration 002_seed_a1.sql com 2 módulos A1 ("Greetings & Introductions"
   e "Numbers, Colors & Family"), 5 lições cada, 6-8 exercícios por lição,
   misturando os 5 tipos, com ~60 palavras em vocabulary.
   Conteúdo em inglês nível A1 real, traduções pt-BR corretas.

Mostre o plano antes. Uma lição completa deve funcionar ponta a ponta.
```

### Fase 2
```
Leia o CLAUDE.md. Fase 2: repetição espaçada.

1. Implemente src/services/srsService.js com o algoritmo SM-2
   (código de referência na seção 5.1 do INSTRUCOES).
2. Ao concluir exercícios de flashcard/multiple_choice ligados a vocabulary:
   criar/atualizar review_items com sm2(). Quality: 5 = acertou de primeira,
   3 = acertou após erro, 1 = errou.
3. Crie src/features/review/: tela "Revisão do dia" listando itens com
   next_review_at <= hoje (máx 20), no formato flashcard com autoavaliação
   (botões: Errei / Difícil / Fácil → quality 1/3/5).
4. Registrar erros de qualquer exercício em mistakes.
5. Badge no header com quantidade de revisões pendentes.
```

### Fase 3
```
Leia o CLAUDE.md. Fase 3: IA. REGRA CRÍTICA: a chave da API fica SOMENTE
em secret da Edge Function. Se em algum momento a chave aparecer no front,
pare imediatamente.

1. Crie a Edge Function supabase/functions/ai-proxy com as tasks
   correct_writing, chat e chat_feedback (prompts na seção 5.2 do INSTRUCOES).
   Validar JWT, rate limit de 50 chamadas/dia por usuário (tabela ai_usage),
   respostas em JSON estrito.
2. Crie src/services/aiService.js chamando a function via supabase.functions.invoke.
3. Ative o tipo de exercício 'typing' no LessonPlayer usando correct_writing:
   mostrar frase corrigida, erros explicados em pt-BR e versão natural.
4. Crie src/features/chat/: seleção de cenário (Garçom, Entrevista de emprego,
   Conversa livre), chat em tempo real, botão "Encerrar e receber feedback"
   que chama chat_feedback e salva em conversation_history.
```

### Fase 4
```
Leia o CLAUDE.md. Fase 4: áudio com Web Speech API.

1. Crie src/services/speechService.js:
   - speak(text, {rate}) usando speechSynthesis, voz en-US, com fallback
     e detecção de suporte do browser.
   - listen({lang:'en-US'}) usando SpeechRecognition/webkitSpeechRecognition,
     retornando transcript. Tratar permissão de microfone negada.
2. Ative os tipos 'dictation' e 'listening' no LessonPlayer.
3. Botão de áudio (ouvir palavra e exemplo) nos flashcards e na revisão.
4. Prática de fala simples: exibir frase → usuário fala → comparar transcript
   com o esperado (normalizar caixa/pontuação, distância de Levenshtein
   para % de acerto). Deixar claro no código que score fonético real é Fase 6.
5. Aviso amigável quando o browser não suportar (Firefox tem suporte parcial).
```

### Fase 5
```
Leia o CLAUDE.md. Fase 5: gamificação completa + PWA.

1. Dashboard (src/features/dashboard/): streak, XP, nível, calendário do mês
   com dias estudados, % por habilidade (derivado de user_progress + mistakes
   por mistake_type), meta diária com barra de progresso.
2. Conquistas básicas calculadas de xp_events/streak (ex.: "7 dias seguidos",
   "100 palavras revisadas", "primeira conversa com IA") — pode ser tabela
   simples achievements + user_achievements.
3. PWA: manifest.json, ícones, service worker com cache-first para assets
   e stale-while-revalidate para conteúdo de lições já visitadas.
4. Meta diária configurável no perfil (5/10/20/30 min) com tracking de
   tempo de sessão.
```

---

## 8. Riscos e pontos de atenção

1. **Custo de IA é o único custo real do projeto.** Com rate limit de 50 chamadas/dia/usuário e respostas curtas, um usuário ativo custa centavos/mês. Sem rate limit, o chat de conversação pode explodir a conta. O rate limit da Fase 3 não é opcional.
2. **Web Speech API varia por browser.** Chrome/Edge: completo. Safari: TTS ok, STT limitado. Firefox: parcial. Sempre detectar suporte e degradar com elegância.
3. **Qualidade do conteúdo seed.** Revise manualmente as 10 lições geradas — erro de tradução em app de idiomas destrói credibilidade. Alexandra pode ajudar na revisão.
4. **Não pule o deploy por fase.** O maior risco do prompt original é o escopo: 6 níveis CEFR, 12 tipos de exercício, offline-first, monetização. Se a Fase 1 não estiver divertida de usar, nada do resto importa.
5. **Score de pronúncia:** quando chegar na Fase 6, o caminho é Azure Speech (Pronunciation Assessment), tier F0 gratuito de 5h/mês — único serviço que retorna score por fonema sem custo inicial.

---

## 9. Checklist de início (hoje)

- [ ] Criar repo `englishflow` no GitHub
- [ ] Criar projeto novo no Supabase (separado do FinZen)
- [ ] Copiar o CLAUDE.md da seção 2 para a raiz do repo
- [ ] Copiar este documento para `docs/INSTRUCOES-CLAUDE-CODE-englishflow.md` no repo
- [ ] Rodar o prompt da Fase 0 no Claude Code

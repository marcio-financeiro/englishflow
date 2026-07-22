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
  content jsonb not null   -- estrutura varia por tipo (ver seção 4 do INSTRUCOES)
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

-- ============================================================================
-- EnglishFlow — Teste de Nivelamento entre níveis CEFR
-- Registra tentativas de teste de nivelamento (gate entre A1/A2/B1/...).
-- Aprovação exige 80% de acerto. Sem limite de tentativas.
-- ============================================================================

create table level_tests (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  cefr_level text not null,
  score int not null,
  passed boolean not null,
  created_at timestamptz default now()
);

alter table level_tests enable row level security;

create policy "own level tests" on level_tests for all using (auth.uid() = user_id);

-- 038_pronunciation_attempts.sql
-- Persiste o score de cada tentativa de pronúncia (Azure Pronunciation
-- Assessment) pra alimentar o % real de "Speaking" no Centro de
-- Conhecimento. Insert é feito pela Edge Function pronunciation-proxy com
-- a service role (bypassa RLS); front só lê.

create table pronunciation_attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  accuracy_score int not null,
  created_at timestamptz default now()
);

alter table pronunciation_attempts enable row level security;

create policy "own pronunciation attempts" on pronunciation_attempts
  for select using (auth.uid() = user_id);

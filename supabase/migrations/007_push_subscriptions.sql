-- 007_push_subscriptions.sql
-- Inscrições de push notification (lembrete diário de estudo).

create table push_subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references profiles(id) on delete cascade,
  endpoint text not null unique,
  p256dh text not null,
  auth text not null,
  created_at timestamptz default now()
);

alter table push_subscriptions enable row level security;

-- Usuário só vê/gerencia as próprias inscrições (a function de envio usa
-- service role, que ignora RLS).
create policy "own push subscriptions" on push_subscriptions for all
  using (auth.uid() = user_id);

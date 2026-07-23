-- 004_ai_usage.sql
-- Rate limit diário das chamadas de IA (Fase 3).
-- Cada usuário tem no máximo N chamadas por dia, contadas nesta tabela.

create table ai_usage (
  user_id uuid references profiles(id) on delete cascade,
  day date not null default current_date,
  count int not null default 0,
  primary key (user_id, day)
);

alter table ai_usage enable row level security;

-- Usuário pode ler o próprio uso (a Edge Function grava via service role, que ignora RLS).
create policy "own ai usage" on ai_usage for select using (auth.uid() = user_id);

-- Incrementa o contador do dia de forma atômica, respeitando o limite.
-- Retorna o novo contador, ou -1 se o limite já foi atingido (nada é gravado).
create or replace function consume_ai_usage(p_user_id uuid, p_limit int)
returns int
language plpgsql
security definer
set search_path = public
as $$
declare
  new_count int;
begin
  insert into ai_usage (user_id, day, count)
  values (p_user_id, current_date, 1)
  on conflict (user_id, day)
  do update set count = ai_usage.count + 1
    where ai_usage.count < p_limit
  returning count into new_count;

  -- Se o UPDATE foi bloqueado pelo WHERE, nada retorna → limite atingido.
  return coalesce(new_count, -1);
end;
$$;

-- 010_tts_usage.sql
-- Rate limit diário da leitura em voz (TTS neural via Azure).
-- Separado do ai_usage porque a leitura é usada com muito mais frequência
-- que chat/correção — um limite compartilhado esgotaria rápido o de IA.

create table tts_usage (
  user_id uuid references profiles(id) on delete cascade,
  day date not null default current_date,
  count int not null default 0,
  primary key (user_id, day)
);

alter table tts_usage enable row level security;

create policy "own tts usage" on tts_usage for select using (auth.uid() = user_id);

create or replace function consume_tts_usage(p_user_id uuid, p_limit int)
returns int
language plpgsql
security definer
set search_path = public
as $$
declare
  new_count int;
begin
  insert into tts_usage (user_id, day, count)
  values (p_user_id, current_date, 1)
  on conflict (user_id, day)
  do update set count = tts_usage.count + 1
    where tts_usage.count < p_limit
  returning count into new_count;

  return coalesce(new_count, -1);
end;
$$;

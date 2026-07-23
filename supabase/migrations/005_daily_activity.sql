-- 005_daily_activity.sql
-- Tempo de estudo por dia (Fase 5): alimenta a meta diária e o calendário.

create table daily_activity (
  user_id uuid references profiles(id) on delete cascade,
  day date not null default current_date,
  minutes int not null default 0,
  primary key (user_id, day)
);

alter table daily_activity enable row level security;

create policy "own daily activity" on daily_activity for all using (auth.uid() = user_id);

-- Adiciona minutos ao total do dia do usuário logado (atômico).
create or replace function add_study_minutes(p_minutes int)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into daily_activity (user_id, day, minutes)
  values (auth.uid(), current_date, greatest(p_minutes, 0))
  on conflict (user_id, day)
  do update set minutes = daily_activity.minutes + greatest(p_minutes, 0);
end;
$$;

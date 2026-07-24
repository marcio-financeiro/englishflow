-- 008_onboarding.sql

alter table profiles
  add column if not exists learning_goals text[] not null default '{}',
  add column if not exists target_cefr_level text,
  add column if not exists onboarding_completed boolean not null default false;

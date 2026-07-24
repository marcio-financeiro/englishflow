-- 009_vocabulary_images.sql

alter table vocabulary
  add column if not exists image_url text,
  add column if not exists image_photographer text,
  add column if not exists image_photographer_url text;

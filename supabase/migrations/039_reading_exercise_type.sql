-- 039_reading_exercise_type.sql
-- Libera o tipo 'reading' (compreensão de texto) em exercises.type e
-- adiciona 2 exercícios piloto em lições de revisão A1 já existentes.

alter table exercises drop constraint if exists exercises_type_check;
alter table exercises add constraint exercises_type_check check (type in (
  'flashcard','multiple_choice','fill_blank',
  'word_order','matching','typing','dictation','listening','reading'
));

-- Piloto 1: Lição "Nice to Meet You (Revisão)" — módulo Greetings & Introductions
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000005', 'reading', 9, '{
  "passage": "Hi! My name is Anna. I am from Brazil. This is my friend Maria, and he is my teacher, Mr. Silva. Nice to meet you!",
  "translation": "Oi! Meu nome é Anna. Eu sou do Brasil. Esta é minha amiga Maria, e ele é meu professor, Sr. Silva. Prazer em conhecê-lo!",
  "question": "Who is Anna''s teacher?",
  "options": ["Maria", "Mr. Silva", "Anna"],
  "correct_index": 1
}');

-- Piloto 2: Lição "All About Me (Revisão)" — módulo Numbers, Colors & Family
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000010', 'reading', 9, '{
  "passage": "My family is small. My mother is fifty years old and my father is old too. I have one brother and two sisters. Our favorite color is blue.",
  "translation": "Minha família é pequena. Minha mãe tem cinquenta anos e meu pai também é velho. Eu tenho um irmão e duas irmãs. Nossa cor favorita é azul.",
  "question": "How many sisters does the speaker have?",
  "options": ["One", "Two", "Three"],
  "correct_index": 1
}');

-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 6 "Months & Seasons"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 015_seed_a1_food.sql (vocabulário 301-330,
-- módulo 10000000-...-000011, lições 20000000-...-000051 a 055).
--
-- Nota: dias da semana (Monday..Sunday) já existem no módulo A2 "Daily
-- Routines" (006_seed_a2.sql, vocab 79-85) — este módulo foca em meses,
-- estações e vocabulário de calendário para não duplicar.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000301', 'January', 'ˈdʒænjueri', 'noun', 'janeiro', 'The school year starts in January.', 'O ano letivo começa em janeiro.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000302', 'February', 'ˈfebrueri', 'noun', 'fevereiro', 'My birthday is in February.', 'Meu aniversário é em fevereiro.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000303', 'March', 'mɑːrtʃ', 'noun', 'março', 'Which month comes after February? March.', 'Qual mês vem depois de fevereiro? Março.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000304', 'April', 'ˈeɪprəl', 'noun', 'abril', 'It rains a lot in April.', 'Chove muito em abril.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000305', 'May', 'meɪ', 'noun', 'maio', 'My birthday is in May.', 'Meu aniversário é em maio.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000306', 'June', 'dʒuːn', 'noun', 'junho', 'Summer starts in June here.', 'O verão começa em junho aqui.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000307', 'July', 'dʒʊˈlaɪ', 'noun', 'julho', 'My vacation is in July.', 'Minhas férias são em julho.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000308', 'August', 'ˈɔːɡəst', 'noun', 'agosto', 'My vacation is in August.', 'Minhas férias são em agosto.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000309', 'September', 'sepˈtembər', 'noun', 'setembro', 'School starts again in September.', 'A escola começa de novo em setembro.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000310', 'October', 'ɒkˈtoʊbər', 'noun', 'outubro', 'The weather is nice in October.', 'O tempo está bom em outubro.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000311', 'November', 'noʊˈvembər', 'noun', 'novembro', 'I was born in November.', 'Eu nasci em novembro.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000312', 'December', 'dɪˈsembər', 'noun', 'dezembro', 'December is the last month of the year.', 'Dezembro é o último mês do ano.', 'A1', array['months']),
('30000000-0000-0000-0000-000000000313', 'month', 'mʌnθ', 'noun', 'mês', 'A year has twelve months.', 'Um ano tem doze meses.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000314', 'year', 'jɪər', 'noun', 'ano', 'This year is very good.', 'Este ano está muito bom.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000315', 'season', 'ˈsiːzən', 'noun', 'estação (do ano)', 'What is your favorite season?', 'Qual é a sua estação favorita?', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000316', 'spring', 'sprɪŋ', 'noun', 'primavera', 'Flowers grow in the spring.', 'As flores crescem na primavera.', 'A1', array['seasons']),
('30000000-0000-0000-0000-000000000317', 'summer', 'ˈsʌmər', 'noun', 'verão', 'My favorite season is summer.', 'Minha estação favorita é o verão.', 'A1', array['seasons']),
('30000000-0000-0000-0000-000000000318', 'winter', 'ˈwɪntər', 'noun', 'inverno', 'It''s very cold in the winter.', 'Está muito frio no inverno.', 'A1', array['seasons']),
('30000000-0000-0000-0000-000000000319', 'fall', 'fɔːl', 'noun', 'outono', 'Leaves fall from the trees in the fall.', 'As folhas caem das árvores no outono.', 'A1', array['seasons']),
('30000000-0000-0000-0000-000000000320', 'birthday', 'ˈbɜːrθdeɪ', 'noun', 'aniversário (pessoa)', 'Happy birthday!', 'Feliz aniversário!', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000321', 'holiday', 'ˈhɒlədeɪ', 'noun', 'feriado', 'Today is a national holiday.', 'Hoje é feriado nacional.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000322', 'calendar', 'ˈkæləndər', 'noun', 'calendário', 'I check my calendar every week.', 'Eu confiro meu calendário toda semana.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000323', 'date', 'deɪt', 'noun', 'data', 'What''s the date today?', 'Qual é a data de hoje?', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000324', 'week', 'wiːk', 'noun', 'semana', 'There are seven days in a week.', 'Há sete dias em uma semana.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000325', 'first', 'fɜːrst', 'adjective', 'primeiro(a)', 'This is the first day of my new job.', 'Este é o primeiro dia do meu novo emprego.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000326', 'last', 'læst', 'adjective', 'último(a)', 'December is the last month.', 'Dezembro é o último mês.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000327', 'next', 'nekst', 'adjective', 'próximo(a)', 'My vacation is next month.', 'Minhas férias são no mês que vem.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000328', 'during', 'ˈdʊrɪŋ', 'preposition', 'durante', 'We visit our grandparents during the holidays.', 'Nós visitamos nossos avós durante os feriados.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000329', 'anniversary', 'ˌænɪˈvɜːrsəri', 'noun', 'aniversário (casamento/evento)', 'We celebrate our wedding anniversary every year.', 'Nós celebramos nosso aniversário de casamento todo ano.', 'A1', array['calendar']),
('30000000-0000-0000-0000-000000000330', 'schedule', 'ˈskedʒuːl', 'noun', 'agenda / horário', 'What''s your schedule this week?', 'Qual é a sua agenda esta semana?', 'A1', array['calendar']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000011', 'A1', 'Months & Seasons', 'Meses do ano, estações e vocabulário de calendário (datas, feriados, aniversários).', 6, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000051', '10000000-0000-0000-0000-000000000011', 'January to June', 1, 10),
('20000000-0000-0000-0000-000000000052', '10000000-0000-0000-0000-000000000011', 'July to December', 2, 10),
('20000000-0000-0000-0000-000000000053', '10000000-0000-0000-0000-000000000011', 'Seasons', 3, 10),
('20000000-0000-0000-0000-000000000054', '10000000-0000-0000-0000-000000000011', 'My Calendar', 4, 10),
('20000000-0000-0000-0000-000000000055', '10000000-0000-0000-0000-000000000011', 'Special Days (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 6.1: January to June ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000051', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000301"}'),
('20000000-0000-0000-0000-000000000051', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000306"}'),
('20000000-0000-0000-0000-000000000051', 'multiple_choice', 3, '{"question": "Which month comes after February?", "audio_text": null, "options": ["March", "April", "January"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000051', 'fill_blank', 4, '{"sentence": "The school year starts in ___.", "options": ["January", "July", "October"], "correct": "January", "translation": "O ano letivo começa em janeiro."}'),
('20000000-0000-0000-0000-000000000051', 'matching', 5, '{"pairs": [{"left": "January", "right": "janeiro"}, {"left": "February", "right": "fevereiro"}, {"left": "March", "right": "março"}, {"left": "April", "right": "abril"}]}'),
('20000000-0000-0000-0000-000000000051', 'word_order', 6, '{"words": ["is", "May", "birthday", "My", "in"], "correct_sentence": "My birthday is in May", "translation": "Meu aniversário é em maio"}'),
('20000000-0000-0000-0000-000000000051', 'listening', 7, '{"audio_text": "Summer starts in June here.", "question": "When does summer start?", "options": ["June", "December", "March"], "correct_index": 0}');

-- ---------- Lição 6.2: July to December ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000052', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000307"}'),
('20000000-0000-0000-0000-000000000052', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000312"}'),
('20000000-0000-0000-0000-000000000052', 'multiple_choice', 3, '{"question": "Complete: Christmas is in ___.", "audio_text": null, "options": ["December", "July", "October"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000052', 'fill_blank', 4, '{"sentence": "___ is the last month of the year.", "options": ["December", "January", "November"], "correct": "December", "translation": "Dezembro é o último mês do ano."}'),
('20000000-0000-0000-0000-000000000052', 'matching', 5, '{"pairs": [{"left": "July", "right": "julho"}, {"left": "August", "right": "agosto"}, {"left": "September", "right": "setembro"}, {"left": "October", "right": "outubro"}]}'),
('20000000-0000-0000-0000-000000000052', 'word_order', 6, '{"words": ["November", "in", "was", "born", "I"], "correct_sentence": "I was born in November", "translation": "Eu nasci em novembro"}'),
('20000000-0000-0000-0000-000000000052', 'dictation', 7, '{"audio_text": "My vacation is in August.", "expected": "My vacation is in August."}');

-- ---------- Lição 6.3: Seasons ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000053', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000316"}'),
('20000000-0000-0000-0000-000000000053', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000318"}'),
('20000000-0000-0000-0000-000000000053', 'multiple_choice', 3, '{"question": "Complete: It''s very cold in the ___.", "audio_text": null, "options": ["winter", "summer", "spring"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000053', 'fill_blank', 4, '{"sentence": "Flowers grow in the ___.", "options": ["spring", "winter", "fall"], "correct": "spring", "translation": "As flores crescem na primavera."}'),
('20000000-0000-0000-0000-000000000053', 'matching', 5, '{"pairs": [{"left": "spring", "right": "primavera"}, {"left": "summer", "right": "verão"}, {"left": "winter", "right": "inverno"}, {"left": "fall", "right": "outono"}]}'),
('20000000-0000-0000-0000-000000000053', 'word_order', 6, '{"words": ["favorite", "is", "season", "summer", "My"], "correct_sentence": "My favorite season is summer", "translation": "Minha estação favorita é o verão"}'),
('20000000-0000-0000-0000-000000000053', 'listening', 7, '{"audio_text": "Leaves fall from the trees in the fall.", "question": "What season is being described?", "options": ["spring", "fall", "winter"], "correct_index": 1}');

-- ---------- Lição 6.4: My Calendar ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000054', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000322"}'),
('20000000-0000-0000-0000-000000000054', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000324"}'),
('20000000-0000-0000-0000-000000000054', 'multiple_choice', 3, '{"question": "Complete: There are seven days in a ___.", "audio_text": null, "options": ["week", "month", "year"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000054', 'fill_blank', 4, '{"sentence": "What''s the ___ today?", "options": ["date", "week", "calendar"], "correct": "date", "translation": "Qual é a data de hoje?"}'),
('20000000-0000-0000-0000-000000000054', 'matching', 5, '{"pairs": [{"left": "month", "right": "mês"}, {"left": "year", "right": "ano"}, {"left": "week", "right": "semana"}, {"left": "calendar", "right": "calendário"}]}'),
('20000000-0000-0000-0000-000000000054', 'word_order', 6, '{"words": ["has", "twelve", "A", "months", "year"], "correct_sentence": "A year has twelve months", "translation": "Um ano tem doze meses"}'),
('20000000-0000-0000-0000-000000000054', 'listening', 7, '{"audio_text": "I check my calendar every week to see my schedule.", "question": "What does the speaker check?", "options": ["calendar", "phone", "email"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000054', 'typing', 8, '{"prompt_pt": "Traduza: ''Qual é o seu horário esta semana?''", "expected": "What''s your schedule this week?", "ai_review": true}');

-- ---------- Lição 6.5: Special Days (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000055', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000320"}'),
('20000000-0000-0000-0000-000000000055', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000321"}'),
('20000000-0000-0000-0000-000000000055', 'multiple_choice', 3, '{"question": "Complete: Today is a national ___. Schools are closed.", "audio_text": null, "options": ["holiday", "birthday", "anniversary"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000055', 'matching', 4, '{"pairs": [{"left": "birthday", "right": "aniversário (pessoa)"}, {"left": "holiday", "right": "feriado"}, {"left": "anniversary", "right": "aniversário (evento)"}, {"left": "first", "right": "primeiro"}]}'),
('20000000-0000-0000-0000-000000000055', 'fill_blank', 5, '{"sentence": "We celebrate our wedding ___ every year.", "options": ["anniversary", "birthday", "holiday"], "correct": "anniversary", "translation": "Nós celebramos nosso aniversário de casamento todo ano."}'),
('20000000-0000-0000-0000-000000000055', 'word_order', 6, '{"words": ["month", "vacation", "next", "is", "My"], "correct_sentence": "My vacation is next month", "translation": "Minhas férias são no mês que vem"}'),
('20000000-0000-0000-0000-000000000055', 'listening', 7, '{"audio_text": "During the holidays, we visit our grandparents.", "question": "When do they visit their grandparents?", "options": ["during work", "during the holidays", "during school"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000055', 'typing', 8, '{"prompt_pt": "Traduza: ''Este é o primeiro dia do meu novo emprego.''", "expected": "This is the first day of my new job.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

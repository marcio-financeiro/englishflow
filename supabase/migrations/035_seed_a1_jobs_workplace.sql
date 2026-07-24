-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 15 "Jobs & Workplace"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 033_seed_a1_transportation.sql (vocabulário
-- 841-870, módulo 10000000-...-000029, lições 20000000-...-000141 a 145).
-- Ultimo modulo do A1 — completa os 15 modulos-alvo do nivel.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000841', 'job', 'dʒɒb', 'noun', 'emprego / trabalho', 'I like my job.', 'Eu gosto do meu emprego.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000842', 'work', 'wɜːrk', 'noun', 'trabalho', 'I go to work at eight.', 'Eu vou ao trabalho às oito.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000843', 'to work', 'tuː wɜːrk', 'verb', 'trabalhar', 'She works at a hospital.', 'Ela trabalha em um hospital.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000844', 'office', 'ˈɒfɪs', 'noun', 'escritório', 'My office is downtown.', 'Meu escritório é no centro.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000845', 'boss', 'bɒs', 'noun', 'chefe', 'My boss is very kind.', 'Meu chefe é muito gentil.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000846', 'coworker', 'ˈkoʊwɜːrkər', 'noun', 'colega de trabalho', 'My coworker helped me today.', 'Meu colega de trabalho me ajudou hoje.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000847', 'employee', 'ɪmˈplɔɪiː', 'noun', 'funcionário', 'This company has fifty employees.', 'Essa empresa tem cinquenta funcionários.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000848', 'company', 'ˈkʌmpəni', 'noun', 'empresa', 'I work for a small company.', 'Eu trabalho para uma empresa pequena.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000849', 'salary', 'ˈsæləri', 'noun', 'salário', 'My salary is good.', 'Meu salário é bom.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000850', 'meeting', 'ˈmiːtɪŋ', 'noun', 'reunião', 'I have a meeting at ten.', 'Eu tenho uma reunião às dez.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000851', 'schedule (work)', 'ˈskedʒuːl', 'noun', 'agenda / horário de trabalho', 'My schedule is very busy this week.', 'Minha agenda está muito cheia essa semana.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000852', 'to start work', 'tuː stɑːrt wɜːrk', 'verb', 'começar a trabalhar', 'I start work at nine.', 'Eu começo a trabalhar às nove.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000853', 'to finish work', 'tuː ˈfɪnɪʃ wɜːrk', 'verb', 'terminar o trabalho', 'I finish work at six.', 'Eu termino o trabalho às seis.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000854', 'day off', 'deɪ ɒf', 'noun', 'folga', 'I have a day off tomorrow.', 'Eu tenho uma folga amanhã.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000855', 'vacation', 'veɪˈkeɪʃn', 'noun', 'férias', 'We are on vacation next week.', 'Nós estamos de férias na próxima semana.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000856', 'to hire', 'tuː ˈhaɪər', 'verb', 'contratar', 'The company hired ten new people.', 'A empresa contratou dez pessoas novas.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000857', 'to quit', 'tuː kwɪt', 'verb', 'pedir demissão / largar (o emprego)', 'She quit her job last month.', 'Ela pediu demissão do emprego mês passado.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000858', 'to fire', 'tuː ˈfaɪər', 'verb', 'demitir', 'They fired him for being late.', 'Eles o demitiram por chegar atrasado.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000859', 'interview', 'ˈɪntərvjuː', 'noun', 'entrevista (de emprego)', 'I have a job interview tomorrow.', 'Eu tenho uma entrevista de emprego amanhã.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000860', 'resume', 'ˈrezəmeɪ', 'noun', 'currículo', 'I sent my resume yesterday.', 'Eu enviei meu currículo ontem.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000861', 'career', 'kəˈrɪər', 'noun', 'carreira', 'She has a great career in medicine.', 'Ela tem uma ótima carreira na medicina.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000862', 'teacher', 'ˈtiːtʃər', 'noun', 'professor(a)', 'My sister is a teacher.', 'Minha irmã é professora.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000863', 'engineer', 'ˌendʒɪˈnɪər', 'noun', 'engenheiro(a)', 'He is an engineer.', 'Ele é engenheiro.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000864', 'nurse (job)', 'nɜːrs', 'noun', 'enfermeiro(a)', 'My cousin is a nurse.', 'Minha prima é enfermeira.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000865', 'to work from home', 'tuː wɜːrk frɒm hoʊm', 'verb', 'trabalhar de casa', 'I work from home on Fridays.', 'Eu trabalho de casa nas sextas-feiras.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000866', 'to work overtime', 'tuː wɜːrk ˈoʊvərtaɪm', 'verb', 'fazer hora extra', 'I worked overtime last week.', 'Eu fiz hora extra semana passada.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000867', 'busy (work)', 'ˈbɪzi', 'adjective', 'ocupado (trabalho)', 'This week is very busy at work.', 'Essa semana está muito ocupada no trabalho.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000868', 'deadline', 'ˈdedlaɪn', 'noun', 'prazo', 'The deadline is Friday.', 'O prazo é sexta-feira.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000869', 'task', 'tæsk', 'noun', 'tarefa', 'I have three tasks today.', 'Eu tenho três tarefas hoje.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000870', 'to retire', 'tuː rɪˈtaɪər', 'verb', 'se aposentar', 'My father retired last year.', 'Meu pai se aposentou ano passado.', 'A1', array['jobs']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000029', 'A1', 'Jobs & Workplace', 'Profissões, escritório, entrevistas e rotina de trabalho.', 15, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000141', '10000000-0000-0000-0000-000000000029', 'At the Office', 1, 10),
('20000000-0000-0000-0000-000000000142', '10000000-0000-0000-0000-000000000029', 'My Work Schedule', 2, 10),
('20000000-0000-0000-0000-000000000143', '10000000-0000-0000-0000-000000000029', 'Getting a Job', 3, 10),
('20000000-0000-0000-0000-000000000144', '10000000-0000-0000-0000-000000000029', 'Professions', 4, 10),
('20000000-0000-0000-0000-000000000145', '10000000-0000-0000-0000-000000000029', 'Busy Week (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 15.1: At the Office ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000141', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000844"}'),
('20000000-0000-0000-0000-000000000141', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000845"}'),
('20000000-0000-0000-0000-000000000141', 'multiple_choice', 3, '{"question": "Complete: My ___ is very kind.", "audio_text": null, "options": ["boss", "coworker", "employee"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000141', 'fill_blank', 4, '{"sentence": "My ___ is downtown.", "options": ["office", "company", "salary"], "correct": "office", "translation": "Meu escritório é no centro."}'),
('20000000-0000-0000-0000-000000000141', 'matching', 5, '{"pairs": [{"left": "office", "right": "escritório"}, {"left": "boss", "right": "chefe"}, {"left": "coworker", "right": "colega de trabalho"}, {"left": "company", "right": "empresa"}]}'),
('20000000-0000-0000-0000-000000000141', 'word_order', 6, '{"words": ["today", "me", "helped", "coworker", "My"], "correct_sentence": "My coworker helped me today", "translation": "Meu colega de trabalho me ajudou hoje"}'),
('20000000-0000-0000-0000-000000000141', 'listening', 7, '{"audio_text": "This company has fifty employees, and my boss is very kind.", "question": "How many employees does the company have?", "options": ["fifty", "fifteen", "five"], "correct_index": 0}');

-- ---------- Lição 15.2: My Work Schedule ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000142', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000852"}'),
('20000000-0000-0000-0000-000000000142', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000853"}'),
('20000000-0000-0000-0000-000000000142', 'multiple_choice', 3, '{"question": "Complete: I ___ at nine.", "audio_text": null, "options": ["start work", "finish work", "quit"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000142', 'fill_blank', 4, '{"sentence": "I have a ___ tomorrow.", "options": ["day off", "deadline", "interview"], "correct": "day off", "translation": "Eu tenho uma folga amanhã."}'),
('20000000-0000-0000-0000-000000000142', 'matching', 5, '{"pairs": [{"left": "to start work", "right": "começar a trabalhar"}, {"left": "to finish work", "right": "terminar o trabalho"}, {"left": "day off", "right": "folga"}, {"left": "vacation", "right": "férias"}]}'),
('20000000-0000-0000-0000-000000000142', 'word_order', 6, '{"words": ["six", "at", "work", "I", "finish"], "correct_sentence": "I finish work at six", "translation": "Eu termino o trabalho às seis"}'),
('20000000-0000-0000-0000-000000000142', 'dictation', 7, '{"audio_text": "I start work at nine, and we are on vacation next week.", "expected": "I start work at nine, and we are on vacation next week."}');

-- ---------- Lição 15.3: Getting a Job ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000143', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000859"}'),
('20000000-0000-0000-0000-000000000143', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000860"}'),
('20000000-0000-0000-0000-000000000143', 'multiple_choice', 3, '{"question": "Complete: I have a job ___ tomorrow.", "audio_text": null, "options": ["interview", "resume", "career"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000143', 'fill_blank', 4, '{"sentence": "The company ___ ten new people.", "options": ["hired", "fired", "quit"], "correct": "hired", "translation": "A empresa contratou dez pessoas novas."}'),
('20000000-0000-0000-0000-000000000143', 'matching', 5, '{"pairs": [{"left": "interview", "right": "entrevista"}, {"left": "resume", "right": "currículo"}, {"left": "to hire", "right": "contratar"}, {"left": "to quit", "right": "pedir demissão"}]}'),
('20000000-0000-0000-0000-000000000143', 'word_order', 6, '{"words": ["yesterday", "resume", "sent", "my", "I"], "correct_sentence": "I sent my resume yesterday", "translation": "Eu enviei meu currículo ontem"}'),
('20000000-0000-0000-0000-000000000143', 'listening', 7, '{"audio_text": "She quit her job last month, and now she has a great career in medicine.", "question": "What did she do last month?", "options": ["quit her job", "got hired", "had an interview"], "correct_index": 0}');

-- ---------- Lição 15.4: Professions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000144', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000862"}'),
('20000000-0000-0000-0000-000000000144', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000863"}'),
('20000000-0000-0000-0000-000000000144', 'multiple_choice', 3, '{"question": "Complete: My sister is a ___.", "audio_text": null, "options": ["teacher", "office", "salary"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000144', 'fill_blank', 4, '{"sentence": "My cousin is a ___.", "options": ["nurse", "engineer", "boss"], "correct": "nurse", "translation": "Minha prima é enfermeira."}'),
('20000000-0000-0000-0000-000000000144', 'matching', 5, '{"pairs": [{"left": "teacher", "right": "professor(a)"}, {"left": "engineer", "right": "engenheiro(a)"}, {"left": "nurse (job)", "right": "enfermeiro(a)"}, {"left": "employee", "right": "funcionário"}]}'),
('20000000-0000-0000-0000-000000000144', 'word_order', 6, '{"words": ["an", "He", "is", "engineer"], "correct_sentence": "He is an engineer", "translation": "Ele é engenheiro"}'),
('20000000-0000-0000-0000-000000000144', 'typing', 7, '{"prompt_pt": "Traduza: ''Meu pai se aposentou ano passado.''", "expected": "My father retired last year.", "ai_review": true}');

-- ---------- Lição 15.5: Busy Week (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000145', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000867"}'),
('20000000-0000-0000-0000-000000000145', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000868"}'),
('20000000-0000-0000-0000-000000000145', 'multiple_choice', 3, '{"question": "Complete: This week is very ___ at work.", "audio_text": null, "options": ["busy", "vacation", "retired"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000145', 'fill_blank', 4, '{"sentence": "The ___ is Friday.", "options": ["deadline", "salary", "career"], "correct": "deadline", "translation": "O prazo é sexta-feira."}'),
('20000000-0000-0000-0000-000000000145', 'matching', 5, '{"pairs": [{"left": "deadline", "right": "prazo"}, {"left": "task", "right": "tarefa"}, {"left": "to work overtime", "right": "fazer hora extra"}, {"left": "to work from home", "right": "trabalhar de casa"}]}'),
('20000000-0000-0000-0000-000000000145', 'word_order', 6, '{"words": ["today", "three", "have", "tasks", "I"], "correct_sentence": "I have three tasks today", "translation": "Eu tenho três tarefas hoje"}'),
('20000000-0000-0000-0000-000000000145', 'listening', 7, '{"audio_text": "I worked overtime last week, and now I work from home on Fridays.", "question": "What does the speaker do on Fridays?", "options": ["works from home", "works overtime", "takes a day off"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000145', 'typing', 8, '{"prompt_pt": "Traduza: ''Meu salário é bom.''", "expected": "My salary is good.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- A1 completa 15/15 modulos-alvo.
-- ============================================================================

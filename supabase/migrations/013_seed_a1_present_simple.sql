-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 4 "Present Simple"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 011_seed_a1_verb_to_be.sql (vocabulário 181-210,
-- módulo 10000000-...-000007, lições 20000000-...-000031 a 035).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000181', 'to like', 'tuː laɪk', 'verb', 'gostar', 'I like pizza.', 'Eu gosto de pizza.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000182', 'to live', 'tuː lɪv', 'verb', 'morar / viver', 'She lives in Rio.', 'Ela mora no Rio.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000183', 'to work', 'tuː wɜːrk', 'verb', 'trabalhar', 'He works in a bank.', 'Ele trabalha em um banco.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000184', 'to study', 'tuː ˈstʌdi', 'verb', 'estudar', 'They study English.', 'Eles estudam inglês.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000185', 'to play', 'tuː pleɪ', 'verb', 'jogar / tocar', 'We play soccer.', 'Nós jogamos futebol.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000186', 'to watch', 'tuː wɒtʃ', 'verb', 'assistir', 'I watch TV at night.', 'Eu assisto TV à noite.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000187', 'to eat', 'tuː iːt', 'verb', 'comer', 'She eats breakfast at seven.', 'Ela toma café da manhã às sete.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000188', 'to drink', 'tuː drɪŋk', 'verb', 'beber', 'He drinks coffee every morning.', 'Ele bebe café toda manhã.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000189', 'to speak', 'tuː spiːk', 'verb', 'falar (idioma)', 'They speak Portuguese.', 'Eles falam português.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000190', 'to read', 'tuː riːd', 'verb', 'ler', 'I read books.', 'Eu leio livros.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000191', 'to write', 'tuː raɪt', 'verb', 'escrever', 'She writes emails.', 'Ela escreve e-mails.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000192', 'to walk', 'tuː wɔːk', 'verb', 'andar / caminhar', 'He walks to school.', 'Ele vai andando para a escola.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000193', 'to drive', 'tuː draɪv', 'verb', 'dirigir', 'She drives to work.', 'Ela dirige para o trabalho.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000194', 'to cook', 'tuː kʊk', 'verb', 'cozinhar', 'My mother cooks dinner.', 'Minha mãe cozinha o jantar.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000195', 'to sleep', 'tuː sliːp', 'verb', 'dormir', 'The baby sleeps a lot.', 'O bebê dorme muito.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000196', 'to swim', 'tuː swɪm', 'verb', 'nadar', 'He swims every day.', 'Ele nada todo dia.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000197', 'to run', 'tuː rʌn', 'verb', 'correr', 'She runs in the park.', 'Ela corre no parque.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000198', 'to listen', 'tuː ˈlɪsən', 'verb', 'ouvir / escutar', 'I listen to music.', 'Eu escuto música.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000199', 'to sing', 'tuː sɪŋ', 'verb', 'cantar', 'They sing well.', 'Eles cantam bem.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000200', 'to dance', 'tuː dæns', 'verb', 'dançar', 'We dance on weekends.', 'Nós dançamos nos fins de semana.', 'A1', array['present-simple']),
('30000000-0000-0000-0000-000000000201', 'does', 'dʌz', 'auxiliary verb', 'auxiliar (ele/ela, perguntas)', 'Does she like coffee?', 'Ela gosta de café?', 'A1', array['grammar','present-simple']),
('30000000-0000-0000-0000-000000000202', 'do', 'duː', 'auxiliary verb', 'auxiliar (perguntas)', 'Do you like pizza?', 'Você gosta de pizza?', 'A1', array['grammar','present-simple']),
('30000000-0000-0000-0000-000000000203', 'doesn''t', 'ˈdʌzənt', 'contraction', 'não (ele/ela, negativa)', 'He doesn''t like tea.', 'Ele não gosta de chá.', 'A1', array['grammar','present-simple']),
('30000000-0000-0000-0000-000000000204', 'don''t', 'doʊnt', 'contraction', 'não (negativa)', 'I don''t like tea.', 'Eu não gosto de chá.', 'A1', array['grammar','present-simple']),
('30000000-0000-0000-0000-000000000205', 'house', 'haʊs', 'noun', 'casa', 'They live in a house.', 'Eles moram em uma casa.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000206', 'apartment', 'əˈpɑːrtmənt', 'noun', 'apartamento', 'I live in an apartment.', 'Eu moro em um apartamento.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000207', 'city', 'ˈsɪti', 'noun', 'cidade', 'She lives in a big city.', 'Ela mora em uma cidade grande.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000208', 'soccer', 'ˈsɒkər', 'noun', 'futebol', 'We play soccer on Saturdays.', 'Nós jogamos futebol aos sábados.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000209', 'music', 'ˈmjuːzɪk', 'noun', 'música', 'I listen to music every day.', 'Eu escuto música todo dia.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000210', 'book', 'bʊk', 'noun', 'livro', 'He reads a book every week.', 'Ele lê um livro toda semana.', 'A1', array['hobbies']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000007', 'A1', 'Present Simple', 'Fale sobre hábitos e fatos com verbos regulares, e faça perguntas com do/does.', 4, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000031', '10000000-0000-0000-0000-000000000007', 'I Like, You Like', 1, 10),
('20000000-0000-0000-0000-000000000032', '10000000-0000-0000-0000-000000000007', 'He Likes, She Likes', 2, 10),
('20000000-0000-0000-0000-000000000033', '10000000-0000-0000-0000-000000000007', 'Do You Like...?', 3, 10),
('20000000-0000-0000-0000-000000000034', '10000000-0000-0000-0000-000000000007', 'Does He Like...?', 4, 10),
('20000000-0000-0000-0000-000000000035', '10000000-0000-0000-0000-000000000007', 'I Don''t Like... (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 4.1: I Like, You Like ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000031', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000181"}'),
('20000000-0000-0000-0000-000000000031', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000185"}'),
('20000000-0000-0000-0000-000000000031', 'multiple_choice', 3, '{"question": "Complete: I ___ pizza.", "audio_text": null, "options": ["like", "likes", "liking"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000031', 'fill_blank', 4, '{"sentence": "We ___ soccer on Saturdays.", "options": ["play", "plays", "played"], "correct": "play", "translation": "Nós jogamos futebol aos sábados."}'),
('20000000-0000-0000-0000-000000000031', 'matching', 5, '{"pairs": [{"left": "like", "right": "gostar"}, {"left": "play", "right": "jogar/tocar"}, {"left": "soccer", "right": "futebol"}, {"left": "music", "right": "música"}]}'),
('20000000-0000-0000-0000-000000000031', 'word_order', 6, '{"words": ["music", "like", "I"], "correct_sentence": "I like music", "translation": "Eu gosto de música"}'),
('20000000-0000-0000-0000-000000000031', 'listening', 7, '{"audio_text": "They play soccer every weekend.", "question": "What do they play?", "options": ["soccer", "music", "basketball"], "correct_index": 0}');

-- ---------- Lição 4.2: He Likes, She Likes ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000032', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000182"}'),
('20000000-0000-0000-0000-000000000032', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000183"}'),
('20000000-0000-0000-0000-000000000032', 'multiple_choice', 3, '{"question": "Complete: She ___ in a big city.", "audio_text": null, "options": ["lives", "live", "living"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000032', 'fill_blank', 4, '{"sentence": "He ___ in a bank.", "options": ["works", "work", "working"], "correct": "works", "translation": "Ele trabalha em um banco."}'),
('20000000-0000-0000-0000-000000000032', 'matching', 5, '{"pairs": [{"left": "live", "right": "morar"}, {"left": "work", "right": "trabalhar"}, {"left": "apartment", "right": "apartamento"}, {"left": "city", "right": "cidade"}]}'),
('20000000-0000-0000-0000-000000000032', 'word_order', 6, '{"words": ["in", "lives", "She", "apartment", "an"], "correct_sentence": "She lives in an apartment", "translation": "Ela mora em um apartamento"}'),
('20000000-0000-0000-0000-000000000032', 'dictation', 7, '{"audio_text": "He works in a big city.", "expected": "He works in a big city."}');

-- ---------- Lição 4.3: Do You Like...? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000033', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000202"}'),
('20000000-0000-0000-0000-000000000033', 'multiple_choice', 2, '{"question": "___ you like coffee?", "audio_text": null, "options": ["Do", "Does", "Are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000033', 'fill_blank', 3, '{"sentence": "___ they eat breakfast every day?", "options": ["Do", "Does", "Is"], "correct": "Do", "translation": "Eles tomam café da manhã todo dia?"}'),
('20000000-0000-0000-0000-000000000033', 'matching', 4, '{"pairs": [{"left": "eat", "right": "comer"}, {"left": "drink", "right": "beber"}, {"left": "book", "right": "livro"}, {"left": "house", "right": "casa"}]}'),
('20000000-0000-0000-0000-000000000033', 'word_order', 5, '{"words": ["you", "coffee", "Do", "like"], "correct_sentence": "Do you like coffee", "translation": "Você gosta de café?"}'),
('20000000-0000-0000-0000-000000000033', 'listening', 6, '{"audio_text": "Do you read books? Yes, I read every night.", "question": "Does the speaker read books?", "options": ["Yes", "No", "Sometimes"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000033', 'typing', 7, '{"prompt_pt": "Traduza: ''Você gosta de música?''", "expected": "Do you like music?", "ai_review": true}');

-- ---------- Lição 4.4: Does He Like...? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000034', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000201"}'),
('20000000-0000-0000-0000-000000000034', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000190"}'),
('20000000-0000-0000-0000-000000000034', 'multiple_choice', 3, '{"question": "___ she speak English?", "audio_text": null, "options": ["Does", "Do", "Is"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000034', 'fill_blank', 4, '{"sentence": "___ he read books?", "options": ["Does", "Do", "Is"], "correct": "Does", "translation": "Ele lê livros?"}'),
('20000000-0000-0000-0000-000000000034', 'matching', 5, '{"pairs": [{"left": "speak", "right": "falar"}, {"left": "read", "right": "ler"}, {"left": "write", "right": "escrever"}, {"left": "does", "right": "auxiliar (ele/ela)"}]}'),
('20000000-0000-0000-0000-000000000034', 'word_order', 6, '{"words": ["Portuguese", "she", "speak", "Does"], "correct_sentence": "Does she speak Portuguese", "translation": "Ela fala português?"}'),
('20000000-0000-0000-0000-000000000034', 'dictation', 7, '{"audio_text": "Does he write emails every day?", "expected": "Does he write emails every day?"}');

-- ---------- Lição 4.5: I Don't Like... (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000035', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000203"}'),
('20000000-0000-0000-0000-000000000035', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000204"}'),
('20000000-0000-0000-0000-000000000035', 'multiple_choice', 3, '{"question": "Complete: I ___ like tea.", "audio_text": null, "options": ["don''t", "doesn''t", "isn''t"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000035', 'matching', 4, '{"pairs": [{"left": "don''t", "right": "não (eu/você/nós/eles)"}, {"left": "doesn''t", "right": "não (ele/ela)"}, {"left": "sleep", "right": "dormir"}, {"left": "run", "right": "correr"}]}'),
('20000000-0000-0000-0000-000000000035', 'fill_blank', 5, '{"sentence": "She ___ like fish.", "options": ["doesn''t", "don''t", "isn''t"], "correct": "doesn''t", "translation": "Ela não gosta de peixe."}'),
('20000000-0000-0000-0000-000000000035', 'word_order', 6, '{"words": ["like", "don''t", "I", "tea"], "correct_sentence": "I don''t like tea", "translation": "Eu não gosto de chá"}'),
('20000000-0000-0000-0000-000000000035', 'listening', 7, '{"audio_text": "He doesn''t like soccer, but he likes music.", "question": "What does he like?", "options": ["soccer", "music", "both"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000035', 'typing', 8, '{"prompt_pt": "Traduza: ''Ela não trabalha aos domingos.''", "expected": "She doesn''t work on Sundays.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

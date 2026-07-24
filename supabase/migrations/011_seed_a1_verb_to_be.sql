-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 3 "Verb to Be"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 002_seed_a1.sql (vocabulário 121-150,
-- módulo 10000000-...-000005, lições 20000000-...-000021 a 025).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000121', 'it', 'ɪt', 'pronoun', 'ele/ela (objeto/animal)', 'It is a cat.', 'É um gato.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000122', 'I''m', 'aɪm', 'contraction', 'eu sou/estou (contração)', 'I''m happy today.', 'Eu estou feliz hoje.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000123', 'you''re', 'jʊər', 'contraction', 'você é/está (contração)', 'You''re my best friend.', 'Você é meu melhor amigo.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000124', 'he''s', 'hiːz', 'contraction', 'ele é/está (contração)', 'He''s a doctor.', 'Ele é médico.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000125', 'she''s', 'ʃiːz', 'contraction', 'ela é/está (contração)', 'She''s from Portugal.', 'Ela é de Portugal.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000126', 'it''s', 'ɪts', 'contraction', 'é/está (contração)', 'It''s a nice day.', 'É um dia bonito.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000127', 'we''re', 'wɪər', 'contraction', 'nós somos/estamos (contração)', 'We''re from Brazil.', 'Nós somos do Brasil.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000128', 'they''re', 'ðeər', 'contraction', 'eles/elas são/estão (contração)', 'They''re students.', 'Eles são estudantes.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000129', 'isn''t', 'ˈɪzənt', 'contraction', 'não é/está (ele/ela)', 'He isn''t tired.', 'Ele não está cansado.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000130', 'aren''t', 'ɑːrnt', 'contraction', 'não são/estão', 'They aren''t late.', 'Eles não estão atrasados.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000131', 'happy', 'ˈhæpi', 'adjective', 'feliz', 'I''m happy today.', 'Eu estou feliz hoje.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000132', 'sad', 'sæd', 'adjective', 'triste', 'She''s sad about the news.', 'Ela está triste com a notícia.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000133', 'tired', 'ˈtaɪərd', 'adjective', 'cansado(a)', 'I''m tired. I need to sleep.', 'Estou cansado. Eu preciso dormir.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000134', 'hungry', 'ˈhʌŋɡri', 'adjective', 'com fome', 'I''m hungry. Let''s eat.', 'Estou com fome. Vamos comer.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000135', 'thirsty', 'ˈθɜːrsti', 'adjective', 'com sede', 'I''m very thirsty.', 'Estou com muita sede.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000136', 'cold', 'koʊld', 'adjective', 'com frio / frio', 'I''m cold. Close the window.', 'Estou com frio. Feche a janela.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000137', 'hot', 'hɒt', 'adjective', 'com calor / quente', 'It''s hot today.', 'Está quente hoje.', 'A1', array['feelings']),
('30000000-0000-0000-0000-000000000138', 'married', 'ˈmærid', 'adjective', 'casado(a)', 'My brother is married.', 'Meu irmão é casado.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000139', 'single', 'ˈsɪŋɡəl', 'adjective', 'solteiro(a)', 'My sister is single.', 'Minha irmã é solteira.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000140', 'doctor', 'ˈdɒktər', 'noun', 'médico(a)', 'She is a doctor.', 'Ela é médica.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000141', 'engineer', 'ˌendʒɪˈnɪər', 'noun', 'engenheiro(a)', 'He is an engineer.', 'Ele é engenheiro.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000142', 'student', 'ˈstuːdənt', 'noun', 'estudante', 'I am a student.', 'Eu sou estudante.', 'A1', array['jobs']),
('30000000-0000-0000-0000-000000000143', 'here', 'hɪər', 'adverb', 'aqui', 'Come here, please.', 'Venha aqui, por favor.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000144', 'there', 'ðeər', 'adverb', 'ali / lá', 'The book is there.', 'O livro está ali.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000145', 'today', 'təˈdeɪ', 'noun', 'hoje', 'I''m free today.', 'Estou livre hoje.', 'A1', array['time']),
('30000000-0000-0000-0000-000000000146', 'late', 'leɪt', 'adjective', 'atrasado(a)', 'They aren''t late.', 'Eles não estão atrasados.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000147', 'early', 'ˈɜːrli', 'adjective', 'cedo / adiantado(a)', 'She is always early.', 'Ela está sempre adiantada.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000148', 'busy', 'ˈbɪzi', 'adjective', 'ocupado(a)', 'She isn''t busy today.', 'Ela não está ocupada hoje.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000149', 'free', 'friː', 'adjective', 'livre', 'I''m free today.', 'Estou livre hoje.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000150', 'fine', 'faɪn', 'adjective', 'bem', 'I''m fine, thank you.', 'Estou bem, obrigado.', 'A1', array['feelings']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000005', 'A1', 'Verb to Be', 'Contrações, negativas, perguntas e como falar sobre sentimentos e profissões com o verbo to be.', 3, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000005', 'I''m, You''re, He''s...', 1, 10),
('20000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000005', 'Is it...? Yes, it is.', 2, 10),
('20000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000005', 'I''m not, He isn''t...', 3, 10),
('20000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000005', 'How Are You?', 4, 10),
('20000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000005', 'What''s Your Job? (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 3.1: I'm, You're, He's... ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000021', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000122"}'),
('20000000-0000-0000-0000-000000000021', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000124"}'),
('20000000-0000-0000-0000-000000000021', 'multiple_choice', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000124", "question": "Choose the correct contraction: ''She is a doctor.''", "audio_text": null, "options": ["She''s", "He''s", "They''re"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000021', 'matching', 4, '{"pairs": [{"left": "I''m", "right": "Eu sou/estou"}, {"left": "You''re", "right": "Você é/está"}, {"left": "He''s", "right": "Ele é/está"}, {"left": "She''s", "right": "Ela é/está"}]}'),
('20000000-0000-0000-0000-000000000021', 'fill_blank', 5, '{"sentence": "___ my brother.", "options": ["He''s", "She''s", "They''re"], "correct": "He''s", "translation": "Ele é meu irmão."}'),
('20000000-0000-0000-0000-000000000021', 'word_order', 6, '{"words": ["a", "student", "I''m"], "correct_sentence": "I''m a student", "translation": "Eu sou estudante"}'),
('20000000-0000-0000-0000-000000000021', 'listening', 7, '{"audio_text": "We''re from Brazil and they''re from Portugal.", "question": "Where are ''they'' from?", "options": ["Brazil", "Portugal", "the USA"], "correct_index": 1}');

-- ---------- Lição 3.2: Is it...? Yes, it is. ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000022', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000121"}'),
('20000000-0000-0000-0000-000000000022', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000143"}'),
('20000000-0000-0000-0000-000000000022', 'multiple_choice', 3, '{"question": "Ask a question: ___ this your book?", "audio_text": null, "options": ["Is", "Are", "Am"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000022', 'fill_blank', 4, '{"sentence": "___ you a teacher?", "options": ["Are", "Is", "Am"], "correct": "Are", "translation": "Você é professor(a)?"}'),
('20000000-0000-0000-0000-000000000022', 'matching', 5, '{"pairs": [{"left": "here", "right": "aqui"}, {"left": "there", "right": "ali"}, {"left": "it", "right": "isso/ele/ela"}, {"left": "today", "right": "hoje"}]}'),
('20000000-0000-0000-0000-000000000022', 'word_order', 6, '{"words": ["your", "Is", "book", "this"], "correct_sentence": "Is this your book", "translation": "Este é o seu livro?"}'),
('20000000-0000-0000-0000-000000000022', 'dictation', 7, '{"audio_text": "Is it here or there?", "expected": "Is it here or there?"}'),
('20000000-0000-0000-0000-000000000022', 'typing', 8, '{"prompt_pt": "Traduza: ''É aqui.''", "expected": "It''s here.", "ai_review": true}');

-- ---------- Lição 3.3: I'm not, He isn't... ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000023', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000129"}'),
('20000000-0000-0000-0000-000000000023', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000130"}'),
('20000000-0000-0000-0000-000000000023', 'multiple_choice', 3, '{"question": "Complete: They ___ late.", "audio_text": null, "options": ["aren''t", "isn''t", "am not"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000023', 'fill_blank', 4, '{"sentence": "She ___ busy today.", "options": ["isn''t", "aren''t", "am not"], "correct": "isn''t", "translation": "Ela não está ocupada hoje."}'),
('20000000-0000-0000-0000-000000000023', 'matching', 5, '{"pairs": [{"left": "isn''t", "right": "não é/está"}, {"left": "aren''t", "right": "não são/estão"}, {"left": "busy", "right": "ocupado(a)"}, {"left": "late", "right": "atrasado(a)"}]}'),
('20000000-0000-0000-0000-000000000023', 'word_order', 6, '{"words": ["isn''t", "He", "tired"], "correct_sentence": "He isn''t tired", "translation": "Ele não está cansado"}'),
('20000000-0000-0000-0000-000000000023', 'listening', 7, '{"audio_text": "I''m not hungry, but I''m thirsty.", "question": "What is true about the speaker?", "options": ["hungry", "thirsty", "tired"], "correct_index": 1}');

-- ---------- Lição 3.4: How Are You? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000024', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000131"}'),
('20000000-0000-0000-0000-000000000024', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000133"}'),
('20000000-0000-0000-0000-000000000024', 'multiple_choice', 3, '{"question": "How are you? I''m ___.", "audio_text": null, "options": ["fine", "sad", "tired"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000024', 'matching', 4, '{"pairs": [{"left": "happy", "right": "feliz"}, {"left": "sad", "right": "triste"}, {"left": "tired", "right": "cansado(a)"}, {"left": "hungry", "right": "com fome"}]}'),
('20000000-0000-0000-0000-000000000024', 'fill_blank', 5, '{"sentence": "I''m ___. Let''s eat!", "options": ["hungry", "cold", "free"], "correct": "hungry", "translation": "Estou com fome. Vamos comer!"}'),
('20000000-0000-0000-0000-000000000024', 'word_order', 6, '{"words": ["thirsty", "very", "I''m"], "correct_sentence": "I''m very thirsty", "translation": "Estou com muita sede"}'),
('20000000-0000-0000-0000-000000000024', 'dictation', 7, '{"audio_text": "I''m cold. Are you cold too?", "expected": "I''m cold. Are you cold too?"}'),
('20000000-0000-0000-0000-000000000024', 'typing', 8, '{"prompt_pt": "Traduza: ''Estou ocupado hoje.''", "expected": "I''m busy today.", "ai_review": true}');

-- ---------- Lição 3.5: What's Your Job? (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000025', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000140"}'),
('20000000-0000-0000-0000-000000000025', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000141"}'),
('20000000-0000-0000-0000-000000000025', 'multiple_choice', 3, '{"question": "What''s her job? She''s a ___.", "audio_text": null, "options": ["doctor", "hungry", "here"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000025', 'matching', 4, '{"pairs": [{"left": "doctor", "right": "médico(a)"}, {"left": "engineer", "right": "engenheiro(a)"}, {"left": "married", "right": "casado(a)"}, {"left": "single", "right": "solteiro(a)"}]}'),
('20000000-0000-0000-0000-000000000025', 'fill_blank', 5, '{"sentence": "He ___ an engineer. He works with computers.", "options": ["is", "are", "am"], "correct": "is", "translation": "Ele é engenheiro. Ele trabalha com computadores."}'),
('20000000-0000-0000-0000-000000000025', 'word_order', 6, '{"words": ["a", "She''s", "doctor"], "correct_sentence": "She''s a doctor", "translation": "Ela é médica"}'),
('20000000-0000-0000-0000-000000000025', 'listening', 7, '{"audio_text": "My brother is single, but my sister is married.", "question": "Who is married?", "options": ["brother", "sister", "both"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000025', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu sou engenheiro e estou feliz.''", "expected": "I''m an engineer and I''m happy.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 38 exercícios
-- ============================================================================

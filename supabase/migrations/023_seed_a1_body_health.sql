-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 9 "Body & Health"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 021_seed_a1_clothes_shopping.sql (vocabulário
-- 481-510, módulo 10000000-...-000017, lições 20000000-...-000081 a 085).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000481', 'head', 'hed', 'noun', 'cabeça', 'My head hurts.', 'Minha cabeça dói.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000482', 'eye', 'aɪ', 'noun', 'olho', 'She has blue eyes.', 'Ela tem olhos azuis.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000483', 'ear', 'ɪər', 'noun', 'orelha', 'My ear hurts.', 'Minha orelha dói.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000484', 'nose', 'noʊz', 'noun', 'nariz', 'My nose is red.', 'Meu nariz está vermelho.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000485', 'mouth', 'maʊθ', 'noun', 'boca', 'Open your mouth, please.', 'Abra a boca, por favor.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000486', 'arm', 'ɑːrm', 'noun', 'braço', 'I hurt my arm.', 'Eu machuquei meu braço.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000487', 'hand', 'hænd', 'noun', 'mão', 'Wash your hands.', 'Lave suas mãos.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000488', 'leg', 'leɡ', 'noun', 'perna', 'My leg hurts.', 'Minha perna dói.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000489', 'foot', 'fʊt', 'noun', 'pé', 'My foot is swollen.', 'Meu pé está inchado.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000490', 'stomach', 'ˈstʌmək', 'noun', 'estômago / barriga', 'My stomach hurts.', 'Minha barriga dói.', 'A1', array['body']),
('30000000-0000-0000-0000-000000000491', 'back', 'bæk', 'noun', 'costas', 'My back hurts.', 'Minhas costas doem.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000492', 'to hurt', 'tuː hɜːrt', 'verb', 'doer / machucar', 'My back hurts.', 'Minhas costas doem.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000493', 'pain', 'peɪn', 'noun', 'dor', 'I have a pain in my chest.', 'Eu tenho uma dor no peito.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000494', 'sick', 'sɪk', 'adjective', 'doente', 'I feel sick today.', 'Eu me sinto doente hoje.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000495', 'fever', 'ˈfiːvər', 'noun', 'febre', 'She has a fever.', 'Ela está com febre.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000496', 'cold (illness)', 'koʊld', 'noun', 'resfriado', 'I have a cold.', 'Eu estou com um resfriado.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000497', 'cough', 'kɒf', 'noun', 'tosse', 'He has a bad cough.', 'Ele está com uma tosse forte.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000498', 'headache', 'ˈhedeɪk', 'noun', 'dor de cabeça', 'I have a headache.', 'Eu estou com dor de cabeça.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000499', 'doctor', 'ˈdɒktər', 'noun', 'médico', 'I need to see a doctor.', 'Eu preciso ver um médico.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000500', 'nurse', 'nɜːrs', 'noun', 'enfermeiro/a', 'The nurse is very kind.', 'O enfermeiro é muito gentil.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000501', 'hospital', 'ˈhɒspɪtl', 'noun', 'hospital', 'She is in the hospital.', 'Ela está no hospital.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000502', 'pharmacy', 'ˈfɑːrməsi', 'noun', 'farmácia', 'I need to go to the pharmacy.', 'Eu preciso ir à farmácia.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000503', 'medicine', 'ˈmedɪsɪn', 'noun', 'remédio', 'Take this medicine twice a day.', 'Tome esse remédio duas vezes ao dia.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000504', 'appointment', 'əˈpɔɪntmənt', 'noun', 'consulta / horário marcado', 'I have a doctor''s appointment tomorrow.', 'Eu tenho uma consulta médica amanhã.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000505', 'healthy', 'ˈhelθi', 'adjective', 'saudável', 'She eats healthy food.', 'Ela come comida saudável.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000506', 'to exercise', 'tuː ˈeksərsaɪz', 'verb', 'se exercitar', 'I exercise every morning.', 'Eu me exercito toda manhã.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000507', 'to rest', 'tuː rest', 'verb', 'descansar', 'You need to rest.', 'Você precisa descansar.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000508', 'tired', 'ˈtaɪərd', 'adjective', 'cansado', 'I am tired today.', 'Eu estou cansado hoje.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000509', 'to feel better', 'tuː fiːl ˈbetər', 'verb', 'se sentir melhor', 'I hope you feel better soon.', 'Espero que você se sinta melhor logo.', 'A1', array['health']),
('30000000-0000-0000-0000-000000000510', 'to take medicine', 'tuː teɪk ˈmedɪsɪn', 'verb', 'tomar remédio', 'You should take medicine for your fever.', 'Você deveria tomar remédio para a sua febre.', 'A1', array['health']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000017', 'A1', 'Body & Health', 'Partes do corpo, sintomas, médico e hábitos saudáveis.', 9, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000081', '10000000-0000-0000-0000-000000000017', 'Parts of the Body', 1, 10),
('20000000-0000-0000-0000-000000000082', '10000000-0000-0000-0000-000000000017', 'How Do You Feel?', 2, 10),
('20000000-0000-0000-0000-000000000083', '10000000-0000-0000-0000-000000000017', 'At the Doctor', 3, 10),
('20000000-0000-0000-0000-000000000084', '10000000-0000-0000-0000-000000000017', 'Staying Healthy', 4, 10),
('20000000-0000-0000-0000-000000000085', '10000000-0000-0000-0000-000000000017', 'Feel Better Soon (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 9.1: Parts of the Body ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000081', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000481"}'),
('20000000-0000-0000-0000-000000000081', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000487"}'),
('20000000-0000-0000-0000-000000000081', 'multiple_choice', 3, '{"question": "Complete: She has blue ___.", "audio_text": null, "options": ["eyes", "ears", "hands"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000081', 'fill_blank', 4, '{"sentence": "Wash your ___.", "options": ["hands", "nose", "back"], "correct": "hands", "translation": "Lave suas mãos."}'),
('20000000-0000-0000-0000-000000000081', 'matching', 5, '{"pairs": [{"left": "head", "right": "cabeça"}, {"left": "arm", "right": "braço"}, {"left": "leg", "right": "perna"}, {"left": "foot", "right": "pé"}]}'),
('20000000-0000-0000-0000-000000000081', 'word_order', 6, '{"words": ["hurts", "head", "My"], "correct_sentence": "My head hurts", "translation": "Minha cabeça dói"}'),
('20000000-0000-0000-0000-000000000081', 'listening', 7, '{"audio_text": "My foot is swollen and my leg hurts.", "question": "What is swollen?", "options": ["the foot", "the leg", "the arm"], "correct_index": 0}');

-- ---------- Lição 9.2: How Do You Feel? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000082', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000494"}'),
('20000000-0000-0000-0000-000000000082', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000498"}'),
('20000000-0000-0000-0000-000000000082', 'multiple_choice', 3, '{"question": "Complete: I ___ sick today.", "audio_text": null, "options": ["feel", "have", "am eating"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000082', 'fill_blank', 4, '{"sentence": "She has a ___. Her temperature is very high.", "options": ["fever", "cough", "headache"], "correct": "fever", "translation": "Ela está com febre. A temperatura dela está muito alta."}'),
('20000000-0000-0000-0000-000000000082', 'matching', 5, '{"pairs": [{"left": "sick", "right": "doente"}, {"left": "fever", "right": "febre"}, {"left": "cold (illness)", "right": "resfriado"}, {"left": "cough", "right": "tosse"}]}'),
('20000000-0000-0000-0000-000000000082', 'word_order', 6, '{"words": ["a", "have", "headache", "I"], "correct_sentence": "I have a headache", "translation": "Eu estou com dor de cabeça"}'),
('20000000-0000-0000-0000-000000000082', 'dictation', 7, '{"audio_text": "I feel sick. I have a fever and a cough.", "expected": "I feel sick. I have a fever and a cough."}');

-- ---------- Lição 9.3: At the Doctor ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000083', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000499"}'),
('20000000-0000-0000-0000-000000000083', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000504"}'),
('20000000-0000-0000-0000-000000000083', 'multiple_choice', 3, '{"question": "Complete: I need to see a ___.", "audio_text": null, "options": ["doctor", "nurse", "pharmacy"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000083', 'fill_blank', 4, '{"sentence": "I have a doctor''s ___ tomorrow.", "options": ["appointment", "medicine", "hospital"], "correct": "appointment", "translation": "Eu tenho uma consulta médica amanhã."}'),
('20000000-0000-0000-0000-000000000083', 'matching', 5, '{"pairs": [{"left": "doctor", "right": "médico"}, {"left": "nurse", "right": "enfermeiro/a"}, {"left": "hospital", "right": "hospital"}, {"left": "pharmacy", "right": "farmácia"}]}'),
('20000000-0000-0000-0000-000000000083', 'word_order', 6, '{"words": ["day", "twice", "medicine", "this", "a", "Take"], "correct_sentence": "Take this medicine twice a day", "translation": "Tome esse remédio duas vezes ao dia"}'),
('20000000-0000-0000-0000-000000000083', 'listening', 7, '{"audio_text": "I need to go to the pharmacy to get my medicine.", "question": "Where does the speaker need to go?", "options": ["the pharmacy", "the hospital", "the doctor's office"], "correct_index": 0}');

-- ---------- Lição 9.4: Staying Healthy ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000084', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000505"}'),
('20000000-0000-0000-0000-000000000084', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000506"}'),
('20000000-0000-0000-0000-000000000084', 'multiple_choice', 3, '{"question": "Complete: I ___ every morning.", "audio_text": null, "options": ["exercise", "rest", "hurt"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000084', 'fill_blank', 4, '{"sentence": "I am ___ today. I need to ___.", "options": ["tired / rest", "healthy / exercise", "sick / eat"], "correct": "tired / rest", "translation": "Eu estou cansado hoje. Eu preciso descansar."}'),
('20000000-0000-0000-0000-000000000084', 'matching', 5, '{"pairs": [{"left": "healthy", "right": "saudável"}, {"left": "to exercise", "right": "se exercitar"}, {"left": "to rest", "right": "descansar"}, {"left": "tired", "right": "cansado"}]}'),
('20000000-0000-0000-0000-000000000084', 'word_order', 6, '{"words": ["food", "eats", "healthy", "She"], "correct_sentence": "She eats healthy food", "translation": "Ela come comida saudável"}'),
('20000000-0000-0000-0000-000000000084', 'typing', 7, '{"prompt_pt": "Traduza: ''Você precisa descansar.''", "expected": "You need to rest.", "ai_review": true}');

-- ---------- Lição 9.5: Feel Better Soon (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000085', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000493"}'),
('20000000-0000-0000-0000-000000000085', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000509"}'),
('20000000-0000-0000-0000-000000000085', 'multiple_choice', 3, '{"question": "Complete: I hope you ___ soon.", "audio_text": null, "options": ["feel better", "hurt", "exercise"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000085', 'fill_blank', 4, '{"sentence": "You should ___ for your fever.", "options": ["take medicine", "go to the gym", "exercise"], "correct": "take medicine", "translation": "Você deveria tomar remédio para a sua febre."}'),
('20000000-0000-0000-0000-000000000085', 'matching', 5, '{"pairs": [{"left": "pain", "right": "dor"}, {"left": "to hurt", "right": "doer/machucar"}, {"left": "to feel better", "right": "se sentir melhor"}, {"left": "to take medicine", "right": "tomar remédio"}]}'),
('20000000-0000-0000-0000-000000000085', 'word_order', 6, '{"words": ["chest", "a", "in", "have", "pain", "I", "my"], "correct_sentence": "I have a pain in my chest", "translation": "Eu tenho uma dor no peito"}'),
('20000000-0000-0000-0000-000000000085', 'listening', 7, '{"audio_text": "I hope you feel better soon. Take your medicine and rest.", "question": "What should the person do?", "options": ["take medicine and rest", "go to work", "exercise"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000085', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu me sinto doente hoje.''", "expected": "I feel sick today.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

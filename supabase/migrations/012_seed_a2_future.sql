-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 3 "Future (going to / will)"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 006_seed_a2.sql (vocabulário 151-180,
-- módulo 10000000-...-000006, lições 20000000-...-000026 a 030).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000151', 'tomorrow', 'təˈmɒroʊ', 'noun', 'amanhã', 'I''m going to travel tomorrow.', 'Eu vou viajar amanhã.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000152', 'next week', 'nekst wiːk', 'phrase', 'semana que vem', 'She starts her new job next week.', 'Ela começa o novo emprego semana que vem.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000153', 'next year', 'nekst jɪər', 'phrase', 'ano que vem', 'They are going to move next year.', 'Eles vão se mudar ano que vem.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000154', 'going to', 'ˈɡoʊɪŋ tuː', 'phrase', 'vai (fazer algo planejado)', 'I''m going to study tonight.', 'Eu vou estudar hoje à noite.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000155', 'will', 'wɪl', 'modal verb', 'vai / irá (previsão/decisão)', 'It will rain tomorrow.', 'Vai chover amanhã.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000156', 'won''t', 'woʊnt', 'contraction', 'não vai (will not)', 'She won''t come to the party.', 'Ela não vai vir à festa.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000157', 'plan', 'plæn', 'noun', 'plano', 'What''s your plan for the weekend?', 'Qual é o seu plano para o fim de semana?', 'A2', array['future']),
('30000000-0000-0000-0000-000000000158', 'to plan', 'tuː plæn', 'verb', 'planejar', 'We are planning a trip.', 'Nós estamos planejando uma viagem.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000159', 'weekend', 'ˈwiːkend', 'noun', 'fim de semana', 'I''m going to rest this weekend.', 'Eu vou descansar neste fim de semana.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000160', 'vacation', 'veɪˈkeɪʃən', 'noun', 'férias', 'We are going to Portugal on vacation.', 'Nós vamos a Portugal de férias.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000161', 'trip', 'trɪp', 'noun', 'viagem', 'Our trip starts next month.', 'Nossa viagem começa mês que vem.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000162', 'to travel', 'tuː ˈtrævəl', 'verb', 'viajar', 'I''m going to travel to Brazil.', 'Eu vou viajar para o Brasil.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000163', 'to visit', 'tuː ˈvɪzɪt', 'verb', 'visitar', 'We are going to visit our grandmother.', 'Nós vamos visitar nossa avó.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000164', 'to move', 'tuː muːv', 'verb', 'mudar-se', 'They are going to move to Lisbon.', 'Eles vão se mudar para Lisboa.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000165', 'to graduate', 'tuː ˈɡrædʒueɪt', 'verb', 'se formar', 'She will graduate next year.', 'Ela vai se formar ano que vem.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000166', 'job', 'dʒɒb', 'noun', 'emprego', 'He is going to start a new job.', 'Ele vai começar um novo emprego.', 'A2', array['work']),
('30000000-0000-0000-0000-000000000167', 'to start', 'tuː stɑːrt', 'verb', 'começar', 'The meeting will start soon.', 'A reunião vai começar em breve.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000168', 'soon', 'suːn', 'adverb', 'em breve', 'I will call you soon.', 'Eu vou te ligar em breve.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000169', 'later', 'ˈleɪtər', 'adverb', 'mais tarde', 'I will finish this later.', 'Eu vou terminar isso mais tarde.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000170', 'tonight', 'təˈnaɪt', 'noun', 'hoje à noite', 'She won''t come to the party tonight.', 'Ela não vai vir à festa hoje à noite.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000171', 'maybe', 'ˈmeɪbi', 'adverb', 'talvez', 'Maybe I will travel to Portugal.', 'Talvez eu viaje para Portugal.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000172', 'probably', 'ˈprɒbəbli', 'adverb', 'provavelmente', 'It will probably rain today.', 'Provavelmente vai chover hoje.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000173', 'definitely', 'ˈdefɪnətli', 'adverb', 'definitivamente', 'I will definitely be there.', 'Eu definitivamente vou estar lá.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000174', 'to decide', 'tuː dɪˈsaɪd', 'verb', 'decidir', 'I need to decide soon.', 'Eu preciso decidir logo.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000175', 'decision', 'dɪˈsɪʒən', 'noun', 'decisão', 'I need to make a decision.', 'Eu preciso tomar uma decisão.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000176', 'dream', 'driːm', 'noun', 'sonho', 'My dream is to travel the world.', 'Meu sonho é viajar pelo mundo.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000177', 'goal', 'ɡoʊl', 'noun', 'meta / objetivo', 'My goal is to speak English fluently.', 'Minha meta é falar inglês fluentemente.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000178', 'future', 'ˈfjuːtʃər', 'noun', 'futuro', 'In the future, I will have my own business.', 'No futuro, eu vou ter meu próprio negócio.', 'A2', array['future']),
('30000000-0000-0000-0000-000000000179', 'career', 'kəˈrɪər', 'noun', 'carreira', 'She is planning her career.', 'Ela está planejando a carreira dela.', 'A2', array['work']),
('30000000-0000-0000-0000-000000000180', 'to hope', 'tuː hoʊp', 'verb', 'esperar (desejo)', 'I hope you will visit us.', 'Eu espero que você nos visite.', 'A2', array['future']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000006', 'A2', 'Future (Going to / Will)', 'Fale sobre planos, previsões e decisões usando ''going to'' e ''will''.', 3, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000006', 'Going to: Plans', 1, 10),
('20000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000006', 'Will: Predictions', 2, 10),
('20000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000006', 'Won''t: Negative Future', 3, 10),
('20000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000006', 'What Are You Going to Do?', 4, 10),
('20000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000006', 'Dreams & Goals (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 3.1: Going to: Plans ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000026', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000154"}'),
('20000000-0000-0000-0000-000000000026', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000160"}'),
('20000000-0000-0000-0000-000000000026', 'multiple_choice', 3, '{"question": "Complete: She ___ going to study tonight.", "audio_text": null, "options": ["is", "are", "am"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000026', 'fill_blank', 4, '{"sentence": "We ___ going to visit our grandmother this weekend.", "options": ["are", "is", "am"], "correct": "are", "translation": "Nós vamos visitar nossa avó neste fim de semana."}'),
('20000000-0000-0000-0000-000000000026', 'matching', 5, '{"pairs": [{"left": "plan", "right": "plano"}, {"left": "weekend", "right": "fim de semana"}, {"left": "vacation", "right": "férias"}, {"left": "to travel", "right": "viajar"}]}'),
('20000000-0000-0000-0000-000000000026', 'word_order', 6, '{"words": ["going", "study", "to", "I''m"], "correct_sentence": "I''m going to study", "translation": "Eu vou estudar"}'),
('20000000-0000-0000-0000-000000000026', 'listening', 7, '{"audio_text": "She is going to start a new job next week.", "question": "When does she start her new job?", "options": ["Today", "Next week", "Next year"], "correct_index": 1}');

-- ---------- Lição 3.2: Will: Predictions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000027', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000155"}'),
('20000000-0000-0000-0000-000000000027', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000168"}'),
('20000000-0000-0000-0000-000000000027', 'multiple_choice', 3, '{"question": "Complete: It ___ rain tomorrow.", "audio_text": null, "options": ["will", "is", "are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000027', 'fill_blank', 4, '{"sentence": "I think he ___ be a great doctor.", "options": ["will", "won''t", "is"], "correct": "will", "translation": "Eu acho que ele vai ser um ótimo médico."}'),
('20000000-0000-0000-0000-000000000027', 'matching', 5, '{"pairs": [{"left": "will", "right": "vai/irá"}, {"left": "soon", "right": "em breve"}, {"left": "probably", "right": "provavelmente"}, {"left": "definitely", "right": "definitivamente"}]}'),
('20000000-0000-0000-0000-000000000027', 'word_order', 6, '{"words": ["help", "will", "I", "you"], "correct_sentence": "I will help you", "translation": "Eu vou te ajudar"}'),
('20000000-0000-0000-0000-000000000027', 'dictation', 7, '{"audio_text": "I will call you later.", "expected": "I will call you later."}');

-- ---------- Lição 3.3: Won't: Negative Future ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000028', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000156"}'),
('20000000-0000-0000-0000-000000000028', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000170"}'),
('20000000-0000-0000-0000-000000000028', 'multiple_choice', 3, '{"question": "Complete: She ___ come to the party tonight.", "audio_text": null, "options": ["won''t", "will", "is"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000028', 'fill_blank', 4, '{"sentence": "I ___ be late again. I promise.", "options": ["won''t", "will", "am"], "correct": "won''t", "translation": "Eu não vou me atrasar de novo. Eu prometo."}'),
('20000000-0000-0000-0000-000000000028', 'matching', 5, '{"pairs": [{"left": "won''t", "right": "não vai"}, {"left": "later", "right": "mais tarde"}, {"left": "tonight", "right": "hoje à noite"}, {"left": "tomorrow", "right": "amanhã"}]}'),
('20000000-0000-0000-0000-000000000028', 'word_order', 6, '{"words": ["forget", "won''t", "I", "you"], "correct_sentence": "I won''t forget you", "translation": "Eu não vou te esquecer"}'),
('20000000-0000-0000-0000-000000000028', 'listening', 7, '{"audio_text": "He won''t be at work tomorrow. He is sick.", "question": "Why won''t he be at work?", "options": ["vacation", "sick", "tired"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000028', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu não vou desistir.''", "expected": "I won''t give up.", "ai_review": true}');

-- ---------- Lição 3.4: What Are You Going to Do? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000029', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000151"}'),
('20000000-0000-0000-0000-000000000029', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000153"}'),
('20000000-0000-0000-0000-000000000029', 'multiple_choice', 3, '{"question": "What are you going to do ___?", "audio_text": null, "options": ["tomorrow", "yesterday", "now"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000029', 'fill_blank', 4, '{"sentence": "___, I might travel to Portugal.", "options": ["Maybe", "Definitely", "Never"], "correct": "Maybe", "translation": "Talvez, eu viaje para Portugal."}'),
('20000000-0000-0000-0000-000000000029', 'matching', 5, '{"pairs": [{"left": "tomorrow", "right": "amanhã"}, {"left": "next week", "right": "semana que vem"}, {"left": "next year", "right": "ano que vem"}, {"left": "maybe", "right": "talvez"}]}'),
('20000000-0000-0000-0000-000000000029', 'word_order', 6, '{"words": ["going", "What", "you", "are", "to", "do"], "correct_sentence": "What are you going to do", "translation": "O que você vai fazer?"}'),
('20000000-0000-0000-0000-000000000029', 'dictation', 7, '{"audio_text": "What are you going to do tomorrow?", "expected": "What are you going to do tomorrow?"}');

-- ---------- Lição 3.5: Dreams & Goals (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000030', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000176"}'),
('20000000-0000-0000-0000-000000000030', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000179"}'),
('20000000-0000-0000-0000-000000000030', 'multiple_choice', 3, '{"question": "What is your biggest ___?", "audio_text": null, "options": ["dream", "tomorrow", "weekend"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000030', 'matching', 4, '{"pairs": [{"left": "dream", "right": "sonho"}, {"left": "goal", "right": "meta/objetivo"}, {"left": "future", "right": "futuro"}, {"left": "career", "right": "carreira"}]}'),
('20000000-0000-0000-0000-000000000030', 'fill_blank', 5, '{"sentence": "I hope I ___ have a good career.", "options": ["will", "won''t", "am"], "correct": "will", "translation": "Eu espero que eu vá ter uma boa carreira."}'),
('20000000-0000-0000-0000-000000000030', 'word_order', 6, '{"words": ["a", "decision", "make", "to", "need", "I"], "correct_sentence": "I need to make a decision", "translation": "Eu preciso tomar uma decisão"}'),
('20000000-0000-0000-0000-000000000030', 'listening', 7, '{"audio_text": "In the future, I hope to travel more and visit new countries.", "question": "What does the speaker hope to do?", "options": ["work more", "travel more", "study more"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000030', 'typing', 8, '{"prompt_pt": "Traduza: ''No futuro, eu vou realizar meus sonhos.''", "expected": "In the future, I will achieve my dreams.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

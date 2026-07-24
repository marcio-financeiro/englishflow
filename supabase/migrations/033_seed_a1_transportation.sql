-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 14 "Transportation"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 031_seed_a1_technology_devices.sql (vocabulário
-- 781-810, módulo 10000000-...-000027, lições 20000000-...-000131 a 135).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000781', 'car', 'kɑːr', 'noun', 'carro', 'I go to work by car.', 'Eu vou ao trabalho de carro.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000782', 'bus', 'bʌs', 'noun', 'ônibus', 'The bus is always late.', 'O ônibus está sempre atrasado.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000783', 'train', 'treɪn', 'noun', 'trem', 'I take the train to work.', 'Eu pego o trem para o trabalho.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000784', 'subway', 'ˈsʌbweɪ', 'noun', 'metrô', 'The subway is faster than the bus.', 'O metrô é mais rápido que o ônibus.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000785', 'bike', 'baɪk', 'noun', 'bicicleta', 'I ride my bike every morning.', 'Eu ando de bicicleta toda manhã.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000786', 'motorcycle', 'ˈmoʊtərsaɪkl', 'noun', 'moto', 'He drives a motorcycle to work.', 'Ele dirige uma moto para o trabalho.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000787', 'taxi', 'ˈtæksi', 'noun', 'táxi', 'I took a taxi to the airport.', 'Eu peguei um táxi para o aeroporto.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000788', 'plane', 'pleɪn', 'noun', 'avião', 'The plane leaves at nine.', 'O avião sai às nove.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000789', 'ship', 'ʃɪp', 'noun', 'navio', 'The ship crosses the ocean in five days.', 'O navio atravessa o oceano em cinco dias.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000790', 'to drive', 'tuː draɪv', 'verb', 'dirigir', 'I don''t know how to drive.', 'Eu não sei dirigir.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000791', 'to ride', 'tuː raɪd', 'verb', 'andar (de bike/moto)', 'She rides her bike to school.', 'Ela vai de bicicleta para a escola.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000792', 'to fly', 'tuː flaɪ', 'verb', 'voar / viajar de avião', 'We fly to Brazil every year.', 'Nós viajamos de avião para o Brasil todo ano.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000793', 'ticket', 'ˈtɪkɪt', 'noun', 'passagem / bilhete', 'I bought a bus ticket.', 'Eu comprei uma passagem de ônibus.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000794', 'station', 'ˈsteɪʃn', 'noun', 'estação', 'The train station is close to my house.', 'A estação de trem é perto da minha casa.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000795', 'stop', 'stɒp', 'noun', 'ponto (de ônibus) / parada', 'The bus stop is on the corner.', 'O ponto de ônibus é na esquina.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000796', 'traffic', 'ˈtræfɪk', 'noun', 'trânsito', 'There is a lot of traffic today.', 'Há muito trânsito hoje.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000797', 'to walk', 'tuː wɔːk', 'verb', 'andar / ir a pé', 'I walk to school every day.', 'Eu vou a pé para a escola todo dia.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000798', 'on foot', 'ɒn fʊt', 'phrase', 'a pé', 'It''s faster on foot.', 'É mais rápido a pé.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000799', 'to arrive', 'tuː əˈraɪv', 'verb', 'chegar', 'What time does the bus arrive?', 'Que horas o ônibus chega?', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000800', 'to leave', 'tuː liːv', 'verb', 'sair / partir', 'The train leaves in ten minutes.', 'O trem parte em dez minutos.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000801', 'fast', 'fæst', 'adjective', 'rápido', 'This train is very fast.', 'Esse trem é muito rápido.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000802', 'slow', 'sloʊ', 'adjective', 'lento', 'The bus is slow at this hour.', 'O ônibus está lento nesse horário.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000803', 'to park', 'tuː pɑːrk', 'verb', 'estacionar', 'You can park here.', 'Você pode estacionar aqui.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000804', 'parking lot', 'ˈpɑːrkɪŋ lɒt', 'noun', 'estacionamento', 'The parking lot is full.', 'O estacionamento está cheio.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000805', 'road', 'roʊd', 'noun', 'estrada / rua', 'This road is very busy.', 'Essa estrada é muito movimentada.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000806', 'to get on', 'tuː ɡet ɒn', 'verb', 'entrar/subir (em ônibus/trem)', 'Get on the bus quickly.', 'Entre no ônibus rápido.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000807', 'to get off', 'tuː ɡet ɒf', 'verb', 'descer / sair (de ônibus/trem)', 'I get off at the next stop.', 'Eu desço no próximo ponto.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000808', 'seat', 'siːt', 'noun', 'assento', 'Is this seat free?', 'Esse assento está livre?', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000809', 'fare', 'feər', 'noun', 'tarifa / preço da passagem', 'The bus fare went up.', 'A tarifa do ônibus subiu.', 'A1', array['transportation']),
('30000000-0000-0000-0000-000000000810', 'schedule', 'ˈskedʒuːl', 'noun', 'horário (de transporte)', 'Check the train schedule online.', 'Confira o horário do trem online.', 'A1', array['transportation']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000027', 'A1', 'Transportation', 'Meios de transporte, estações, horários e trânsito.', 14, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000131', '10000000-0000-0000-0000-000000000027', 'How Do You Get There?', 1, 10),
('20000000-0000-0000-0000-000000000132', '10000000-0000-0000-0000-000000000027', 'Tickets & Stations', 2, 10),
('20000000-0000-0000-0000-000000000133', '10000000-0000-0000-0000-000000000027', 'On the Bus', 3, 10),
('20000000-0000-0000-0000-000000000134', '10000000-0000-0000-0000-000000000027', 'Traffic & Driving', 4, 10),
('20000000-0000-0000-0000-000000000135', '10000000-0000-0000-0000-000000000027', 'Getting Around (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 14.1: How Do You Get There? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000131', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000782"}'),
('20000000-0000-0000-0000-000000000131', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000784"}'),
('20000000-0000-0000-0000-000000000131', 'multiple_choice', 3, '{"question": "Complete: I take the ___ to work.", "audio_text": null, "options": ["train", "ship", "plane"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000131', 'fill_blank', 4, '{"sentence": "The ___ is faster than the bus.", "options": ["subway", "bike", "taxi"], "correct": "subway", "translation": "O metrô é mais rápido que o ônibus."}'),
('20000000-0000-0000-0000-000000000131', 'matching', 5, '{"pairs": [{"left": "car", "right": "carro"}, {"left": "bus", "right": "ônibus"}, {"left": "train", "right": "trem"}, {"left": "subway", "right": "metrô"}]}'),
('20000000-0000-0000-0000-000000000131', 'word_order', 6, '{"words": ["car", "to", "I", "by", "work", "go"], "correct_sentence": "I go to work by car", "translation": "Eu vou ao trabalho de carro"}'),
('20000000-0000-0000-0000-000000000131', 'listening', 7, '{"audio_text": "I took a taxi to the airport because the bus was late.", "question": "Why did the speaker take a taxi?", "options": ["the bus was late", "the train was full", "it was raining"], "correct_index": 0}');

-- ---------- Lição 14.2: Tickets & Stations ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000132', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000793"}'),
('20000000-0000-0000-0000-000000000132', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000794"}'),
('20000000-0000-0000-0000-000000000132', 'multiple_choice', 3, '{"question": "Complete: I bought a bus ___.", "audio_text": null, "options": ["ticket", "seat", "fare"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000132', 'fill_blank', 4, '{"sentence": "The train ___ is close to my house.", "options": ["station", "stop", "schedule"], "correct": "station", "translation": "A estação de trem é perto da minha casa."}'),
('20000000-0000-0000-0000-000000000132', 'matching', 5, '{"pairs": [{"left": "ticket", "right": "passagem"}, {"left": "station", "right": "estação"}, {"left": "stop", "right": "ponto"}, {"left": "schedule", "right": "horário"}]}'),
('20000000-0000-0000-0000-000000000132', 'word_order', 6, '{"words": ["corner", "the", "on", "is", "stop", "bus", "The"], "correct_sentence": "The bus stop is on the corner", "translation": "O ponto de ônibus é na esquina"}'),
('20000000-0000-0000-0000-000000000132', 'dictation', 7, '{"audio_text": "Check the train schedule online, the fare went up this month.", "expected": "Check the train schedule online, the fare went up this month."}');

-- ---------- Lição 14.3: On the Bus ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000133', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000806"}'),
('20000000-0000-0000-0000-000000000133', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000807"}'),
('20000000-0000-0000-0000-000000000133', 'multiple_choice', 3, '{"question": "Complete: I ___ at the next stop.", "audio_text": null, "options": ["get off", "get on", "park"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000133', 'fill_blank', 4, '{"sentence": "Is this ___ free?", "options": ["seat", "station", "road"], "correct": "seat", "translation": "Esse assento está livre?"}'),
('20000000-0000-0000-0000-000000000133', 'matching', 5, '{"pairs": [{"left": "to get on", "right": "entrar/subir"}, {"left": "to get off", "right": "descer/sair"}, {"left": "seat", "right": "assento"}, {"left": "fare", "right": "tarifa"}]}'),
('20000000-0000-0000-0000-000000000133', 'word_order', 6, '{"words": ["quickly", "bus", "the", "Get", "on"], "correct_sentence": "Get on the bus quickly", "translation": "Entre no ônibus rápido"}'),
('20000000-0000-0000-0000-000000000133', 'listening', 7, '{"audio_text": "Get on the bus quickly, and remember to get off at the third stop.", "question": "When should the person get off?", "options": ["at the third stop", "at the first stop", "at the station"], "correct_index": 0}');

-- ---------- Lição 14.4: Traffic & Driving ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000134', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000796"}'),
('20000000-0000-0000-0000-000000000134', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000790"}'),
('20000000-0000-0000-0000-000000000134', 'multiple_choice', 3, '{"question": "Complete: There is a lot of ___ today.", "audio_text": null, "options": ["traffic", "fare", "seat"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000134', 'fill_blank', 4, '{"sentence": "I don''t know how to ___.", "options": ["drive", "walk", "fly"], "correct": "drive", "translation": "Eu não sei dirigir."}'),
('20000000-0000-0000-0000-000000000134', 'matching', 5, '{"pairs": [{"left": "traffic", "right": "trânsito"}, {"left": "to drive", "right": "dirigir"}, {"left": "to park", "right": "estacionar"}, {"left": "parking lot", "right": "estacionamento"}]}'),
('20000000-0000-0000-0000-000000000134', 'word_order', 6, '{"words": ["full", "parking", "The", "lot", "is"], "correct_sentence": "The parking lot is full", "translation": "O estacionamento está cheio"}'),
('20000000-0000-0000-0000-000000000134', 'typing', 7, '{"prompt_pt": "Traduza: ''Você pode estacionar aqui.''", "expected": "You can park here.", "ai_review": true}');

-- ---------- Lição 14.5: Getting Around (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000135', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000801"}'),
('20000000-0000-0000-0000-000000000135', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000798"}'),
('20000000-0000-0000-0000-000000000135', 'multiple_choice', 3, '{"question": "Complete: It''s faster ___.", "audio_text": null, "options": ["on foot", "by seat", "by fare"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000135', 'fill_blank', 4, '{"sentence": "This train is very ___.", "options": ["fast", "slow", "on foot"], "correct": "fast", "translation": "Esse trem é muito rápido."}'),
('20000000-0000-0000-0000-000000000135', 'matching', 5, '{"pairs": [{"left": "fast", "right": "rápido"}, {"left": "slow", "right": "lento"}, {"left": "on foot", "right": "a pé"}, {"left": "to walk", "right": "andar/ir a pé"}]}'),
('20000000-0000-0000-0000-000000000135', 'word_order', 6, '{"words": ["minutes", "in", "leaves", "The", "ten", "train"], "correct_sentence": "The train leaves in ten minutes", "translation": "O trem parte em dez minutos"}'),
('20000000-0000-0000-0000-000000000135', 'listening', 7, '{"audio_text": "The bus is slow at this hour, so I''ll walk on foot instead.", "question": "What will the speaker do instead?", "options": ["walk on foot", "take the bus", "drive"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000135', 'typing', 8, '{"prompt_pt": "Traduza: ''Que horas o ônibus chega?''", "expected": "What time does the bus arrive?", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

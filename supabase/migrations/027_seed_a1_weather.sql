-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 11 "Weather"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 025_seed_a1_house_furniture.sql (vocabulário
-- 601-630, módulo 10000000-...-000021, lições 20000000-...-000101 a 105).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000601', 'weather', 'ˈweðər', 'noun', 'clima / tempo', 'The weather is nice today.', 'O tempo está bom hoje.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000602', 'sunny', 'ˈsʌni', 'adjective', 'ensolarado', 'It''s sunny today.', 'Está ensolarado hoje.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000603', 'cloudy', 'ˈklaʊdi', 'adjective', 'nublado', 'It''s cloudy this morning.', 'Está nublado essa manhã.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000604', 'rainy', 'ˈreɪni', 'adjective', 'chuvoso', 'It''s rainy in April.', 'É chuvoso em abril.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000605', 'to rain', 'tuː reɪn', 'verb', 'chover', 'It''s raining outside.', 'Está chovendo lá fora.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000606', 'snow', 'snoʊ', 'noun', 'neve', 'The snow is very white.', 'A neve é muito branca.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000607', 'to snow', 'tuː snoʊ', 'verb', 'nevar', 'It''s snowing in the mountains.', 'Está nevando nas montanhas.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000608', 'windy', 'ˈwɪndi', 'adjective', 'ventoso', 'It''s very windy today.', 'Está muito ventoso hoje.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000609', 'wind', 'wɪnd', 'noun', 'vento', 'The wind is strong.', 'O vento está forte.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000610', 'storm', 'stɔːrm', 'noun', 'tempestade', 'There is a storm coming.', 'Uma tempestade está chegando.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000611', 'hot', 'hɒt', 'adjective', 'quente', 'It''s hot in summer.', 'É quente no verão.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000612', 'cold', 'koʊld', 'adjective', 'frio', 'It''s cold in winter.', 'É frio no inverno.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000613', 'warm', 'wɔːrm', 'adjective', 'ameno / morno', 'It''s warm this afternoon.', 'Está ameno essa tarde.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000614', 'cool', 'kuːl', 'adjective', 'fresco', 'The evenings are cool.', 'As noites são frescas.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000615', 'humid', 'ˈhjuːmɪd', 'adjective', 'úmido', 'It''s very humid here.', 'É muito úmido aqui.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000616', 'temperature', 'ˈtemprətʃər', 'noun', 'temperatura', 'What is the temperature today?', 'Qual é a temperatura hoje?', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000617', 'degree', 'dɪˈɡriː', 'noun', 'grau', 'It''s thirty degrees today.', 'Está trinta graus hoje.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000618', 'forecast', 'ˈfɔːrkæst', 'noun', 'previsão do tempo', 'The forecast says rain tomorrow.', 'A previsão diz chuva amanhã.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000619', 'cloud', 'klaʊd', 'noun', 'nuvem', 'There are many clouds today.', 'Há muitas nuvens hoje.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000620', 'sky', 'skaɪ', 'noun', 'céu', 'The sky is blue.', 'O céu está azul.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000621', 'sun', 'sʌn', 'noun', 'sol', 'The sun is very bright.', 'O sol está muito forte.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000622', 'rainbow', 'ˈreɪnboʊ', 'noun', 'arco-íris', 'Look at that rainbow!', 'Olha aquele arco-íris!', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000623', 'thunder', 'ˈθʌndər', 'noun', 'trovão', 'I heard thunder last night.', 'Eu ouvi trovão ontem à noite.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000624', 'lightning', 'ˈlaɪtnɪŋ', 'noun', 'relâmpago', 'The lightning was very bright.', 'O relâmpago foi muito forte.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000625', 'fog', 'fɒɡ', 'noun', 'neblina', 'There is a lot of fog this morning.', 'Há muita neblina essa manhã.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000626', 'umbrella', 'ʌmˈbrelə', 'noun', 'guarda-chuva', 'Take an umbrella with you.', 'Leve um guarda-chuva com você.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000627', 'season', 'ˈsiːzn', 'noun', 'estação (do ano)', 'Summer is my favorite season.', 'Verão é minha estação favorita.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000628', 'to get wet', 'tuː ɡet wet', 'verb', 'se molhar', 'I got wet in the rain.', 'Eu me molhei na chuva.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000629', 'to freeze', 'tuː friːz', 'verb', 'congelar', 'The lake freezes in winter.', 'O lago congela no inverno.', 'A1', array['weather']),
('30000000-0000-0000-0000-000000000630', 'clear (sky)', 'klɪər', 'adjective', 'limpo/claro (céu)', 'The sky is clear tonight.', 'O céu está limpo hoje à noite.', 'A1', array['weather']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000021', 'A1', 'Weather', 'Descrever clima, temperatura, previsão do tempo e fenômenos naturais.', 11, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000101', '10000000-0000-0000-0000-000000000021', 'What''s the Weather Like?', 1, 10),
('20000000-0000-0000-0000-000000000102', '10000000-0000-0000-0000-000000000021', 'Hot or Cold?', 2, 10),
('20000000-0000-0000-0000-000000000103', '10000000-0000-0000-0000-000000000021', 'Storms & Sky', 3, 10),
('20000000-0000-0000-0000-000000000104', '10000000-0000-0000-0000-000000000021', 'Forecast & Seasons', 4, 10),
('20000000-0000-0000-0000-000000000105', '10000000-0000-0000-0000-000000000021', 'What to Wear (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 11.1: What's the Weather Like? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000101', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000602"}'),
('20000000-0000-0000-0000-000000000101', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000604"}'),
('20000000-0000-0000-0000-000000000101', 'multiple_choice', 3, '{"question": "Complete: It''s ___ today.", "audio_text": null, "options": ["sunny", "umbrella", "season"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000101', 'fill_blank', 4, '{"sentence": "It''s ___ this morning.", "options": ["cloudy", "sunny", "hot"], "correct": "cloudy", "translation": "Está nublado essa manhã."}'),
('20000000-0000-0000-0000-000000000101', 'matching', 5, '{"pairs": [{"left": "weather", "right": "clima"}, {"left": "sunny", "right": "ensolarado"}, {"left": "cloudy", "right": "nublado"}, {"left": "rainy", "right": "chuvoso"}]}'),
('20000000-0000-0000-0000-000000000101', 'word_order', 6, '{"words": ["outside", "raining", "It''s"], "correct_sentence": "It''s raining outside", "translation": "Está chovendo lá fora"}'),
('20000000-0000-0000-0000-000000000101', 'listening', 7, '{"audio_text": "It''s rainy in April, but it''s sunny in July.", "question": "What is the weather like in April?", "options": ["rainy", "sunny", "windy"], "correct_index": 0}');

-- ---------- Lição 11.2: Hot or Cold? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000102', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000611"}'),
('20000000-0000-0000-0000-000000000102', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000612"}'),
('20000000-0000-0000-0000-000000000102', 'multiple_choice', 3, '{"question": "Complete: It''s ___ in winter.", "audio_text": null, "options": ["cold", "hot", "humid"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000102', 'fill_blank', 4, '{"sentence": "The evenings are ___.", "options": ["cool", "hot", "humid"], "correct": "cool", "translation": "As noites são frescas."}'),
('20000000-0000-0000-0000-000000000102', 'matching', 5, '{"pairs": [{"left": "hot", "right": "quente"}, {"left": "cold", "right": "frio"}, {"left": "warm", "right": "ameno"}, {"left": "cool", "right": "fresco"}]}'),
('20000000-0000-0000-0000-000000000102', 'word_order', 6, '{"words": ["today", "temperature", "the", "is", "What"], "correct_sentence": "What is the temperature today", "translation": "Qual é a temperatura hoje"}'),
('20000000-0000-0000-0000-000000000102', 'dictation', 7, '{"audio_text": "It''s thirty degrees today, and it''s very humid.", "expected": "It''s thirty degrees today, and it''s very humid."}');

-- ---------- Lição 11.3: Storms & Sky ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000103', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000610"}'),
('20000000-0000-0000-0000-000000000103', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000623"}'),
('20000000-0000-0000-0000-000000000103', 'multiple_choice', 3, '{"question": "Complete: There is a ___ coming.", "audio_text": null, "options": ["storm", "rainbow", "fog"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000103', 'fill_blank', 4, '{"sentence": "I heard ___ last night.", "options": ["thunder", "wind", "snow"], "correct": "thunder", "translation": "Eu ouvi trovão ontem à noite."}'),
('20000000-0000-0000-0000-000000000103', 'matching', 5, '{"pairs": [{"left": "storm", "right": "tempestade"}, {"left": "thunder", "right": "trovão"}, {"left": "lightning", "right": "relâmpago"}, {"left": "sky", "right": "céu"}]}'),
('20000000-0000-0000-0000-000000000103', 'word_order', 6, '{"words": ["blue", "sky", "The", "is"], "correct_sentence": "The sky is blue", "translation": "O céu está azul"}'),
('20000000-0000-0000-0000-000000000103', 'listening', 7, '{"audio_text": "The lightning was very bright, and then I heard the thunder.", "question": "What did the speaker hear?", "options": ["thunder", "wind", "rain"], "correct_index": 0}');

-- ---------- Lição 11.4: Forecast & Seasons ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000104', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000618"}'),
('20000000-0000-0000-0000-000000000104', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000627"}'),
('20000000-0000-0000-0000-000000000104', 'multiple_choice', 3, '{"question": "Complete: The ___ says rain tomorrow.", "audio_text": null, "options": ["forecast", "season", "degree"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000104', 'fill_blank', 4, '{"sentence": "Summer is my favorite ___.", "options": ["season", "forecast", "sky"], "correct": "season", "translation": "Verão é minha estação favorita."}'),
('20000000-0000-0000-0000-000000000104', 'matching', 5, '{"pairs": [{"left": "forecast", "right": "previsão do tempo"}, {"left": "season", "right": "estação"}, {"left": "temperature", "right": "temperatura"}, {"left": "degree", "right": "grau"}]}'),
('20000000-0000-0000-0000-000000000104', 'word_order', 6, '{"words": ["winter", "in", "freezes", "lake", "The"], "correct_sentence": "The lake freezes in winter", "translation": "O lago congela no inverno"}'),
('20000000-0000-0000-0000-000000000104', 'typing', 7, '{"prompt_pt": "Traduza: ''O céu está limpo hoje à noite.''", "expected": "The sky is clear tonight.", "ai_review": true}');

-- ---------- Lição 11.5: What to Wear (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000105', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000626"}'),
('20000000-0000-0000-0000-000000000105', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000628"}'),
('20000000-0000-0000-0000-000000000105', 'multiple_choice', 3, '{"question": "Complete: Take an ___ with you.", "audio_text": null, "options": ["umbrella", "rainbow", "cloud"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000105', 'fill_blank', 4, '{"sentence": "I ___ in the rain.", "options": ["got wet", "froze", "cleared up"], "correct": "got wet", "translation": "Eu me molhei na chuva."}'),
('20000000-0000-0000-0000-000000000105', 'matching', 5, '{"pairs": [{"left": "umbrella", "right": "guarda-chuva"}, {"left": "to get wet", "right": "se molhar"}, {"left": "fog", "right": "neblina"}, {"left": "rainbow", "right": "arco-íris"}]}'),
('20000000-0000-0000-0000-000000000105', 'word_order', 6, '{"words": ["that", "at", "rainbow", "Look"], "correct_sentence": "Look at that rainbow", "translation": "Olha aquele arco-íris"}'),
('20000000-0000-0000-0000-000000000105', 'listening', 7, '{"audio_text": "There is a lot of fog this morning, so drive carefully.", "question": "What should the driver do?", "options": ["drive carefully", "take an umbrella", "wear a coat"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000105', 'typing', 8, '{"prompt_pt": "Traduza: ''Está muito ventoso hoje.''", "expected": "It''s very windy today.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

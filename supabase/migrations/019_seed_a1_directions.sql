-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 7 "Directions"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 017_seed_a1_months_seasons.sql (vocabulário 361-390,
-- módulo 10000000-...-000013, lições 20000000-...-000061 a 065).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000361', 'turn left', 'tɜːrn left', 'phrase', 'vire à esquerda', 'Turn left at the corner.', 'Vire à esquerda na esquina.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000362', 'turn right', 'tɜːrn raɪt', 'phrase', 'vire à direita', 'Turn right at the traffic light.', 'Vire à direita no semáforo.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000363', 'go straight', 'ɡoʊ streɪt', 'phrase', 'siga em frente', 'Go straight for two blocks.', 'Siga em frente por dois quarteirões.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000364', 'corner', 'ˈkɔːrnər', 'noun', 'esquina', 'The store is on the corner.', 'A loja fica na esquina.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000365', 'street', 'striːt', 'noun', 'rua', 'My house is on this street.', 'Minha casa fica nesta rua.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000366', 'avenue', 'ˈævənuː', 'noun', 'avenida', 'The bank is on this avenue.', 'O banco fica nesta avenida.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000367', 'block', 'blɒk', 'noun', 'quarteirão', 'Walk two blocks and turn left.', 'Ande dois quarteirões e vire à esquerda.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000368', 'map', 'mæp', 'noun', 'mapa', 'Check the map to find the museum.', 'Confira o mapa para encontrar o museu.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000369', 'address', 'əˈdres', 'noun', 'endereço', 'What is your address?', 'Qual é o seu endereço?', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000370', 'north', 'nɔːrθ', 'noun', 'norte', 'The bank is north of here.', 'O banco fica ao norte daqui.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000371', 'south', 'saʊθ', 'noun', 'sul', 'Drive south for ten minutes.', 'Dirija para o sul por dez minutos.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000372', 'east', 'iːst', 'noun', 'leste', 'The sun rises in the east.', 'O sol nasce no leste.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000373', 'west', 'west', 'noun', 'oeste', 'The sun sets in the west.', 'O sol se põe no oeste.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000374', 'traffic light', 'ˈtræfɪk laɪt', 'noun', 'semáforo', 'Turn right at the traffic light.', 'Vire à direita no semáforo.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000375', 'crosswalk', 'ˈkrɒswɔːk', 'noun', 'faixa de pedestre', 'Cross at the crosswalk.', 'Atravesse na faixa de pedestre.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000376', 'intersection', 'ˌɪntərˈsekʃən', 'noun', 'cruzamento', 'Turn left at the intersection.', 'Vire à esquerda no cruzamento.', 'A1', array['directions']),
('30000000-0000-0000-0000-000000000377', 'bank', 'bæŋk', 'noun', 'banco (instituição)', 'The bank is next to the pharmacy.', 'O banco fica ao lado da farmácia.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000378', 'hospital', 'ˈhɒspɪtəl', 'noun', 'hospital', 'Where is the hospital?', 'Onde fica o hospital?', 'A1', array['places']),
('30000000-0000-0000-0000-000000000379', 'pharmacy', 'ˈfɑːrməsi', 'noun', 'farmácia', 'I need medicine. Where is the pharmacy?', 'Eu preciso de remédio. Onde fica a farmácia?', 'A1', array['places']),
('30000000-0000-0000-0000-000000000380', 'supermarket', 'ˈsuːpərmɑːrkɪt', 'noun', 'supermercado', 'I buy food at the supermarket.', 'Eu compro comida no supermercado.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000381', 'post office', 'poʊst ˈɒfɪs', 'noun', 'correio', 'I need to buy stamps at the post office.', 'Eu preciso comprar selos no correio.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000382', 'gas station', 'ɡæs ˈsteɪʃən', 'noun', 'posto de gasolina', 'Where is the gas station?', 'Onde fica o posto de gasolina?', 'A1', array['places']),
('30000000-0000-0000-0000-000000000383', 'library', 'ˈlaɪbreri', 'noun', 'biblioteca', 'The library is next to the church.', 'A biblioteca fica ao lado da igreja.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000384', 'museum', 'mjuˈziːəm', 'noun', 'museu', 'The museum is near the park.', 'O museu fica perto do parque.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000385', 'church', 'tʃɜːrtʃ', 'noun', 'igreja', 'The church is downtown.', 'A igreja fica no centro.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000386', 'park', 'pɑːrk', 'noun', 'parque', 'The museum is near the park.', 'O museu fica perto do parque.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000387', 'airport', 'ˈeərpɔːrt', 'noun', 'aeroporto', 'How do I get to the airport?', 'Como eu chego ao aeroporto?', 'A1', array['places']),
('30000000-0000-0000-0000-000000000388', 'train station', 'treɪn ˈsteɪʃən', 'noun', 'estação de trem', 'The train station is downtown.', 'A estação de trem fica no centro.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000389', 'bus stop', 'bʌs stɒp', 'noun', 'ponto de ônibus', 'Wait at the bus stop.', 'Espere no ponto de ônibus.', 'A1', array['places']),
('30000000-0000-0000-0000-000000000390', 'downtown', 'ˌdaʊnˈtaʊn', 'noun', 'centro da cidade', 'The best restaurants are downtown.', 'Os melhores restaurantes ficam no centro da cidade.', 'A1', array['places']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000013', 'A1', 'Directions', 'Peça e dê direções, e conheça vocabulário de lugares na cidade.', 7, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000061', '10000000-0000-0000-0000-000000000013', 'Turn Left, Turn Right, Go Straight', 1, 10),
('20000000-0000-0000-0000-000000000062', '10000000-0000-0000-0000-000000000013', 'Asking for Directions', 2, 10),
('20000000-0000-0000-0000-000000000063', '10000000-0000-0000-0000-000000000013', 'North, South, East, West', 3, 10),
('20000000-0000-0000-0000-000000000064', '10000000-0000-0000-0000-000000000013', 'Places in the City', 4, 10),
('20000000-0000-0000-0000-000000000065', '10000000-0000-0000-0000-000000000013', 'Finding Your Way (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 7.1: Turn Left, Turn Right, Go Straight ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000061', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000361"}'),
('20000000-0000-0000-0000-000000000061', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000363"}'),
('20000000-0000-0000-0000-000000000061', 'multiple_choice', 3, '{"question": "Complete: To get to the bank, ___ at the corner.", "audio_text": null, "options": ["turn left", "go straight", "turn right"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000061', 'fill_blank', 4, '{"sentence": "___ for two blocks, then turn right.", "options": ["Go straight", "Turn left", "Stop"], "correct": "Go straight", "translation": "Siga em frente por dois quarteirões, depois vire à direita."}'),
('20000000-0000-0000-0000-000000000061', 'matching', 5, '{"pairs": [{"left": "turn left", "right": "vire à esquerda"}, {"left": "turn right", "right": "vire à direita"}, {"left": "go straight", "right": "siga em frente"}, {"left": "corner", "right": "esquina"}]}'),
('20000000-0000-0000-0000-000000000061', 'word_order', 6, '{"words": ["left", "the", "at", "Turn", "corner"], "correct_sentence": "Turn left at the corner", "translation": "Vire à esquerda na esquina"}'),
('20000000-0000-0000-0000-000000000061', 'listening', 7, '{"audio_text": "Go straight, then turn right at the traffic light.", "question": "What should you do at the traffic light?", "options": ["turn right", "turn left", "stop"], "correct_index": 0}');

-- ---------- Lição 7.2: Asking for Directions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000062', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000365"}'),
('20000000-0000-0000-0000-000000000062', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000369"}'),
('20000000-0000-0000-0000-000000000062', 'multiple_choice', 3, '{"question": "Complete: What''s your ___? I need to send you something.", "audio_text": null, "options": ["address", "street", "block"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000062', 'fill_blank', 4, '{"sentence": "My house is on this ___.", "options": ["street", "avenue", "map"], "correct": "street", "translation": "Minha casa fica nesta rua."}'),
('20000000-0000-0000-0000-000000000062', 'matching', 5, '{"pairs": [{"left": "street", "right": "rua"}, {"left": "avenue", "right": "avenida"}, {"left": "block", "right": "quarteirão"}, {"left": "map", "right": "mapa"}]}'),
('20000000-0000-0000-0000-000000000062', 'word_order', 6, '{"words": ["is", "your", "What", "address"], "correct_sentence": "What is your address", "translation": "Qual é o seu endereço?"}'),
('20000000-0000-0000-0000-000000000062', 'dictation', 7, '{"audio_text": "Excuse me, where is Main Street?", "expected": "Excuse me, where is Main Street?"}');

-- ---------- Lição 7.3: North, South, East, West ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000063', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000370"}'),
('20000000-0000-0000-0000-000000000063', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000372"}'),
('20000000-0000-0000-0000-000000000063', 'multiple_choice', 3, '{"question": "Complete: The sun rises in the ___.", "audio_text": null, "options": ["east", "west", "north"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000063', 'fill_blank', 4, '{"sentence": "Check the ___ to find the museum.", "options": ["map", "address", "block"], "correct": "map", "translation": "Confira o mapa para encontrar o museu."}'),
('20000000-0000-0000-0000-000000000063', 'matching', 5, '{"pairs": [{"left": "north", "right": "norte"}, {"left": "south", "right": "sul"}, {"left": "east", "right": "leste"}, {"left": "west", "right": "oeste"}]}'),
('20000000-0000-0000-0000-000000000063', 'word_order', 6, '{"words": ["is", "north", "The", "bank", "of", "here"], "correct_sentence": "The bank is north of here", "translation": "O banco fica ao norte daqui"}'),
('20000000-0000-0000-0000-000000000063', 'listening', 7, '{"audio_text": "Drive south for ten minutes, then turn west.", "question": "Which direction do you drive first?", "options": ["south", "north", "east"], "correct_index": 0}');

-- ---------- Lição 7.4: Places in the City ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000064', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000378"}'),
('20000000-0000-0000-0000-000000000064', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000380"}'),
('20000000-0000-0000-0000-000000000064', 'multiple_choice', 3, '{"question": "Complete: I need medicine. Where is the ___?", "audio_text": null, "options": ["pharmacy", "hospital", "library"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000064', 'fill_blank', 4, '{"sentence": "I need to buy stamps at the ___.", "options": ["post office", "bank", "museum"], "correct": "post office", "translation": "Eu preciso comprar selos no correio."}'),
('20000000-0000-0000-0000-000000000064', 'matching', 5, '{"pairs": [{"left": "hospital", "right": "hospital"}, {"left": "pharmacy", "right": "farmácia"}, {"left": "supermarket", "right": "supermercado"}, {"left": "post office", "right": "correio"}]}'),
('20000000-0000-0000-0000-000000000064', 'word_order', 6, '{"words": ["is", "gas", "Where", "the", "station"], "correct_sentence": "Where is the gas station", "translation": "Onde fica o posto de gasolina?"}'),
('20000000-0000-0000-0000-000000000064', 'listening', 7, '{"audio_text": "The library is next to the church, near the park.", "question": "What is next to the library?", "options": ["the church", "the hospital", "the bank"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000064', 'typing', 8, '{"prompt_pt": "Traduza: ''O museu fica perto do parque.''", "expected": "The museum is near the park.", "ai_review": true}');

-- ---------- Lição 7.5: Finding Your Way (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000065', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000387"}'),
('20000000-0000-0000-0000-000000000065', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000390"}'),
('20000000-0000-0000-0000-000000000065', 'multiple_choice', 3, '{"question": "Complete: We need to check in early at the ___.", "audio_text": null, "options": ["airport", "bus stop", "train station"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000065', 'matching', 4, '{"pairs": [{"left": "airport", "right": "aeroporto"}, {"left": "train station", "right": "estação de trem"}, {"left": "bus stop", "right": "ponto de ônibus"}, {"left": "downtown", "right": "centro da cidade"}]}'),
('20000000-0000-0000-0000-000000000065', 'fill_blank', 5, '{"sentence": "The best restaurants are ___.", "options": ["downtown", "north", "crosswalk"], "correct": "downtown", "translation": "Os melhores restaurantes ficam no centro da cidade."}'),
('20000000-0000-0000-0000-000000000065', 'word_order', 6, '{"words": ["at", "the", "Wait", "bus", "stop"], "correct_sentence": "Wait at the bus stop", "translation": "Espere no ponto de ônibus"}'),
('20000000-0000-0000-0000-000000000065', 'listening', 7, '{"audio_text": "The train station is downtown, near the bus stop.", "question": "Where is the train station?", "options": ["downtown", "at the airport", "far from downtown"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000065', 'typing', 8, '{"prompt_pt": "Traduza: ''Como eu chego ao aeroporto?''", "expected": "How do I get to the airport?", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

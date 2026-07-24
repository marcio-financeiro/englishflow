-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 6 "Prepositions"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 016_seed_a2_countable_uncountable.sql
-- (vocabulário 331-360, módulo 10000000-...-000012,
-- lições 20000000-...-000056 a 060).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000331', 'in', 'ɪn', 'preposition', 'em (mês/ano/estação)', 'I was born in July.', 'Eu nasci em julho.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000332', 'on', 'ɒn', 'preposition', 'em (dia/data)', 'The meeting is on Monday.', 'A reunião é na segunda-feira.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000333', 'at', 'æt', 'preposition', 'em (hora)', 'She wakes up at six.', 'Ela acorda às seis.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000334', 'under', 'ˈʌndər', 'preposition', 'embaixo de', 'The cat is under the table.', 'O gato está embaixo da mesa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000335', 'over', 'ˈoʊvər', 'preposition', 'acima de / sobre', 'The book is over the table.', 'O livro está sobre a mesa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000336', 'next to', 'nekst tuː', 'preposition', 'ao lado de', 'The school is next to the park.', 'A escola fica ao lado do parque.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000337', 'between', 'bɪˈtwiːn', 'preposition', 'entre', 'My house is between the bank and the school.', 'Minha casa fica entre o banco e a escola.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000338', 'behind', 'bɪˈhaɪnd', 'preposition', 'atrás de', 'The car is behind the house.', 'O carro está atrás da casa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000339', 'in front of', 'ɪn frʌnt ʌv', 'preposition', 'na frente de', 'The car is parked in front of the house.', 'O carro está estacionado na frente da casa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000340', 'above', 'əˈbʌv', 'preposition', 'acima de', 'The sun is above the clouds.', 'O sol está acima das nuvens.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000341', 'below', 'bɪˈloʊ', 'preposition', 'abaixo de', 'The valley is below the mountain.', 'O vale fica abaixo da montanha.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000342', 'inside', 'ɪnˈsaɪd', 'preposition', 'dentro de', 'The keys are inside the bag.', 'As chaves estão dentro da bolsa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000343', 'outside', 'aʊtˈsaɪd', 'preposition', 'fora de', 'The kids are playing outside the house.', 'As crianças estão brincando fora de casa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000344', 'near', 'nɪər', 'preposition', 'perto de', 'My office is near my house. I walk there.', 'Meu escritório é perto da minha casa. Eu vou andando.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000345', 'far from', 'fɑːr frʌm', 'preposition', 'longe de', 'The gym is far from my house.', 'A academia é longe da minha casa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000346', 'across from', 'əˈkrɒs frʌm', 'preposition', 'do outro lado de / em frente a', 'The bakery is across from the bank.', 'A padaria fica do outro lado do banco.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000347', 'through', 'θruː', 'preposition', 'através de', 'We walk through the park.', 'Nós caminhamos através do parque.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000348', 'around', 'əˈraʊnd', 'preposition', 'ao redor de', 'There are many shops around the square.', 'Tem muitas lojas ao redor da praça.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000349', 'up', 'ʌp', 'preposition', 'para cima', 'She looked up at the sky.', 'Ela olhou para cima, para o céu.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000350', 'down', 'daʊn', 'preposition', 'para baixo', 'He walked down the stairs.', 'Ele desceu as escadas.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000351', 'into', 'ˈɪntuː', 'preposition', 'para dentro de', 'The cat jumped into the box.', 'O gato pulou para dentro da caixa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000352', 'onto', 'ˈɒntuː', 'preposition', 'para cima de', 'Then it jumped onto the table.', 'Depois ele pulou para cima da mesa.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000353', 'along', 'əˈlɒŋ', 'preposition', 'ao longo de', 'We walked along the beach.', 'Nós caminhamos ao longo da praia.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000354', 'with', 'wɪð', 'preposition', 'com', 'I can''t live without coffee!', 'Eu não consigo viver sem café!', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000355', 'without', 'wɪˈðaʊt', 'preposition', 'sem', 'I can''t live without coffee!', 'Eu não consigo viver sem café!', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000356', 'for', 'fɔːr', 'preposition', 'para / por (duração)', 'This gift is for you.', 'Este presente é para você.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000357', 'beside', 'bɪˈsaɪd', 'preposition', 'ao lado de', 'She sits beside her brother.', 'Ela senta ao lado do irmão dela.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000358', 'opposite', 'ˈɒpəzɪt', 'preposition', 'em frente a / oposto', 'The park is opposite my building.', 'O parque fica em frente ao meu prédio.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000359', 'beyond', 'bɪˈjɒnd', 'preposition', 'além de', 'The mountains are beyond the river.', 'As montanhas ficam além do rio.', 'A2', array['prepositions']),
('30000000-0000-0000-0000-000000000360', 'towards', 'tɔːrdz', 'preposition', 'em direção a', 'She walked towards the door.', 'Ela caminhou em direção à porta.', 'A2', array['prepositions']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000012', 'A2', 'Prepositions', 'Preposições de tempo e lugar: in/on/at, under/over/between e mais.', 6, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000056', '10000000-0000-0000-0000-000000000012', 'In, On, At', 1, 10),
('20000000-0000-0000-0000-000000000057', '10000000-0000-0000-0000-000000000012', 'Under, Over, Between, Next To', 2, 10),
('20000000-0000-0000-0000-000000000058', '10000000-0000-0000-0000-000000000012', 'In Front Of, Behind, Above, Below', 3, 10),
('20000000-0000-0000-0000-000000000059', '10000000-0000-0000-0000-000000000012', 'Near, Far From, Around, Through', 4, 10),
('20000000-0000-0000-0000-000000000060', '10000000-0000-0000-0000-000000000012', 'With, Without & More (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 6.1: In, On, At ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000056', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000331"}'),
('20000000-0000-0000-0000-000000000056', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000333"}'),
('20000000-0000-0000-0000-000000000056', 'multiple_choice', 3, '{"question": "Complete: I was born ___ July.", "audio_text": null, "options": ["in", "on", "at"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000056', 'fill_blank', 4, '{"sentence": "The meeting is ___ Monday.", "options": ["on", "in", "at"], "correct": "on", "translation": "A reunião é na segunda-feira."}'),
('20000000-0000-0000-0000-000000000056', 'matching', 5, '{"pairs": [{"left": "in", "right": "em (mês/ano)"}, {"left": "on", "right": "em (dia)"}, {"left": "at", "right": "em (hora)"}, {"left": "between", "right": "entre"}]}'),
('20000000-0000-0000-0000-000000000056', 'word_order', 6, '{"words": ["at", "wakes", "six", "up", "She"], "correct_sentence": "She wakes up at six", "translation": "Ela acorda às seis"}'),
('20000000-0000-0000-0000-000000000056', 'listening', 7, '{"audio_text": "The party is on Saturday at eight in the evening.", "question": "What time is the party?", "options": ["six", "eight", "ten"], "correct_index": 1}');

-- ---------- Lição 6.2: Under, Over, Between, Next To ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000057', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000334"}'),
('20000000-0000-0000-0000-000000000057', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000337"}'),
('20000000-0000-0000-0000-000000000057', 'multiple_choice', 3, '{"question": "Complete: The cat is ___ the table.", "audio_text": null, "options": ["under", "over", "between"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000057', 'fill_blank', 4, '{"sentence": "My house is ___ the bank and the school.", "options": ["between", "under", "next to"], "correct": "between", "translation": "Minha casa fica entre o banco e a escola."}'),
('20000000-0000-0000-0000-000000000057', 'matching', 5, '{"pairs": [{"left": "under", "right": "embaixo de"}, {"left": "over", "right": "acima de/sobre"}, {"left": "next to", "right": "ao lado de"}, {"left": "between", "right": "entre"}]}'),
('20000000-0000-0000-0000-000000000057', 'word_order', 6, '{"words": ["next", "is", "school", "to", "The", "the", "park"], "correct_sentence": "The school is next to the park", "translation": "A escola fica ao lado do parque"}'),
('20000000-0000-0000-0000-000000000057', 'dictation', 7, '{"audio_text": "The book is over the table.", "expected": "The book is over the table."}');

-- ---------- Lição 6.3: In Front Of, Behind, Above, Below ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000058', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000339"}'),
('20000000-0000-0000-0000-000000000058', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000338"}'),
('20000000-0000-0000-0000-000000000058', 'multiple_choice', 3, '{"question": "Complete: The car is parked ___ the house.", "audio_text": null, "options": ["in front of", "behind", "above"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000058', 'fill_blank', 4, '{"sentence": "The sun is ___ the clouds.", "options": ["above", "below", "behind"], "correct": "above", "translation": "O sol está acima das nuvens."}'),
('20000000-0000-0000-0000-000000000058', 'matching', 5, '{"pairs": [{"left": "in front of", "right": "na frente de"}, {"left": "behind", "right": "atrás de"}, {"left": "above", "right": "acima de"}, {"left": "below", "right": "abaixo de"}]}'),
('20000000-0000-0000-0000-000000000058', 'word_order', 6, '{"words": ["house", "behind", "is", "The", "car", "the"], "correct_sentence": "The car is behind the house", "translation": "O carro está atrás da casa"}'),
('20000000-0000-0000-0000-000000000058', 'listening', 7, '{"audio_text": "The store is in front of the park, and the school is behind it.", "question": "Where is the school?", "options": ["in front of the park", "behind the park", "next to the park"], "correct_index": 1}');

-- ---------- Lição 6.4: Near, Far From, Around, Through ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000059', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000344"}'),
('20000000-0000-0000-0000-000000000059', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000345"}'),
('20000000-0000-0000-0000-000000000059', 'multiple_choice', 3, '{"question": "Complete: My office is ___ my house. I walk there.", "audio_text": null, "options": ["near", "far from", "through"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000059', 'fill_blank', 4, '{"sentence": "The gym is ___ my house. I need to drive.", "options": ["far from", "near", "around"], "correct": "far from", "translation": "A academia é longe da minha casa. Eu preciso dirigir."}'),
('20000000-0000-0000-0000-000000000059', 'matching', 5, '{"pairs": [{"left": "near", "right": "perto de"}, {"left": "far from", "right": "longe de"}, {"left": "around", "right": "ao redor de"}, {"left": "through", "right": "através de"}]}'),
('20000000-0000-0000-0000-000000000059', 'word_order', 6, '{"words": ["park", "walk", "the", "through", "We"], "correct_sentence": "We walk through the park", "translation": "Nós caminhamos através do parque"}'),
('20000000-0000-0000-0000-000000000059', 'listening', 7, '{"audio_text": "There are many shops around the square.", "question": "Where are the shops?", "options": ["around the square", "far from the square", "under the square"], "correct_index": 0}');

-- ---------- Lição 6.5: With, Without & More (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000060', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000354"}'),
('20000000-0000-0000-0000-000000000060', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000355"}'),
('20000000-0000-0000-0000-000000000060', 'multiple_choice', 3, '{"question": "Complete: I can''t live ___ coffee!", "audio_text": null, "options": ["without", "with", "for"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000060', 'matching', 4, '{"pairs": [{"left": "with", "right": "com"}, {"left": "without", "right": "sem"}, {"left": "for", "right": "para/por"}, {"left": "beside", "right": "ao lado de"}]}'),
('20000000-0000-0000-0000-000000000060', 'fill_blank', 5, '{"sentence": "This gift is ___ you.", "options": ["for", "with", "without"], "correct": "for", "translation": "Este presente é para você."}'),
('20000000-0000-0000-0000-000000000060', 'word_order', 6, '{"words": ["her", "sits", "brother", "She", "beside"], "correct_sentence": "She sits beside her brother", "translation": "Ela senta ao lado do irmão dela"}'),
('20000000-0000-0000-0000-000000000060', 'listening', 7, '{"audio_text": "The cat jumped into the box and then onto the table.", "question": "Where did the cat jump first?", "options": ["into the box", "onto the table", "through the door"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000060', 'typing', 8, '{"prompt_pt": "Traduza: ''O parque fica em frente ao meu prédio.''", "expected": "The park is opposite my building.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

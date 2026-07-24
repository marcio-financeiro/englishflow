-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 5 "Countable x Uncountable"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 014_seed_a2_comparatives.sql (vocabulário 271-300,
-- módulo 10000000-...-000010, lições 20000000-...-000046 a 050).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000271', 'some', 'sʌm', 'determiner', 'algum(a) / alguns (afirmativa)', 'I have some rice.', 'Eu tenho arroz.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000272', 'any', 'ˈeni', 'determiner', 'algum / nenhum (negativa/pergunta)', 'Do you have any bread?', 'Você tem pão?', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000273', 'much', 'mʌtʃ', 'determiner', 'muito (incontável)', 'I don''t have much time.', 'Eu não tenho muito tempo.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000274', 'many', 'ˈmeni', 'determiner', 'muitos (contável)', 'She has many friends.', 'Ela tem muitos amigos.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000275', 'a lot of', 'ə lɒt ʌv', 'phrase', 'muito(a) / muitos(as)', 'We have a lot of homework.', 'Nós temos muito dever de casa.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000276', 'a little', 'ə ˈlɪtəl', 'phrase', 'um pouco (incontável)', 'I need a little sugar.', 'Eu preciso de um pouco de açúcar.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000277', 'a few', 'ə fjuː', 'phrase', 'alguns / poucos (contável)', 'I have a few questions.', 'Eu tenho algumas perguntas.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000278', 'money', 'ˈmʌni', 'noun', 'dinheiro', 'I don''t have much money.', 'Eu não tenho muito dinheiro.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000279', 'information', 'ˌɪnfərˈmeɪʃən', 'noun', 'informação', 'I need some information.', 'Eu preciso de algumas informações.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000280', 'furniture', 'ˈfɜːrnɪtʃər', 'noun', 'móveis', 'They bought new furniture.', 'Eles compraram móveis novos.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000281', 'advice', 'ədˈvaɪs', 'noun', 'conselho', 'Can you give me some advice?', 'Você pode me dar um conselho?', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000282', 'time', 'taɪm', 'noun', 'tempo', 'I don''t have much time.', 'Eu não tenho muito tempo.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000283', 'luggage', 'ˈlʌɡɪdʒ', 'noun', 'bagagem', 'Our luggage is heavy.', 'Nossa bagagem é pesada.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000284', 'a bottle of', 'ə ˈbɒtəl ʌv', 'phrase', 'uma garrafa de', 'I need a bottle of water.', 'Eu preciso de uma garrafa de água.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000285', 'a cup of', 'ə kʌp ʌv', 'phrase', 'uma xícara de', 'She wants a cup of coffee.', 'Ela quer uma xícara de café.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000286', 'a piece of', 'ə piːs ʌv', 'phrase', 'um pedaço de', 'He eats a piece of bread.', 'Ele come um pedaço de pão.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000287', 'a bag of', 'ə bæɡ ʌv', 'phrase', 'um saco / pacote de', 'We bought a bag of rice.', 'Nós compramos um saco de arroz.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000288', 'how much', 'haʊ mʌtʃ', 'phrase', 'quanto (incontável, pergunta)', 'How much water do you drink?', 'Quanta água você bebe?', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000289', 'how many', 'haʊ ˈmeni', 'phrase', 'quantos (contável, pergunta)', 'How many apples do you have?', 'Quantas maçãs você tem?', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000290', 'enough', 'ɪˈnʌf', 'adjective', 'suficiente', 'We have enough food.', 'Nós temos comida suficiente.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000291', 'too much', 'tuː mʌtʃ', 'phrase', 'demais (incontável)', 'There is too much sugar in this coffee.', 'Tem açúcar demais neste café.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000292', 'too many', 'tuː ˈmeni', 'phrase', 'demais (contável)', 'There are too many people here.', 'Tem gente demais aqui.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000293', 'none', 'nʌn', 'pronoun', 'nenhum', 'I have none left.', 'Eu não tenho nenhum sobrando.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000294', 'nothing', 'ˈnʌθɪŋ', 'pronoun', 'nada', 'There is nothing in the fridge.', 'Não tem nada na geladeira.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000295', 'something', 'ˈsʌmθɪŋ', 'pronoun', 'algo', 'I need something to drink.', 'Eu preciso de algo para beber.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000296', 'everything', 'ˈevriθɪŋ', 'pronoun', 'tudo', 'Everything is ready.', 'Tudo está pronto.', 'A2', array['quantifiers']),
('30000000-0000-0000-0000-000000000297', 'fridge', 'frɪdʒ', 'noun', 'geladeira', 'Put the milk in the fridge.', 'Coloque o leite na geladeira.', 'A2', array['home']),
('30000000-0000-0000-0000-000000000298', 'shopping list', 'ˈʃɒpɪŋ lɪst', 'noun', 'lista de compras', 'I need to make a shopping list.', 'Eu preciso fazer uma lista de compras.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000299', 'to run out of', 'tuː rʌn aʊt ʌv', 'phrase', 'ficar sem', 'We ran out of milk.', 'Nós ficamos sem leite.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000300', 'leftover', 'ˈleftoʊvər', 'noun', 'sobra', 'We have some leftovers from dinner.', 'Nós temos algumas sobras do jantar.', 'A2', array['food']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000010', 'A2', 'Countable x Uncountable', 'Diferencie substantivos contáveis e incontáveis com some/any, much/many e outros quantificadores.', 5, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000046', '10000000-0000-0000-0000-000000000010', 'Some & Any', 1, 10),
('20000000-0000-0000-0000-000000000047', '10000000-0000-0000-0000-000000000010', 'Much & Many', 2, 10),
('20000000-0000-0000-0000-000000000048', '10000000-0000-0000-0000-000000000010', 'A Little, A Few, A Lot Of', 3, 10),
('20000000-0000-0000-0000-000000000049', '10000000-0000-0000-0000-000000000010', 'How Much? How Many?', 4, 10),
('20000000-0000-0000-0000-000000000050', '10000000-0000-0000-0000-000000000010', 'Shopping List (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 5.1: Some & Any ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000046', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000271"}'),
('20000000-0000-0000-0000-000000000046', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000272"}'),
('20000000-0000-0000-0000-000000000046', 'multiple_choice', 3, '{"question": "Complete: I have ___ rice in the kitchen.", "audio_text": null, "options": ["some", "any", "much"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000046', 'fill_blank', 4, '{"sentence": "Do you have ___ bread?", "options": ["any", "some", "much"], "correct": "any", "translation": "Você tem pão?"}'),
('20000000-0000-0000-0000-000000000046', 'matching', 5, '{"pairs": [{"left": "some", "right": "algum(a)"}, {"left": "any", "right": "algum/nenhum"}, {"left": "money", "right": "dinheiro"}, {"left": "time", "right": "tempo"}]}'),
('20000000-0000-0000-0000-000000000046', 'word_order', 6, '{"words": ["rice", "have", "some", "I"], "correct_sentence": "I have some rice", "translation": "Eu tenho arroz"}'),
('20000000-0000-0000-0000-000000000046', 'listening', 7, '{"audio_text": "We don''t have any milk, but we have some juice.", "question": "What do they have?", "options": ["milk", "juice", "both"], "correct_index": 1}');

-- ---------- Lição 5.2: Much & Many ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000047', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000273"}'),
('20000000-0000-0000-0000-000000000047', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000274"}'),
('20000000-0000-0000-0000-000000000047', 'multiple_choice', 3, '{"question": "Complete: I don''t have ___ time.", "audio_text": null, "options": ["much", "many", "some"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000047', 'fill_blank', 4, '{"sentence": "She has ___ friends in this city.", "options": ["many", "much", "any"], "correct": "many", "translation": "Ela tem muitos amigos nesta cidade."}'),
('20000000-0000-0000-0000-000000000047', 'matching', 5, '{"pairs": [{"left": "much", "right": "muito (incontável)"}, {"left": "many", "right": "muitos (contável)"}, {"left": "information", "right": "informação"}, {"left": "furniture", "right": "móveis"}]}'),
('20000000-0000-0000-0000-000000000047', 'word_order', 6, '{"words": ["much", "have", "money", "don''t", "I"], "correct_sentence": "I don''t have much money", "translation": "Eu não tenho muito dinheiro"}'),
('20000000-0000-0000-0000-000000000047', 'dictation', 7, '{"audio_text": "How much money do you have?", "expected": "How much money do you have?"}');

-- ---------- Lição 5.3: A Little, A Few, A Lot Of ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000048', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000276"}'),
('20000000-0000-0000-0000-000000000048', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000277"}'),
('20000000-0000-0000-0000-000000000048', 'multiple_choice', 3, '{"question": "Complete: I need ___ sugar in my coffee.", "audio_text": null, "options": ["a little", "a few", "many"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000048', 'fill_blank', 4, '{"sentence": "I have ___ questions about the homework.", "options": ["a few", "a little", "much"], "correct": "a few", "translation": "Eu tenho algumas perguntas sobre o dever de casa."}'),
('20000000-0000-0000-0000-000000000048', 'matching', 5, '{"pairs": [{"left": "a little", "right": "um pouco"}, {"left": "a few", "right": "alguns/poucos"}, {"left": "a lot of", "right": "muito(a)/muitos(as)"}, {"left": "advice", "right": "conselho"}]}'),
('20000000-0000-0000-0000-000000000048', 'word_order', 6, '{"words": ["homework", "a", "lot", "of", "have", "We"], "correct_sentence": "We have a lot of homework", "translation": "Nós temos muito dever de casa"}'),
('20000000-0000-0000-0000-000000000048', 'listening', 7, '{"audio_text": "Can you give me a little advice? I have a few questions.", "question": "What does the speaker want?", "options": ["advice and questions", "food", "money"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000048', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu preciso de um pouco de tempo.''", "expected": "I need a little time.", "ai_review": true}');

-- ---------- Lição 5.4: How Much? How Many? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000049', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000288"}'),
('20000000-0000-0000-0000-000000000049', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000289"}'),
('20000000-0000-0000-0000-000000000049', 'multiple_choice', 3, '{"question": "___ apples do you have?", "audio_text": null, "options": ["How many", "How much", "How"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000049', 'fill_blank', 4, '{"sentence": "___ water do you drink every day?", "options": ["How much", "How many", "How"], "correct": "How much", "translation": "Quanta água você bebe todo dia?"}'),
('20000000-0000-0000-0000-000000000049', 'matching', 5, '{"pairs": [{"left": "a bottle of", "right": "uma garrafa de"}, {"left": "a cup of", "right": "uma xícara de"}, {"left": "a piece of", "right": "um pedaço de"}, {"left": "a bag of", "right": "um saco de"}]}'),
('20000000-0000-0000-0000-000000000049', 'word_order', 6, '{"words": ["water", "bottle", "of", "a", "I", "need"], "correct_sentence": "I need a bottle of water", "translation": "Eu preciso de uma garrafa de água"}'),
('20000000-0000-0000-0000-000000000049', 'listening', 7, '{"audio_text": "How many eggs do we need? We need a bag of rice too.", "question": "What do they need besides eggs?", "options": ["a bag of rice", "a bottle of water", "a cup of coffee"], "correct_index": 0}');

-- ---------- Lição 5.5: Shopping List (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000050', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000297"}'),
('20000000-0000-0000-0000-000000000050', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000298"}'),
('20000000-0000-0000-0000-000000000050', 'multiple_choice', 3, '{"question": "Complete: We need to make a ___ before going to the store.", "audio_text": null, "options": ["shopping list", "fridge", "leftover"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000050', 'matching', 4, '{"pairs": [{"left": "fridge", "right": "geladeira"}, {"left": "shopping list", "right": "lista de compras"}, {"left": "leftover", "right": "sobra"}, {"left": "enough", "right": "suficiente"}]}'),
('20000000-0000-0000-0000-000000000050', 'fill_blank', 5, '{"sentence": "We ___ milk. Can you buy some?", "options": ["ran out of", "have enough", "too many"], "correct": "ran out of", "translation": "Nós ficamos sem leite. Você pode comprar um pouco?"}'),
('20000000-0000-0000-0000-000000000050', 'word_order', 6, '{"words": ["dinner", "leftovers", "some", "have", "from", "We"], "correct_sentence": "We have some leftovers from dinner", "translation": "Nós temos algumas sobras do jantar"}'),
('20000000-0000-0000-0000-000000000050', 'listening', 7, '{"audio_text": "There is nothing in the fridge. We need to go shopping.", "question": "What is in the fridge?", "options": ["a lot of food", "nothing", "leftovers"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000050', 'typing', 8, '{"prompt_pt": "Traduza: ''Nós temos comida suficiente para todos.''", "expected": "We have enough food for everyone.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

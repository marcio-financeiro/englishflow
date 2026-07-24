-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 5 "Food"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 013_seed_a1_present_simple.sql (vocabulário 241-270,
-- módulo 10000000-...-000009, lições 20000000-...-000041 a 045).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000241', 'apple', 'ˈæpəl', 'noun', 'maçã', 'I eat an apple every morning.', 'Eu como uma maçã toda manhã.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000242', 'banana', 'bəˈnænə', 'noun', 'banana', 'She likes banana with breakfast.', 'Ela gosta de banana no café da manhã.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000243', 'bread', 'bred', 'noun', 'pão', 'We buy fresh bread every day.', 'Nós compramos pão fresco todo dia.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000244', 'rice', 'raɪs', 'noun', 'arroz', 'They eat rice with lunch.', 'Eles comem arroz no almoço.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000245', 'chicken', 'ˈtʃɪkɪn', 'noun', 'frango', 'He cooks chicken for dinner.', 'Ele cozinha frango para o jantar.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000246', 'fish', 'fɪʃ', 'noun', 'peixe', 'I don''t like fish.', 'Eu não gosto de peixe.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000247', 'meat', 'miːt', 'noun', 'carne', 'He doesn''t eat meat.', 'Ele não come carne.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000248', 'egg', 'eɡ', 'noun', 'ovo', 'I have eggs for breakfast.', 'Eu tomo ovos no café da manhã.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000249', 'milk', 'mɪlk', 'noun', 'leite', 'She drinks milk every morning.', 'Ela bebe leite toda manhã.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000250', 'water', 'ˈwɔːtər', 'noun', 'água', 'I drink a lot of water every day.', 'Eu bebo muita água todo dia.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000251', 'coffee', 'ˈkɒfi', 'noun', 'café (bebida)', 'He drinks coffee in the morning.', 'Ele bebe café de manhã.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000252', 'tea', 'tiː', 'noun', 'chá', 'She drinks tea in the afternoon.', 'Ela bebe chá à tarde.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000253', 'juice', 'dʒuːs', 'noun', 'suco', 'I like orange juice.', 'Eu gosto de suco de laranja.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000254', 'vegetable', 'ˈvedʒtəbəl', 'noun', 'vegetal / legume', 'She likes vegetables in her salad.', 'Ela gosta de vegetais na salada dela.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000255', 'salad', 'ˈsæləd', 'noun', 'salada', 'I want a salad, please.', 'Eu quero uma salada, por favor.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000256', 'soup', 'suːp', 'noun', 'sopa', 'This soup is delicious.', 'Esta sopa está deliciosa.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000257', 'cheese', 'tʃiːz', 'noun', 'queijo', 'I love cheese.', 'Eu amo queijo.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000258', 'butter', 'ˈbʌtər', 'noun', 'manteiga', 'She puts butter on the bread.', 'Ela passa manteiga no pão.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000259', 'sugar', 'ˈʃʊɡər', 'noun', 'açúcar', 'I don''t like sugar in my coffee.', 'Eu não gosto de açúcar no meu café.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000260', 'salt', 'sɔːlt', 'noun', 'sal', 'This soup needs more salt.', 'Esta sopa precisa de mais sal.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000261', 'restaurant', 'ˈrestrɒnt', 'noun', 'restaurante', 'We eat at this restaurant every weekend.', 'Nós comemos neste restaurante todo fim de semana.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000262', 'menu', 'ˈmenjuː', 'noun', 'cardápio', 'Can I see the menu, please?', 'Posso ver o cardápio, por favor?', 'A1', array['food']),
('30000000-0000-0000-0000-000000000263', 'waiter', 'ˈweɪtər', 'noun', 'garçom', 'The waiter brings the menu.', 'O garçom traz o cardápio.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000264', 'to order', 'tuː ˈɔːrdər', 'verb', 'pedir (comida)', 'We need to order our food now.', 'Nós precisamos pedir nossa comida agora.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000265', 'bill', 'bɪl', 'noun', 'a conta', 'Can I have the bill, please?', 'Posso pedir a conta, por favor?', 'A1', array['food']),
('30000000-0000-0000-0000-000000000266', 'delicious', 'dɪˈlɪʃəs', 'adjective', 'delicioso(a)', 'This food is delicious.', 'Esta comida está deliciosa.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000267', 'spicy', 'ˈspaɪsi', 'adjective', 'picante', 'This food is very spicy.', 'Esta comida é muito picante.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000268', 'breakfast', 'ˈbrekfəst', 'noun', 'café da manhã', 'What time do you eat breakfast?', 'Que horas você toma café da manhã?', 'A1', array['food']),
('30000000-0000-0000-0000-000000000269', 'lunch', 'lʌntʃ', 'noun', 'almoço', 'We have lunch at noon.', 'Nós almoçamos ao meio-dia.', 'A1', array['food']),
('30000000-0000-0000-0000-000000000270', 'dinner', 'ˈdɪnər', 'noun', 'jantar', 'The dinner is delicious.', 'O jantar está delicioso.', 'A1', array['food']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000009', 'A1', 'Food', 'Vocabulário de comidas, bebidas e como pedir em um restaurante.', 5, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000041', '10000000-0000-0000-0000-000000000009', 'Fruits & Vegetables', 1, 10),
('20000000-0000-0000-0000-000000000042', '10000000-0000-0000-0000-000000000009', 'Meat, Fish & Eggs', 2, 10),
('20000000-0000-0000-0000-000000000043', '10000000-0000-0000-0000-000000000009', 'Drinks', 3, 10),
('20000000-0000-0000-0000-000000000044', '10000000-0000-0000-0000-000000000009', 'At the Restaurant', 4, 10),
('20000000-0000-0000-0000-000000000045', '10000000-0000-0000-0000-000000000009', 'Breakfast, Lunch & Dinner (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 5.1: Fruits & Vegetables ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000041', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000241"}'),
('20000000-0000-0000-0000-000000000041', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000254"}'),
('20000000-0000-0000-0000-000000000041', 'multiple_choice', 3, '{"question": "Complete: I eat an ___ every morning.", "audio_text": null, "options": ["apple", "bread", "water"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000041', 'fill_blank', 4, '{"sentence": "She likes ___ in her salad.", "options": ["vegetables", "meat", "milk"], "correct": "vegetables", "translation": "Ela gosta de vegetais na salada dela."}'),
('20000000-0000-0000-0000-000000000041', 'matching', 5, '{"pairs": [{"left": "apple", "right": "maçã"}, {"left": "banana", "right": "banana"}, {"left": "bread", "right": "pão"}, {"left": "salad", "right": "salada"}]}'),
('20000000-0000-0000-0000-000000000041', 'word_order', 6, '{"words": ["salad", "a", "I", "want"], "correct_sentence": "I want a salad", "translation": "Eu quero uma salada"}'),
('20000000-0000-0000-0000-000000000041', 'listening', 7, '{"audio_text": "I eat an apple and a banana every day.", "question": "What fruits does the speaker eat?", "options": ["apple and banana", "bread and rice", "chicken and fish"], "correct_index": 0}');

-- ---------- Lição 5.2: Meat, Fish & Eggs ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000042', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000245"}'),
('20000000-0000-0000-0000-000000000042', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000248"}'),
('20000000-0000-0000-0000-000000000042', 'multiple_choice', 3, '{"question": "Complete: I have ___ for breakfast.", "audio_text": null, "options": ["eggs", "water", "salad"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000042', 'fill_blank', 4, '{"sentence": "He doesn''t eat ___. He is vegetarian.", "options": ["meat", "rice", "bread"], "correct": "meat", "translation": "Ele não come carne. Ele é vegetariano."}'),
('20000000-0000-0000-0000-000000000042', 'matching', 5, '{"pairs": [{"left": "chicken", "right": "frango"}, {"left": "fish", "right": "peixe"}, {"left": "meat", "right": "carne"}, {"left": "egg", "right": "ovo"}]}'),
('20000000-0000-0000-0000-000000000042', 'word_order', 6, '{"words": ["fish", "like", "I", "don''t"], "correct_sentence": "I don''t like fish", "translation": "Eu não gosto de peixe"}'),
('20000000-0000-0000-0000-000000000042', 'dictation', 7, '{"audio_text": "She eats chicken and rice for lunch.", "expected": "She eats chicken and rice for lunch."}');

-- ---------- Lição 5.3: Drinks ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000043', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000250"}'),
('20000000-0000-0000-0000-000000000043', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000251"}'),
('20000000-0000-0000-0000-000000000043', 'multiple_choice', 3, '{"question": "What do you drink in the morning? I drink ___.", "audio_text": null, "options": ["coffee", "rice", "meat"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000043', 'fill_blank', 4, '{"sentence": "I drink a lot of ___ every day.", "options": ["water", "bread", "meat"], "correct": "water", "translation": "Eu bebo muita água todo dia."}'),
('20000000-0000-0000-0000-000000000043', 'matching', 5, '{"pairs": [{"left": "water", "right": "água"}, {"left": "coffee", "right": "café"}, {"left": "tea", "right": "chá"}, {"left": "juice", "right": "suco"}]}'),
('20000000-0000-0000-0000-000000000043', 'word_order', 6, '{"words": ["orange", "like", "juice", "I"], "correct_sentence": "I like orange juice", "translation": "Eu gosto de suco de laranja"}'),
('20000000-0000-0000-0000-000000000043', 'listening', 7, '{"audio_text": "She drinks tea in the morning and juice in the afternoon.", "question": "What does she drink in the morning?", "options": ["tea", "juice", "coffee"], "correct_index": 0}');

-- ---------- Lição 5.4: At the Restaurant ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000044', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000263"}'),
('20000000-0000-0000-0000-000000000044', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000264"}'),
('20000000-0000-0000-0000-000000000044', 'multiple_choice', 3, '{"question": "Complete: Excuse me, waiter! Can I see the ___?", "audio_text": null, "options": ["menu", "bill", "salad"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000044', 'fill_blank', 4, '{"sentence": "We need to ___ our food now.", "options": ["order", "orders", "ordering"], "correct": "order", "translation": "Nós precisamos pedir nossa comida agora."}'),
('20000000-0000-0000-0000-000000000044', 'matching', 5, '{"pairs": [{"left": "restaurant", "right": "restaurante"}, {"left": "menu", "right": "cardápio"}, {"left": "waiter", "right": "garçom"}, {"left": "bill", "right": "a conta"}]}'),
('20000000-0000-0000-0000-000000000044', 'word_order', 6, '{"words": ["bill", "please", "the", "Can", "I", "have"], "correct_sentence": "Can I have the bill please", "translation": "Posso pedir a conta, por favor?"}'),
('20000000-0000-0000-0000-000000000044', 'listening', 7, '{"audio_text": "The waiter brings the menu and we order chicken and rice.", "question": "What do they order?", "options": ["chicken and rice", "fish and salad", "pizza"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000044', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu quero pedir uma salada, por favor.''", "expected": "I want to order a salad, please.", "ai_review": true}');

-- ---------- Lição 5.5: Breakfast, Lunch & Dinner (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000045', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000268"}'),
('20000000-0000-0000-0000-000000000045', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000270"}'),
('20000000-0000-0000-0000-000000000045', 'multiple_choice', 3, '{"question": "What meal do you eat in the morning?", "audio_text": null, "options": ["Breakfast", "Lunch", "Dinner"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000045', 'matching', 4, '{"pairs": [{"left": "breakfast", "right": "café da manhã"}, {"left": "lunch", "right": "almoço"}, {"left": "dinner", "right": "jantar"}, {"left": "delicious", "right": "delicioso"}]}'),
('20000000-0000-0000-0000-000000000045', 'fill_blank', 5, '{"sentence": "This soup is very ___! I love it.", "options": ["delicious", "spicy", "cheap"], "correct": "delicious", "translation": "Esta sopa está deliciosa! Eu adoro."}'),
('20000000-0000-0000-0000-000000000045', 'word_order', 6, '{"words": ["spicy", "is", "food", "This", "very"], "correct_sentence": "This food is very spicy", "translation": "Esta comida é muito picante"}'),
('20000000-0000-0000-0000-000000000045', 'listening', 7, '{"audio_text": "We have breakfast at seven, lunch at noon, and dinner at eight.", "question": "What time is dinner?", "options": ["Seven", "Noon", "Eight"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000045', 'typing', 8, '{"prompt_pt": "Traduza: ''O jantar está delicioso.''", "expected": "The dinner is delicious.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

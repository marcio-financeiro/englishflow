-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 13 "Restaurants & Dining Out"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 030_seed_a2_feelings_personality.sql (vocabulário
-- 751-780, módulo 10000000-...-000026, lições 20000000-...-000126 a 130).
-- Quarto dos 6 novos temas de A2.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000751', 'reservation', 'ˌrezərˈveɪʃn', 'noun', 'reserva (mesa)', 'I have a reservation for two.', 'Eu tenho uma reserva para duas pessoas.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000752', 'table for two', 'ˈteɪbl fɔːr tuː', 'phrase', 'mesa para dois', 'A table for two, please.', 'Uma mesa para dois, por favor.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000753', 'menu', 'ˈmenjuː', 'noun', 'cardápio', 'Can I see the menu, please?', 'Posso ver o cardápio, por favor?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000754', 'waiter', 'ˈweɪtər', 'noun', 'garçom', 'The waiter recommended the fish.', 'O garçom recomendou o peixe.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000755', 'to order', 'tuː ˈɔːrdər', 'verb', 'pedir (comida)', 'Are you ready to order?', 'Você está pronto para pedir?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000756', 'starter', 'ˈstɑːrtər', 'noun', 'entrada (prato)', 'We''ll have the soup as a starter.', 'Nós vamos querer a sopa como entrada.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000757', 'main course', 'meɪn kɔːrs', 'noun', 'prato principal', 'What''s the main course today?', 'Qual é o prato principal hoje?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000758', 'dessert', 'dɪˈzɜːrt', 'noun', 'sobremesa', 'Do you want dessert?', 'Você quer sobremesa?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000759', 'to recommend', 'tuː ˌrekəˈmend', 'verb', 'recomendar (prato)', 'What do you recommend?', 'O que você recomenda?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000760', 'to taste', 'tuː teɪst', 'verb', 'provar / ter gosto de', 'This soup tastes delicious.', 'Essa sopa está deliciosa.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000761', 'flavor', 'ˈfleɪvər', 'noun', 'sabor', 'This dish has a great flavor.', 'Esse prato tem um ótimo sabor.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000762', 'spicy', 'ˈspaɪsi', 'adjective', 'apimentado', 'This curry is very spicy.', 'Esse curry é muito apimentado.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000763', 'allergic', 'əˈlɜːrdʒɪk', 'adjective', 'alérgico', 'I''m allergic to peanuts.', 'Eu sou alérgico a amendoim.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000764', 'ingredient', 'ɪnˈɡriːdiənt', 'noun', 'ingrediente', 'What are the ingredients in this dish?', 'Quais são os ingredientes desse prato?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000765', 'bill', 'bɪl', 'noun', 'conta (a pagar)', 'Can we have the bill, please?', 'Podemos ter a conta, por favor?', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000766', 'tip', 'tɪp', 'noun', 'gorjeta', 'We left a good tip.', 'Nós deixamos uma boa gorjeta.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000767', 'to split the bill', 'tuː splɪt ðə bɪl', 'verb', 'dividir a conta', 'Let''s split the bill.', 'Vamos dividir a conta.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000768', 'to be starving', 'tuː biː ˈstɑːrvɪŋ', 'verb', 'estar faminto', 'I''m starving, let''s eat now.', 'Eu estou faminto, vamos comer agora.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000769', 'to be full', 'tuː biː fʊl', 'verb', 'estar satisfeito / cheio', 'I''m full, I can''t eat more.', 'Eu estou satisfeito, não consigo comer mais.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000770', 'takeout', 'ˈteɪkaʊt', 'noun', 'comida para viagem', 'Let''s get takeout tonight.', 'Vamos pedir comida para viagem hoje à noite.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000771', 'to deliver', 'tuː dɪˈlɪvər', 'verb', 'entregar (delivery)', 'This restaurant delivers to my area.', 'Esse restaurante entrega na minha área.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000772', 'well done', 'wel dʌn', 'phrase', 'bem passado', 'I''d like my steak well done.', 'Eu gostaria do meu bife bem passado.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000773', 'rare', 'reər', 'adjective', 'mal passado', 'He likes his steak rare.', 'Ele gosta do bife dele mal passado.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000774', 'to book a table', 'tuː bʊk ə ˈteɪbl', 'verb', 'reservar uma mesa', 'I booked a table for eight o''clock.', 'Eu reservei uma mesa para as oito.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000775', 'course', 'kɔːrs', 'noun', 'prato (etapa da refeição)', 'This is a three-course meal.', 'Essa é uma refeição de três pratos.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000776', 'to complain', 'tuː kəmˈpleɪn', 'verb', 'reclamar', 'She complained that the food was cold.', 'Ela reclamou que a comida estava fria.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000777', 'fresh', 'freʃ', 'adjective', 'fresco', 'The fish is very fresh here.', 'O peixe é muito fresco aqui.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000778', 'to be seated', 'tuː biː ˈsiːtɪd', 'verb', 'ser acomodado / sentar-se', 'We were seated near the window.', 'Nós fomos acomodados perto da janela.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000779', 'chef', 'ʃef', 'noun', 'chef de cozinha', 'The chef made a special dish for us.', 'O chef fez um prato especial para nós.', 'A2', array['restaurant']),
('30000000-0000-0000-0000-000000000780', 'to enjoy your meal', 'tuː ɪnˈdʒɔɪ jɔːr miːl', 'phrase', 'bom apetite', 'Enjoy your meal!', 'Bom apetite!', 'A2', array['restaurant']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000026', 'A2', 'Restaurants & Dining Out', 'Reservar mesa, pedir comida, descrever sabores e pagar a conta.', 13, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000126', '10000000-0000-0000-0000-000000000026', 'Booking a Table', 1, 10),
('20000000-0000-0000-0000-000000000127', '10000000-0000-0000-0000-000000000026', 'Ordering Food', 2, 10),
('20000000-0000-0000-0000-000000000128', '10000000-0000-0000-0000-000000000026', 'Flavors & Allergies', 3, 10),
('20000000-0000-0000-0000-000000000129', '10000000-0000-0000-0000-000000000026', 'The Bill', 4, 10),
('20000000-0000-0000-0000-000000000130', '10000000-0000-0000-0000-000000000026', 'Enjoy Your Meal (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 13.1: Booking a Table ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000126', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000751"}'),
('20000000-0000-0000-0000-000000000126', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000774"}'),
('20000000-0000-0000-0000-000000000126', 'multiple_choice', 3, '{"question": "Complete: I have a ___ for two.", "audio_text": null, "options": ["reservation", "menu", "bill"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000126', 'fill_blank', 4, '{"sentence": "A ___, please.", "options": ["table for two", "main course", "starter"], "correct": "table for two", "translation": "Uma mesa para dois, por favor."}'),
('20000000-0000-0000-0000-000000000126', 'matching', 5, '{"pairs": [{"left": "reservation", "right": "reserva"}, {"left": "table for two", "right": "mesa para dois"}, {"left": "to book a table", "right": "reservar uma mesa"}, {"left": "to be seated", "right": "ser acomodado"}]}'),
('20000000-0000-0000-0000-000000000126', 'word_order', 6, '{"words": ["for", "table", "eight", "I", "a", "booked", "o''clock"], "correct_sentence": "I booked a table for eight o''clock", "translation": "Eu reservei uma mesa para as oito"}'),
('20000000-0000-0000-0000-000000000126', 'listening', 7, '{"audio_text": "We were seated near the window, and the waiter brought the menu.", "question": "Where were they seated?", "options": ["near the window", "near the kitchen", "outside"], "correct_index": 0}');

-- ---------- Lição 13.2: Ordering Food ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000127', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000755"}'),
('20000000-0000-0000-0000-000000000127', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000757"}'),
('20000000-0000-0000-0000-000000000127', 'multiple_choice', 3, '{"question": "Complete: Are you ready to ___?", "audio_text": null, "options": ["order", "taste", "complain"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000127', 'fill_blank', 4, '{"sentence": "We''ll have the soup as a ___.", "options": ["starter", "dessert", "bill"], "correct": "starter", "translation": "Nós vamos querer a sopa como entrada."}'),
('20000000-0000-0000-0000-000000000127', 'matching', 5, '{"pairs": [{"left": "to order", "right": "pedir"}, {"left": "starter", "right": "entrada"}, {"left": "main course", "right": "prato principal"}, {"left": "dessert", "right": "sobremesa"}]}'),
('20000000-0000-0000-0000-000000000127', 'word_order', 6, '{"words": ["main", "the", "What''s", "today", "course"], "correct_sentence": "What''s the main course today", "translation": "Qual é o prato principal hoje"}'),
('20000000-0000-0000-0000-000000000127', 'dictation', 7, '{"audio_text": "I''d like my steak well done, and my friend likes hers rare.", "expected": "I''d like my steak well done, and my friend likes hers rare."}');

-- ---------- Lição 13.3: Flavors & Allergies ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000128', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000762"}'),
('20000000-0000-0000-0000-000000000128', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000763"}'),
('20000000-0000-0000-0000-000000000128', 'multiple_choice', 3, '{"question": "Complete: This curry is very ___.", "audio_text": null, "options": ["spicy", "fresh", "full"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000128', 'fill_blank', 4, '{"sentence": "I''m ___ to peanuts.", "options": ["allergic", "spicy", "starving"], "correct": "allergic", "translation": "Eu sou alérgico a amendoim."}'),
('20000000-0000-0000-0000-000000000128', 'matching', 5, '{"pairs": [{"left": "flavor", "right": "sabor"}, {"left": "spicy", "right": "apimentado"}, {"left": "allergic", "right": "alérgico"}, {"left": "ingredient", "right": "ingrediente"}]}'),
('20000000-0000-0000-0000-000000000128', 'word_order', 6, '{"words": ["dish", "great", "has", "a", "This", "flavor"], "correct_sentence": "This dish has a great flavor", "translation": "Esse prato tem um ótimo sabor"}'),
('20000000-0000-0000-0000-000000000128', 'listening', 7, '{"audio_text": "The fish is very fresh here, and the chef made a special dish for us.", "question": "What did the chef do?", "options": ["made a special dish", "complained about the food", "left a tip"], "correct_index": 0}');

-- ---------- Lição 13.4: The Bill ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000129', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000765"}'),
('20000000-0000-0000-0000-000000000129', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000767"}'),
('20000000-0000-0000-0000-000000000129', 'multiple_choice', 3, '{"question": "Complete: Can we have the ___, please?", "audio_text": null, "options": ["bill", "tip", "menu"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000129', 'fill_blank', 4, '{"sentence": "Let''s ___ the bill.", "options": ["split", "order", "taste"], "correct": "split", "translation": "Vamos dividir a conta."}'),
('20000000-0000-0000-0000-000000000129', 'matching', 5, '{"pairs": [{"left": "bill", "right": "conta"}, {"left": "tip", "right": "gorjeta"}, {"left": "to split the bill", "right": "dividir a conta"}, {"left": "takeout", "right": "comida para viagem"}]}'),
('20000000-0000-0000-0000-000000000129', 'word_order', 6, '{"words": ["good", "left", "We", "tip", "a"], "correct_sentence": "We left a good tip", "translation": "Nós deixamos uma boa gorjeta"}'),
('20000000-0000-0000-0000-000000000129', 'typing', 7, '{"prompt_pt": "Traduza: ''Vamos pedir comida para viagem hoje à noite.''", "expected": "Let''s get takeout tonight.", "ai_review": true}');

-- ---------- Lição 13.5: Enjoy Your Meal (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000130', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000768"}'),
('20000000-0000-0000-0000-000000000130', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000780"}'),
('20000000-0000-0000-0000-000000000130', 'multiple_choice', 3, '{"question": "Complete: I''m ___, let''s eat now.", "audio_text": null, "options": ["starving", "full", "spicy"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000130', 'fill_blank', 4, '{"sentence": "I''m ___, I can''t eat more.", "options": ["full", "starving", "allergic"], "correct": "full", "translation": "Eu estou satisfeito, não consigo comer mais."}'),
('20000000-0000-0000-0000-000000000130', 'matching', 5, '{"pairs": [{"left": "to be starving", "right": "estar faminto"}, {"left": "to be full", "right": "estar satisfeito"}, {"left": "to enjoy your meal", "right": "bom apetite"}, {"left": "to complain", "right": "reclamar"}]}'),
('20000000-0000-0000-0000-000000000130', 'word_order', 6, '{"words": ["cold", "was", "the", "that", "food", "She", "complained"], "correct_sentence": "She complained that the food was cold", "translation": "Ela reclamou que a comida estava fria"}'),
('20000000-0000-0000-0000-000000000130', 'listening', 7, '{"audio_text": "This is a three-course meal, enjoy your meal!", "question": "What kind of meal is it?", "options": ["a three-course meal", "just dessert", "takeout"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000130', 'typing', 8, '{"prompt_pt": "Traduza: ''O peixe é muito fresco aqui.''", "expected": "The fish is very fresh here.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

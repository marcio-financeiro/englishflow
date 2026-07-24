-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 8 "Clothes & Shopping"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 019_seed_a1_directions.sql (vocabulário 421-450,
-- módulo 10000000-...-000015, lições 20000000-...-000071 a 075).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000421', 'shirt', 'ʃɜːrt', 'noun', 'camisa', 'I''m wearing a blue shirt.', 'Eu estou usando uma camisa azul.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000422', 'T-shirt', 'tiː ʃɜːrt', 'noun', 'camiseta', 'I''m wearing a T-shirt.', 'Eu estou usando uma camiseta.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000423', 'pants', 'pænts', 'noun', 'calça', 'These pants are new.', 'Essa calça é nova.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000424', 'shorts', 'ʃɔːrts', 'noun', 'bermuda / shorts', 'He is wearing shorts today.', 'Ele está usando bermuda hoje.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000425', 'dress', 'dres', 'noun', 'vestido', 'She is wearing a red dress.', 'Ela está usando um vestido vermelho.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000426', 'skirt', 'skɜːrt', 'noun', 'saia', 'I like this skirt.', 'Eu gosto dessa saia.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000427', 'jacket', 'ˈdʒækɪt', 'noun', 'jaqueta', 'It''s cold. I need my jacket.', 'Está frio. Eu preciso da minha jaqueta.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000428', 'coat', 'koʊt', 'noun', 'casaco', 'I need a new coat for winter.', 'Eu preciso de um casaco novo para o inverno.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000429', 'sweater', 'ˈswetər', 'noun', 'suéter', 'He always wears a sweater in winter.', 'Ele sempre usa um suéter no inverno.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000430', 'shoes', 'ʃuːz', 'noun', 'sapatos', 'These shoes are very comfortable.', 'Esses sapatos são muito confortáveis.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000431', 'socks', 'sɒks', 'noun', 'meias', 'My socks don''t match.', 'Minhas meias não combinam.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000432', 'hat', 'hæt', 'noun', 'chapéu / boné', 'She''s wearing a hat.', 'Ela está usando um chapéu.', 'A1', array['clothes']),
('30000000-0000-0000-0000-000000000433', 'to wear', 'tuː weər', 'verb', 'vestir / usar', 'What are you wearing?', 'O que você está vestindo?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000434', 'to try on', 'tuː traɪ ɒn', 'verb', 'experimentar (roupa)', 'Can I try on this shirt?', 'Posso experimentar essa camisa?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000435', 'fitting room', 'ˈfɪtɪŋ ruːm', 'noun', 'provador', 'The fitting room is over there.', 'O provador fica ali.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000436', 'small', 'smɔːl', 'adjective', 'pequeno(a) (tamanho)', 'I need a small, not a medium.', 'Eu preciso de um pequeno, não de um médio.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000437', 'medium', 'ˈmiːdiəm', 'adjective', 'médio(a) (tamanho)', 'I need a medium.', 'Eu preciso de um médio.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000438', 'large', 'lɑːrdʒ', 'adjective', 'grande (tamanho)', 'I need a large.', 'Eu preciso de um grande.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000439', 'color', 'ˈkʌlər', 'noun', 'cor', 'What color do you want?', 'Que cor você quer?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000440', 'cash', 'kæʃ', 'noun', 'dinheiro (em espécie)', 'I''ll pay in cash.', 'Eu vou pagar em dinheiro.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000441', 'credit card', 'ˈkredɪt kɑːrd', 'noun', 'cartão de crédito', 'Do you accept credit card?', 'Vocês aceitam cartão de crédito?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000442', 'to pay', 'tuː peɪ', 'verb', 'pagar', 'I''ll pay with a credit card.', 'Eu vou pagar com cartão de crédito.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000443', 'receipt', 'rɪˈsiːt', 'noun', 'recibo', 'I need my receipt.', 'Eu preciso do meu recibo.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000444', 'discount', 'ˈdɪskaʊnt', 'noun', 'desconto', 'This store has a big discount today.', 'Esta loja tem um grande desconto hoje.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000445', 'sale', 'seɪl', 'noun', 'promoção / liquidação', 'Everything is on sale.', 'Tudo está em promoção.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000446', 'mall', 'mɔːl', 'noun', 'shopping (centro comercial)', 'I love this new mall.', 'Eu adoro esse novo shopping.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000447', 'store', 'stɔːr', 'noun', 'loja', 'This store is very big.', 'Esta loja é muito grande.', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000448', 'cashier', 'kæˈʃɪər', 'noun', 'caixa (pessoa)', 'Where is the cashier?', 'Onde fica o caixa?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000449', 'to cost', 'tuː kɒst', 'verb', 'custar', 'How much does this cost?', 'Quanto isso custa?', 'A1', array['shopping']),
('30000000-0000-0000-0000-000000000450', 'new', 'nuː', 'adjective', 'novo(a)', 'This jacket is new.', 'Esta jaqueta é nova.', 'A1', array['shopping']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000015', 'A1', 'Clothes & Shopping', 'Vocabulário de roupas, tamanhos e como pagar em uma loja.', 8, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000071', '10000000-0000-0000-0000-000000000015', 'What Are You Wearing?', 1, 10),
('20000000-0000-0000-0000-000000000072', '10000000-0000-0000-0000-000000000015', 'Jackets & Sweaters', 2, 10),
('20000000-0000-0000-0000-000000000073', '10000000-0000-0000-0000-000000000015', 'Trying It On', 3, 10),
('20000000-0000-0000-0000-000000000074', '10000000-0000-0000-0000-000000000015', 'Paying at the Store', 4, 10),
('20000000-0000-0000-0000-000000000075', '10000000-0000-0000-0000-000000000015', 'Sales & Discounts (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 8.1: What Are You Wearing? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000071', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000421"}'),
('20000000-0000-0000-0000-000000000071', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000423"}'),
('20000000-0000-0000-0000-000000000071', 'multiple_choice', 3, '{"question": "Complete: I''m wearing a blue ___.", "audio_text": null, "options": ["shirt", "shoes", "hat"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000071', 'fill_blank', 4, '{"sentence": "She is wearing a red ___.", "options": ["dress", "pants", "socks"], "correct": "dress", "translation": "Ela está usando um vestido vermelho."}'),
('20000000-0000-0000-0000-000000000071', 'matching', 5, '{"pairs": [{"left": "shirt", "right": "camisa"}, {"left": "pants", "right": "calça"}, {"left": "dress", "right": "vestido"}, {"left": "skirt", "right": "saia"}]}'),
('20000000-0000-0000-0000-000000000071', 'word_order', 6, '{"words": ["a", "wearing", "T-shirt", "I''m"], "correct_sentence": "I''m wearing a T-shirt", "translation": "Eu estou usando uma camiseta"}'),
('20000000-0000-0000-0000-000000000071', 'listening', 7, '{"audio_text": "He is wearing shorts and a T-shirt today.", "question": "What is he wearing?", "options": ["shorts and a T-shirt", "pants and a shirt", "a dress"], "correct_index": 0}');

-- ---------- Lição 8.2: Jackets & Sweaters ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000072', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000427"}'),
('20000000-0000-0000-0000-000000000072', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000432"}'),
('20000000-0000-0000-0000-000000000072', 'multiple_choice', 3, '{"question": "Complete: It''s cold. I need my ___.", "audio_text": null, "options": ["jacket", "shorts", "T-shirt"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000072', 'fill_blank', 4, '{"sentence": "He always wears a ___ in winter.", "options": ["sweater", "T-shirt", "shorts"], "correct": "sweater", "translation": "Ele sempre usa um suéter no inverno."}'),
('20000000-0000-0000-0000-000000000072', 'matching', 5, '{"pairs": [{"left": "jacket", "right": "jaqueta"}, {"left": "coat", "right": "casaco"}, {"left": "sweater", "right": "suéter"}, {"left": "socks", "right": "meias"}]}'),
('20000000-0000-0000-0000-000000000072', 'word_order', 6, '{"words": ["a", "wearing", "hat", "She''s"], "correct_sentence": "She''s wearing a hat", "translation": "Ela está usando um chapéu"}'),
('20000000-0000-0000-0000-000000000072', 'dictation', 7, '{"audio_text": "I need a new coat for winter.", "expected": "I need a new coat for winter."}');

-- ---------- Lição 8.3: Trying It On ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000073', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000434"}'),
('20000000-0000-0000-0000-000000000073', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000435"}'),
('20000000-0000-0000-0000-000000000073', 'multiple_choice', 3, '{"question": "Complete: Can I ___ this shirt?", "audio_text": null, "options": ["try on", "wear", "pay"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000073', 'fill_blank', 4, '{"sentence": "The ___ is over there, next to the mirror.", "options": ["fitting room", "cashier", "store"], "correct": "fitting room", "translation": "O provador fica ali, ao lado do espelho."}'),
('20000000-0000-0000-0000-000000000073', 'matching', 5, '{"pairs": [{"left": "to wear", "right": "vestir/usar"}, {"left": "to try on", "right": "experimentar"}, {"left": "small", "right": "pequeno"}, {"left": "large", "right": "grande"}]}'),
('20000000-0000-0000-0000-000000000073', 'word_order', 6, '{"words": ["size", "do", "need", "you", "What"], "correct_sentence": "What size do you need", "translation": "Que tamanho você precisa?"}'),
('20000000-0000-0000-0000-000000000073', 'listening', 7, '{"audio_text": "I need a medium, not a small.", "question": "What size does the speaker need?", "options": ["medium", "small", "large"], "correct_index": 0}');

-- ---------- Lição 8.4: Paying at the Store ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000074', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000441"}'),
('20000000-0000-0000-0000-000000000074', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000442"}'),
('20000000-0000-0000-0000-000000000074', 'multiple_choice', 3, '{"question": "Complete: I''ll ___ with my credit card.", "audio_text": null, "options": ["pay", "wear", "cost"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000074', 'fill_blank', 4, '{"sentence": "Do you accept ___ or only cash?", "options": ["credit card", "receipt", "discount"], "correct": "credit card", "translation": "Vocês aceitam cartão de crédito ou só dinheiro?"}'),
('20000000-0000-0000-0000-000000000074', 'matching', 5, '{"pairs": [{"left": "cash", "right": "dinheiro"}, {"left": "credit card", "right": "cartão de crédito"}, {"left": "to pay", "right": "pagar"}, {"left": "receipt", "right": "recibo"}]}'),
('20000000-0000-0000-0000-000000000074', 'word_order', 6, '{"words": ["my", "receipt", "need", "I"], "correct_sentence": "I need my receipt", "translation": "Eu preciso do meu recibo"}'),
('20000000-0000-0000-0000-000000000074', 'listening', 7, '{"audio_text": "I''ll pay in cash, please. Can I have the receipt?", "question": "How does the speaker want to pay?", "options": ["in cash", "by credit card", "with a discount"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000074', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu vou pagar com cartão de crédito.''", "expected": "I''ll pay with a credit card.", "ai_review": true}');

-- ---------- Lição 8.5: Sales & Discounts (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000075', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000444"}'),
('20000000-0000-0000-0000-000000000075', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000446"}'),
('20000000-0000-0000-0000-000000000075', 'multiple_choice', 3, '{"question": "Complete: This store has a big ___ today. Everything is 50% off.", "audio_text": null, "options": ["sale", "receipt", "cashier"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000075', 'matching', 4, '{"pairs": [{"left": "discount", "right": "desconto"}, {"left": "sale", "right": "promoção"}, {"left": "mall", "right": "shopping"}, {"left": "store", "right": "loja"}]}'),
('20000000-0000-0000-0000-000000000075', 'fill_blank', 5, '{"sentence": "How much does this ___?", "options": ["cost", "pay", "wear"], "correct": "cost", "translation": "Quanto isso custa?"}'),
('20000000-0000-0000-0000-000000000075', 'word_order', 6, '{"words": ["is", "cashier", "the", "Where"], "correct_sentence": "Where is the cashier", "translation": "Onde fica o caixa?"}'),
('20000000-0000-0000-0000-000000000075', 'listening', 7, '{"audio_text": "This jacket is new, and it''s on sale with a big discount.", "question": "What is true about the jacket?", "options": ["it''s new and on sale", "it''s old and expensive", "it''s out of stock"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000075', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu adoro esse novo shopping.''", "expected": "I love this new mall.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

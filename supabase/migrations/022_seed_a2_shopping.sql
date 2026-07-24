-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 8 "Shopping"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 020_seed_a2_daily_conversations.sql (vocabulário
-- 451-480, módulo 10000000-...-000016, lições 20000000-...-000076 a 080).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000451', 'to return', 'tuː rɪˈtɜːrn', 'verb', 'devolver', 'I want to return this shirt. It doesn''t fit.', 'Eu quero devolver essa camisa. Ela não serve.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000452', 'to exchange', 'tuː ɪksˈtʃeɪndʒ', 'verb', 'trocar', 'I want to exchange this.', 'Eu quero trocar isso.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000453', 'refund', 'ˈriːfʌnd', 'noun', 'reembolso', 'Can I get a refund for this item?', 'Posso ter um reembolso por este item?', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000454', 'warranty', 'ˈwɒrənti', 'noun', 'garantia', 'This phone has a two-year warranty.', 'Este celular tem dois anos de garantia.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000455', 'to fit', 'tuː fɪt', 'verb', 'servir / caber (roupa)', 'These shoes don''t fit me. They''re too small.', 'Esses sapatos não me servem. Eles são pequenos demais.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000456', 'to match', 'tuː mætʃ', 'verb', 'combinar (cores/roupas)', 'This color doesn''t match your jacket.', 'Essa cor não combina com sua jaqueta.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000457', 'style', 'staɪl', 'noun', 'estilo', 'I like your style.', 'Eu gosto do seu estilo.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000458', 'brand', 'brænd', 'noun', 'marca', 'I like this brand.', 'Eu gosto dessa marca.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000459', 'customer', 'ˈkʌstəmər', 'noun', 'cliente', 'The customer is always right.', 'O cliente sempre tem razão.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000460', 'customer service', 'ˈkʌstəmər ˈsɜːrvɪs', 'noun', 'atendimento ao cliente', 'I need to talk to customer service about a problem.', 'Eu preciso falar com o atendimento ao cliente sobre um problema.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000461', 'to complain', 'tuː kəmˈpleɪn', 'verb', 'reclamar', 'She complained about the price.', 'Ela reclamou sobre o preço.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000462', 'complaint', 'kəmˈpleɪnt', 'noun', 'reclamação', 'I want to make a complaint.', 'Eu quero fazer uma reclamação.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000463', 'out of stock', 'aʊt ʌv stɒk', 'phrase', 'fora de estoque', 'Sorry, this item is out of stock.', 'Desculpe, este item está fora de estoque.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000464', 'in stock', 'ɪn stɒk', 'phrase', 'em estoque', 'The new model is in stock.', 'O novo modelo está em estoque.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000465', 'to order online', 'tuː ˈɔːrdər ˈɒnlaɪn', 'verb', 'comprar online', 'I always order online instead of going to the store.', 'Eu sempre compro online em vez de ir à loja.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000466', 'delivery', 'dɪˈlɪvəri', 'noun', 'entrega', 'The delivery will take five days.', 'A entrega vai demorar cinco dias.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000467', 'shipping', 'ˈʃɪpɪŋ', 'noun', 'frete', 'How much is the shipping for this order?', 'Quanto custa o frete para este pedido?', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000468', 'to browse', 'tuː braʊz', 'verb', 'dar uma olhada / navegar', 'I''m just browsing, thank you.', 'Eu só estou dando uma olhada, obrigado.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000469', 'to bargain', 'tuː ˈbɑːrɡɪn', 'verb', 'pechinchar / negociar preço', 'You can bargain at this market.', 'Você pode negociar o preço neste mercado.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000470', 'to afford', 'tuː əˈfɔːrd', 'verb', 'ter condições de pagar', 'I can''t afford this right now.', 'Eu não tenho condições de pagar isso agora.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000471', 'budget', 'ˈbʌdʒɪt', 'noun', 'orçamento', 'I need to stay within my budget this month.', 'Eu preciso me manter dentro do meu orçamento este mês.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000472', 'to save money', 'tuː seɪv ˈmʌni', 'verb', 'economizar dinheiro', 'I need to save money this month.', 'Eu preciso economizar dinheiro este mês.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000473', 'to spend', 'tuː spend', 'verb', 'gastar', 'I spent too much money today.', 'Eu gastei dinheiro demais hoje.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000474', 'worth it', 'wɜːrθ ɪt', 'phrase', 'vale a pena', 'It''s expensive, but it''s worth it.', 'É caro, mas vale a pena.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000475', 'a good deal', 'ə ɡʊd diːl', 'phrase', 'um bom negócio', 'This is a good deal. Great price for good quality!', 'Isso é um bom negócio. Ótimo preço por boa qualidade!', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000476', 'to compare prices', 'tuː kəmˈpeər ˈpraɪsɪz', 'verb', 'comparar preços', 'I always compare prices.', 'Eu sempre comparo preços.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000477', 'loyalty card', 'ˈlɔɪəlti kɑːrd', 'noun', 'cartão fidelidade', 'I have a loyalty card for this store.', 'Eu tenho um cartão fidelidade dessa loja.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000478', 'gift card', 'ɡɪft kɑːrd', 'noun', 'cartão presente', 'I got a gift card for my birthday.', 'Eu ganhei um cartão presente no meu aniversário.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000479', 'checkout', 'ˈtʃekaʊt', 'noun', 'caixa / finalização de compra', 'I added it to my cart and went to checkout.', 'Eu adicionei ao carrinho e fui para o checkout.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000480', 'cart', 'kɑːrt', 'noun', 'carrinho (de compras)', 'Three items are in my cart.', 'Três itens estão no meu carrinho.', 'A2', array['shopping']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000016', 'A2', 'Shopping', 'Devoluções, atendimento ao cliente, compras online e como economizar.', 8, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000076', '10000000-0000-0000-0000-000000000016', 'Returns & Exchanges', 1, 10),
('20000000-0000-0000-0000-000000000077', '10000000-0000-0000-0000-000000000016', 'Does It Fit?', 2, 10),
('20000000-0000-0000-0000-000000000078', '10000000-0000-0000-0000-000000000016', 'Customer Service', 3, 10),
('20000000-0000-0000-0000-000000000079', '10000000-0000-0000-0000-000000000016', 'Shopping Online', 4, 10),
('20000000-0000-0000-0000-000000000080', '10000000-0000-0000-0000-000000000016', 'Smart Shopping (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 8.1: Returns & Exchanges ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000076', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000451"}'),
('20000000-0000-0000-0000-000000000076', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000453"}'),
('20000000-0000-0000-0000-000000000076', 'multiple_choice', 3, '{"question": "Complete: I want to ___ this shirt. It doesn''t fit.", "audio_text": null, "options": ["return", "wear", "afford"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000076', 'fill_blank', 4, '{"sentence": "Can I get a ___ for this item?", "options": ["refund", "warranty", "style"], "correct": "refund", "translation": "Posso ter um reembolso por este item?"}'),
('20000000-0000-0000-0000-000000000076', 'matching', 5, '{"pairs": [{"left": "to return", "right": "devolver"}, {"left": "to exchange", "right": "trocar"}, {"left": "refund", "right": "reembolso"}, {"left": "warranty", "right": "garantia"}]}'),
('20000000-0000-0000-0000-000000000076', 'word_order', 6, '{"words": ["this", "exchange", "want", "to", "I"], "correct_sentence": "I want to exchange this", "translation": "Eu quero trocar isso"}'),
('20000000-0000-0000-0000-000000000076', 'listening', 7, '{"audio_text": "This phone has a two-year warranty.", "question": "How long is the warranty?", "options": ["two years", "one year", "six months"], "correct_index": 0}');

-- ---------- Lição 8.2: Does It Fit? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000077', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000455"}'),
('20000000-0000-0000-0000-000000000077', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000458"}'),
('20000000-0000-0000-0000-000000000077', 'multiple_choice', 3, '{"question": "Complete: These shoes don''t ___ me. They''re too small.", "audio_text": null, "options": ["fit", "match", "afford"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000077', 'fill_blank', 4, '{"sentence": "This color doesn''t ___ your jacket.", "options": ["match", "fit", "cost"], "correct": "match", "translation": "Essa cor não combina com sua jaqueta."}'),
('20000000-0000-0000-0000-000000000077', 'matching', 5, '{"pairs": [{"left": "to fit", "right": "servir/caber"}, {"left": "to match", "right": "combinar"}, {"left": "style", "right": "estilo"}, {"left": "brand", "right": "marca"}]}'),
('20000000-0000-0000-0000-000000000077', 'word_order', 6, '{"words": ["like", "brand", "I", "this"], "correct_sentence": "I like this brand", "translation": "Eu gosto dessa marca"}'),
('20000000-0000-0000-0000-000000000077', 'dictation', 7, '{"audio_text": "I like your style, but this brand is too expensive.", "expected": "I like your style, but this brand is too expensive."}');

-- ---------- Lição 8.3: Customer Service ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000078', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000460"}'),
('20000000-0000-0000-0000-000000000078', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000463"}'),
('20000000-0000-0000-0000-000000000078', 'multiple_choice', 3, '{"question": "Complete: I need to talk to ___ about a problem.", "audio_text": null, "options": ["customer service", "a customer", "a brand"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000078', 'fill_blank', 4, '{"sentence": "Sorry, this item is ___. We''ll get more next week.", "options": ["out of stock", "in stock", "on sale"], "correct": "out of stock", "translation": "Desculpe, este item está fora de estoque. Vamos receber mais na semana que vem."}'),
('20000000-0000-0000-0000-000000000078', 'matching', 5, '{"pairs": [{"left": "customer", "right": "cliente"}, {"left": "complaint", "right": "reclamação"}, {"left": "out of stock", "right": "fora de estoque"}, {"left": "in stock", "right": "em estoque"}]}'),
('20000000-0000-0000-0000-000000000078', 'word_order', 6, '{"words": ["a", "want", "complaint", "to", "make", "I"], "correct_sentence": "I want to make a complaint", "translation": "Eu quero fazer uma reclamação"}'),
('20000000-0000-0000-0000-000000000078', 'listening', 7, '{"audio_text": "This model is out of stock, but the new one is in stock.", "question": "What is out of stock?", "options": ["this model", "the new model", "nothing"], "correct_index": 0}');

-- ---------- Lição 8.4: Shopping Online ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000079', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000465"}'),
('20000000-0000-0000-0000-000000000079', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000466"}'),
('20000000-0000-0000-0000-000000000079', 'multiple_choice', 3, '{"question": "Complete: I always ___ instead of going to the store.", "audio_text": null, "options": ["order online", "return", "complain"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000079', 'fill_blank', 4, '{"sentence": "How much is the ___ for this order?", "options": ["shipping", "checkout", "cart"], "correct": "shipping", "translation": "Quanto custa o frete para este pedido?"}'),
('20000000-0000-0000-0000-000000000079', 'matching', 5, '{"pairs": [{"left": "to order online", "right": "comprar online"}, {"left": "delivery", "right": "entrega"}, {"left": "shipping", "right": "frete"}, {"left": "checkout", "right": "finalização de compra"}]}'),
('20000000-0000-0000-0000-000000000079', 'word_order', 6, '{"words": ["items", "cart", "my", "in", "Three", "are"], "correct_sentence": "Three items are in my cart", "translation": "Três itens estão no meu carrinho"}'),
('20000000-0000-0000-0000-000000000079', 'listening', 7, '{"audio_text": "I added it to my cart and went to checkout.", "question": "What did the speaker do first?", "options": ["added it to the cart", "went to checkout", "asked for a refund"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000079', 'typing', 8, '{"prompt_pt": "Traduza: ''A entrega vai demorar cinco dias.''", "expected": "The delivery will take five days.", "ai_review": true}');

-- ---------- Lição 8.5: Smart Shopping (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000080', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000471"}'),
('20000000-0000-0000-0000-000000000080', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000475"}'),
('20000000-0000-0000-0000-000000000080', 'multiple_choice', 3, '{"question": "Complete: I need to stay within my ___ this month.", "audio_text": null, "options": ["budget", "cart", "checkout"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000080', 'matching', 4, '{"pairs": [{"left": "budget", "right": "orçamento"}, {"left": "to save money", "right": "economizar dinheiro"}, {"left": "to spend", "right": "gastar"}, {"left": "worth it", "right": "vale a pena"}]}'),
('20000000-0000-0000-0000-000000000080', 'fill_blank', 5, '{"sentence": "This is ___. Great price for good quality!", "options": ["a good deal", "out of stock", "a complaint"], "correct": "a good deal", "translation": "Isso é um bom negócio. Ótimo preço por boa qualidade!"}'),
('20000000-0000-0000-0000-000000000080', 'word_order', 6, '{"words": ["prices", "always", "I", "compare"], "correct_sentence": "I always compare prices", "translation": "Eu sempre comparo preços"}'),
('20000000-0000-0000-0000-000000000080', 'listening', 7, '{"audio_text": "I have a loyalty card and a gift card. Can I use both?", "question": "What does the speaker have?", "options": ["a loyalty card and a gift card", "only a loyalty card", "only cash"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000080', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu preciso economizar dinheiro este mês.''", "expected": "I need to save money this month.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

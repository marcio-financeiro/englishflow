-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 4 "Comparatives"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 012_seed_a2_future.sql (vocabulário 211-240,
-- módulo 10000000-...-000008, lições 20000000-...-000036 a 040).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000211', 'bigger', 'ˈbɪɡər', 'adjective', 'maior', 'This house is bigger than mine.', 'Esta casa é maior que a minha.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000212', 'smaller', 'ˈsmɔːlər', 'adjective', 'menor', 'My car is smaller than his.', 'Meu carro é menor que o dele.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000213', 'taller', 'ˈtɔːlər', 'adjective', 'mais alto(a)', 'He is taller than his brother.', 'Ele é mais alto que o irmão dele.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000214', 'shorter', 'ˈʃɔːrtər', 'adjective', 'mais baixo(a) / curto(a)', 'She is shorter than me.', 'Ela é mais baixa que eu.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000215', 'faster', 'ˈfæstər', 'adjective', 'mais rápido(a)', 'This car is faster than that one.', 'Este carro é mais rápido que aquele.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000216', 'slower', 'ˈsloʊər', 'adjective', 'mais devagar / lento(a)', 'The bus is slower than the train.', 'O ônibus é mais lento que o trem.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000217', 'cheaper', 'ˈtʃiːpər', 'adjective', 'mais barato(a)', 'This phone is cheaper than that one.', 'Este celular é mais barato que aquele.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000218', 'more expensive', 'mɔːr ɪkˈspensɪv', 'phrase', 'mais caro(a)', 'That restaurant is more expensive than this one.', 'Aquele restaurante é mais caro que este.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000219', 'better', 'ˈbetər', 'adjective', 'melhor', 'This coffee is better than that one.', 'Este café é melhor que aquele.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000220', 'worse', 'wɜːrs', 'adjective', 'pior', 'The weather today is worse than yesterday.', 'O tempo hoje está pior que ontem.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000221', 'easier', 'ˈiːziər', 'adjective', 'mais fácil', 'English is easier than Chinese for me.', 'Inglês é mais fácil que chinês para mim.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000222', 'more difficult', 'mɔːr ˈdɪfɪkəlt', 'phrase', 'mais difícil', 'Math is more difficult than English.', 'Matemática é mais difícil que inglês.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000223', 'older', 'ˈoʊldər', 'adjective', 'mais velho(a)', 'My grandfather is older than my grandmother.', 'Meu avô é mais velho que minha avó.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000224', 'younger', 'ˈjʌŋɡər', 'adjective', 'mais jovem', 'My sister is younger than me.', 'Minha irmã é mais jovem que eu.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000225', 'more interesting', 'mɔːr ˈɪntrəstɪŋ', 'phrase', 'mais interessante', 'This book is more interesting than that movie.', 'Este livro é mais interessante que aquele filme.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000226', 'more beautiful', 'mɔːr ˈbjuːtəfəl', 'phrase', 'mais bonito(a)', 'This city is more beautiful than mine.', 'Esta cidade é mais bonita que a minha.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000227', 'as...as', 'æz æz', 'phrase', 'tão...quanto', 'She is as tall as her brother.', 'Ela é tão alta quanto o irmão dela.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000228', 'than', 'ðæn', 'conjunction', 'do que / que', 'He is taller than me.', 'Ele é mais alto que eu.', 'A2', array['comparatives']),
('30000000-0000-0000-0000-000000000229', 'the biggest', 'ðə ˈbɪɡɪst', 'phrase', 'o(a) maior', 'This is the biggest city in Brazil.', 'Esta é a maior cidade do Brasil.', 'A2', array['superlatives']),
('30000000-0000-0000-0000-000000000230', 'the best', 'ðə best', 'phrase', 'o(a) melhor', 'This is the best restaurant in town.', 'Este é o melhor restaurante da cidade.', 'A2', array['superlatives']),
('30000000-0000-0000-0000-000000000231', 'the worst', 'ðə wɜːrst', 'phrase', 'o(a) pior', 'That was the worst movie.', 'Aquele foi o pior filme.', 'A2', array['superlatives']),
('30000000-0000-0000-0000-000000000232', 'the most expensive', 'ðə moʊst ɪkˈspensɪv', 'phrase', 'o(a) mais caro(a)', 'This is the most expensive car here.', 'Este é o carro mais caro aqui.', 'A2', array['superlatives']),
('30000000-0000-0000-0000-000000000233', 'the cheapest', 'ðə ˈtʃiːpɪst', 'phrase', 'o(a) mais barato(a)', 'This is the cheapest option.', 'Esta é a opção mais barata.', 'A2', array['superlatives']),
('30000000-0000-0000-0000-000000000234', 'price', 'praɪs', 'noun', 'preço', 'What''s the price of this shirt?', 'Qual é o preço desta camisa?', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000235', 'expensive', 'ɪkˈspensɪv', 'adjective', 'caro(a)', 'This jacket is expensive.', 'Esta jaqueta é cara.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000236', 'cheap', 'tʃiːp', 'adjective', 'barato(a)', 'That store is cheap.', 'Aquela loja é barata.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000237', 'quality', 'ˈkwɒləti', 'noun', 'qualidade', 'This product has good quality.', 'Este produto tem boa qualidade.', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000238', 'size', 'saɪz', 'noun', 'tamanho', 'What size do you need?', 'Que tamanho você precisa?', 'A2', array['shopping']),
('30000000-0000-0000-0000-000000000239', 'different', 'ˈdɪfrənt', 'adjective', 'diferente', 'These two cities are very different.', 'Estas duas cidades são muito diferentes.', 'A2', array['descriptions']),
('30000000-0000-0000-0000-000000000240', 'similar', 'ˈsɪmələr', 'adjective', 'parecido(a) / semelhante', 'Our opinions are similar.', 'Nossas opiniões são parecidas.', 'A2', array['descriptions']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000008', 'A2', 'Comparatives', 'Compare pessoas, preços e lugares usando comparativos e superlativos.', 4, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000036', '10000000-0000-0000-0000-000000000008', 'Bigger, Smaller, Faster', 1, 10),
('20000000-0000-0000-0000-000000000037', '10000000-0000-0000-0000-000000000008', 'More Expensive, More Interesting', 2, 10),
('20000000-0000-0000-0000-000000000038', '10000000-0000-0000-0000-000000000008', 'Better, Worse', 3, 10),
('20000000-0000-0000-0000-000000000039', '10000000-0000-0000-0000-000000000008', 'As...As (Shopping)', 4, 10),
('20000000-0000-0000-0000-000000000040', '10000000-0000-0000-0000-000000000008', 'The Best, The Biggest (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 4.1: Bigger, Smaller, Faster ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000036', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000211"}'),
('20000000-0000-0000-0000-000000000036', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000215"}'),
('20000000-0000-0000-0000-000000000036', 'multiple_choice', 3, '{"question": "Complete: This car is ___ than that one.", "audio_text": null, "options": ["faster", "fast", "fastest"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000036', 'fill_blank', 4, '{"sentence": "My house is ___ than yours.", "options": ["bigger", "big", "biggest"], "correct": "bigger", "translation": "Minha casa é maior que a sua."}'),
('20000000-0000-0000-0000-000000000036', 'matching', 5, '{"pairs": [{"left": "bigger", "right": "maior"}, {"left": "smaller", "right": "menor"}, {"left": "faster", "right": "mais rápido"}, {"left": "than", "right": "do que"}]}'),
('20000000-0000-0000-0000-000000000036', 'word_order', 6, '{"words": ["than", "is", "taller", "He", "me"], "correct_sentence": "He is taller than me", "translation": "Ele é mais alto que eu"}'),
('20000000-0000-0000-0000-000000000036', 'listening', 7, '{"audio_text": "The train is slower than the plane, but it''s cheaper.", "question": "What is true about the train?", "options": ["It''s faster", "It''s slower", "It''s more expensive"], "correct_index": 1}');

-- ---------- Lição 4.2: More Expensive, More Interesting ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000037', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000218"}'),
('20000000-0000-0000-0000-000000000037', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000225"}'),
('20000000-0000-0000-0000-000000000037', 'multiple_choice', 3, '{"question": "Complete: This restaurant is ___ than that one.", "audio_text": null, "options": ["more expensive", "expensiver", "expensive"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000037', 'fill_blank', 4, '{"sentence": "Math is ___ than English for me.", "options": ["more difficult", "difficulter", "difficult"], "correct": "more difficult", "translation": "Matemática é mais difícil que inglês para mim."}'),
('20000000-0000-0000-0000-000000000037', 'matching', 5, '{"pairs": [{"left": "more expensive", "right": "mais caro"}, {"left": "more difficult", "right": "mais difícil"}, {"left": "more interesting", "right": "mais interessante"}, {"left": "more beautiful", "right": "mais bonito"}]}'),
('20000000-0000-0000-0000-000000000037', 'word_order', 6, '{"words": ["interesting", "book", "is", "more", "This"], "correct_sentence": "This book is more interesting", "translation": "Este livro é mais interessante"}'),
('20000000-0000-0000-0000-000000000037', 'dictation', 7, '{"audio_text": "This city is more beautiful than mine.", "expected": "This city is more beautiful than mine."}');

-- ---------- Lição 4.3: Better, Worse ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000038', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000219"}'),
('20000000-0000-0000-0000-000000000038', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000220"}'),
('20000000-0000-0000-0000-000000000038', 'multiple_choice', 3, '{"question": "Complete: This coffee is ___ than that one.", "audio_text": null, "options": ["better", "gooder", "best"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000038', 'fill_blank', 4, '{"sentence": "The weather today is ___ than yesterday.", "options": ["worse", "bad", "worst"], "correct": "worse", "translation": "O tempo hoje está pior que ontem."}'),
('20000000-0000-0000-0000-000000000038', 'matching', 5, '{"pairs": [{"left": "better", "right": "melhor"}, {"left": "worse", "right": "pior"}, {"left": "easier", "right": "mais fácil"}, {"left": "older", "right": "mais velho"}]}'),
('20000000-0000-0000-0000-000000000038', 'word_order', 6, '{"words": ["than", "is", "Chinese", "easier", "English"], "correct_sentence": "English is easier than Chinese", "translation": "Inglês é mais fácil que chinês"}'),
('20000000-0000-0000-0000-000000000038', 'listening', 7, '{"audio_text": "My grandfather is older than my grandmother, but she is faster than him.", "question": "Who is older?", "options": ["grandfather", "grandmother", "they are the same age"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000038', 'typing', 8, '{"prompt_pt": "Traduza: ''Este é melhor que aquele.''", "expected": "This is better than that one.", "ai_review": true}');

-- ---------- Lição 4.4: As...As (Shopping) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000039', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000227"}'),
('20000000-0000-0000-0000-000000000039', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000234"}'),
('20000000-0000-0000-0000-000000000039', 'multiple_choice', 3, '{"question": "Complete: She is as tall ___ her brother.", "audio_text": null, "options": ["as", "than", "like"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000039', 'fill_blank', 4, '{"sentence": "This store is very ___. Everything costs very little.", "options": ["cheap", "expensive", "different"], "correct": "cheap", "translation": "Esta loja é muito barata. Tudo custa muito pouco."}'),
('20000000-0000-0000-0000-000000000039', 'matching', 5, '{"pairs": [{"left": "price", "right": "preço"}, {"left": "expensive", "right": "caro"}, {"left": "cheap", "right": "barato"}, {"left": "size", "right": "tamanho"}]}'),
('20000000-0000-0000-0000-000000000039', 'word_order', 6, '{"words": ["as", "is", "brother", "her", "tall", "as", "She"], "correct_sentence": "She is as tall as her brother", "translation": "Ela é tão alta quanto o irmão dela"}'),
('20000000-0000-0000-0000-000000000039', 'listening', 7, '{"audio_text": "What''s the price of this jacket? It''s expensive, but the quality is good.", "question": "Is the jacket cheap or expensive?", "options": ["cheap", "expensive", "free"], "correct_index": 1}');

-- ---------- Lição 4.5: The Best, The Biggest (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000040', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000229"}'),
('20000000-0000-0000-0000-000000000040', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000230"}'),
('20000000-0000-0000-0000-000000000040', 'multiple_choice', 3, '{"question": "Complete: This is ___ restaurant in town.", "audio_text": null, "options": ["the best", "the better", "best"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000040', 'matching', 4, '{"pairs": [{"left": "the biggest", "right": "o maior"}, {"left": "the best", "right": "o melhor"}, {"left": "the worst", "right": "o pior"}, {"left": "the cheapest", "right": "o mais barato"}]}'),
('20000000-0000-0000-0000-000000000040', 'fill_blank', 5, '{"sentence": "This is ___ car here.", "options": ["the most expensive", "more expensive", "expensive"], "correct": "the most expensive", "translation": "Este é o carro mais caro aqui."}'),
('20000000-0000-0000-0000-000000000040', 'word_order', 6, '{"words": ["city", "is", "the", "biggest", "This", "in Brazil"], "correct_sentence": "This is the biggest city in Brazil", "translation": "Esta é a maior cidade do Brasil"}'),
('20000000-0000-0000-0000-000000000040', 'listening', 7, '{"audio_text": "This is the cheapest option, but the quality is the worst.", "question": "What is true about this option?", "options": ["cheapest and best quality", "cheapest and worst quality", "most expensive"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000040', 'typing', 8, '{"prompt_pt": "Traduza: ''Este é o melhor restaurante da cidade.''", "expected": "This is the best restaurant in town.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

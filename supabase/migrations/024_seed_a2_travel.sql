-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 9 "Travel"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 022_seed_a2_shopping.sql (vocabulário
-- 511-540, módulo 10000000-...-000018, lições 20000000-...-000086 a 090).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000511', 'airport', 'ˈeərpɔːrt', 'noun', 'aeroporto', 'We need to be at the airport two hours early.', 'Precisamos estar no aeroporto duas horas antes.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000512', 'flight', 'flaɪt', 'noun', 'voo', 'Our flight is delayed.', 'Nosso voo está atrasado.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000513', 'passport', 'ˈpæspɔːrt', 'noun', 'passaporte', 'Don''t forget your passport.', 'Não esqueça seu passaporte.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000514', 'luggage', 'ˈlʌɡɪdʒ', 'noun', 'bagagem', 'My luggage is very heavy.', 'Minha bagagem está muito pesada.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000515', 'to check in', 'tuː tʃek ɪn', 'verb', 'fazer check-in', 'We need to check in online.', 'Precisamos fazer check-in online.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000516', 'boarding pass', 'ˈbɔːrdɪŋ pæs', 'noun', 'cartão de embarque', 'Show your boarding pass, please.', 'Mostre seu cartão de embarque, por favor.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000517', 'delayed', 'dɪˈleɪd', 'adjective', 'atrasado', 'The flight is delayed by two hours.', 'O voo está atrasado em duas horas.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000518', 'to arrive', 'tuː əˈraɪv', 'verb', 'chegar', 'We arrive at noon.', 'Nós chegamos ao meio-dia.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000519', 'to depart', 'tuː dɪˈpɑːrt', 'verb', 'partir', 'The train departs at nine.', 'O trem parte às nove.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000520', 'destination', 'ˌdestɪˈneɪʃn', 'noun', 'destino', 'What is your destination?', 'Qual é o seu destino?', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000521', 'hotel', 'hoʊˈtel', 'noun', 'hotel', 'We booked a hotel near the beach.', 'Reservamos um hotel perto da praia.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000522', 'reservation', 'ˌrezərˈveɪʃn', 'noun', 'reserva', 'I have a reservation for two nights.', 'Eu tenho uma reserva para duas noites.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000523', 'to book', 'tuː bʊk', 'verb', 'reservar', 'I booked a room online.', 'Eu reservei um quarto online.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000524', 'to check out', 'tuː tʃek aʊt', 'verb', 'fazer check-out', 'Check-out is at eleven.', 'O check-out é às onze.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000525', 'tourist', 'ˈtʊərɪst', 'noun', 'turista', 'There are many tourists here in summer.', 'Há muitos turistas aqui no verão.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000526', 'sightseeing', 'ˈsaɪtsiːɪŋ', 'noun', 'passeio turístico', 'We went sightseeing all day.', 'Passeamos o dia todo.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000527', 'map', 'mæp', 'noun', 'mapa', 'Can you show me on the map?', 'Você pode me mostrar no mapa?', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000528', 'to get lost', 'tuː ɡet lɒst', 'verb', 'se perder', 'We got lost in the old city.', 'Nós nos perdemos na cidade antiga.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000529', 'itinerary', 'aɪˈtɪnəreri', 'noun', 'roteiro (de viagem)', 'Our itinerary includes three cities.', 'Nosso roteiro inclui três cidades.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000530', 'abroad', 'əˈbrɔːd', 'adverb', 'no exterior', 'She studied abroad for a year.', 'Ela estudou no exterior por um ano.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000531', 'currency', 'ˈkʌrənsi', 'noun', 'moeda (dinheiro)', 'What is the local currency?', 'Qual é a moeda local?', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000532', 'to exchange money', 'tuː ɪksˈtʃeɪndʒ ˈmʌni', 'verb', 'trocar dinheiro', 'I need to exchange money at the airport.', 'Eu preciso trocar dinheiro no aeroporto.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000533', 'souvenir', 'ˌsuːvəˈnɪər', 'noun', 'lembrança (de viagem)', 'I bought a souvenir for my mom.', 'Eu comprei uma lembrança para minha mãe.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000534', 'customs', 'ˈkʌstəmz', 'noun', 'alfândega', 'We waited a long time at customs.', 'Esperamos muito tempo na alfândega.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000535', 'visa', 'ˈviːzə', 'noun', 'visto', 'Do I need a visa for this country?', 'Eu preciso de visto para este país?', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000536', 'round trip', 'raʊnd trɪp', 'noun', 'ida e volta', 'I bought a round trip ticket.', 'Eu comprei uma passagem de ida e volta.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000537', 'one-way ticket', 'wʌn weɪ ˈtɪkɪt', 'noun', 'passagem só de ida', 'He bought a one-way ticket.', 'Ele comprou uma passagem só de ida.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000538', 'to pack', 'tuː pæk', 'verb', 'fazer as malas', 'I need to pack my suitcase tonight.', 'Eu preciso fazer minha mala hoje à noite.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000539', 'tour guide', 'tʊər ɡaɪd', 'noun', 'guia turístico', 'Our tour guide spoke three languages.', 'Nosso guia turístico falava três idiomas.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000540', 'to explore', 'tuː ɪkˈsplɔːr', 'verb', 'explorar', 'We love to explore new places.', 'Nós adoramos explorar lugares novos.', 'A2', array['travel']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000018', 'A2', 'Travel', 'Aeroporto, hospedagem, turismo e vocabulário de viagem.', 9, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000086', '10000000-0000-0000-0000-000000000018', 'At the Airport', 1, 10),
('20000000-0000-0000-0000-000000000087', '10000000-0000-0000-0000-000000000018', 'Hotels & Reservations', 2, 10),
('20000000-0000-0000-0000-000000000088', '10000000-0000-0000-0000-000000000018', 'Sightseeing', 3, 10),
('20000000-0000-0000-0000-000000000089', '10000000-0000-0000-0000-000000000018', 'Money & Documents Abroad', 4, 10),
('20000000-0000-0000-0000-000000000090', '10000000-0000-0000-0000-000000000018', 'Ready for a Trip (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 9.1: At the Airport ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000086', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000512"}'),
('20000000-0000-0000-0000-000000000086', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000516"}'),
('20000000-0000-0000-0000-000000000086', 'multiple_choice', 3, '{"question": "Complete: We need to be at the ___ two hours early.", "audio_text": null, "options": ["airport", "hotel", "customs"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000086', 'fill_blank', 4, '{"sentence": "Our flight is ___ by two hours.", "options": ["delayed", "booked", "explored"], "correct": "delayed", "translation": "Nosso voo está atrasado em duas horas."}'),
('20000000-0000-0000-0000-000000000086', 'matching', 5, '{"pairs": [{"left": "flight", "right": "voo"}, {"left": "passport", "right": "passaporte"}, {"left": "luggage", "right": "bagagem"}, {"left": "boarding pass", "right": "cartão de embarque"}]}'),
('20000000-0000-0000-0000-000000000086', 'word_order', 6, '{"words": ["forget", "your", "passport", "Don''t"], "correct_sentence": "Don''t forget your passport", "translation": "Não esqueça seu passaporte"}'),
('20000000-0000-0000-0000-000000000086', 'listening', 7, '{"audio_text": "We need to check in online before we go to the airport.", "question": "What do they need to do online?", "options": ["check in", "book a hotel", "exchange money"], "correct_index": 0}');

-- ---------- Lição 9.2: Hotels & Reservations ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000087', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000521"}'),
('20000000-0000-0000-0000-000000000087', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000523"}'),
('20000000-0000-0000-0000-000000000087', 'multiple_choice', 3, '{"question": "Complete: I have a ___ for two nights.", "audio_text": null, "options": ["reservation", "destination", "visa"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000087', 'fill_blank', 4, '{"sentence": "___ is at eleven. We need to leave the room by then.", "options": ["Check-out", "Check-in", "Boarding"], "correct": "Check-out", "translation": "O check-out é às onze. Precisamos deixar o quarto até lá."}'),
('20000000-0000-0000-0000-000000000087', 'matching', 5, '{"pairs": [{"left": "hotel", "right": "hotel"}, {"left": "reservation", "right": "reserva"}, {"left": "to book", "right": "reservar"}, {"left": "to check out", "right": "fazer check-out"}]}'),
('20000000-0000-0000-0000-000000000087', 'word_order', 6, '{"words": ["online", "a", "room", "I", "booked"], "correct_sentence": "I booked a room online", "translation": "Eu reservei um quarto online"}'),
('20000000-0000-0000-0000-000000000087', 'dictation', 7, '{"audio_text": "We booked a hotel near the beach for three nights.", "expected": "We booked a hotel near the beach for three nights."}');

-- ---------- Lição 9.3: Sightseeing ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000088', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000526"}'),
('20000000-0000-0000-0000-000000000088', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000528"}'),
('20000000-0000-0000-0000-000000000088', 'multiple_choice', 3, '{"question": "Complete: We went ___ all day.", "audio_text": null, "options": ["sightseeing", "packing", "exchanging"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000088', 'fill_blank', 4, '{"sentence": "We ___ in the old city. We didn''t know where to go.", "options": ["got lost", "arrived", "departed"], "correct": "got lost", "translation": "Nós nos perdemos na cidade antiga. Não sabíamos para onde ir."}'),
('20000000-0000-0000-0000-000000000088', 'matching', 5, '{"pairs": [{"left": "tourist", "right": "turista"}, {"left": "map", "right": "mapa"}, {"left": "to get lost", "right": "se perder"}, {"left": "itinerary", "right": "roteiro"}]}'),
('20000000-0000-0000-0000-000000000088', 'word_order', 6, '{"words": ["me", "the", "on", "show", "map", "Can", "you"], "correct_sentence": "Can you show me on the map", "translation": "Você pode me mostrar no mapa"}'),
('20000000-0000-0000-0000-000000000088', 'listening', 7, '{"audio_text": "Our tour guide showed us the map and we explored the old city.", "question": "What did they do?", "options": ["explored the old city", "went to the airport", "booked a hotel"], "correct_index": 0}');

-- ---------- Lição 9.4: Money & Documents Abroad ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000089', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000531"}'),
('20000000-0000-0000-0000-000000000089', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000535"}'),
('20000000-0000-0000-0000-000000000089', 'multiple_choice', 3, '{"question": "Complete: I need to ___ at the airport.", "audio_text": null, "options": ["exchange money", "book a hotel", "get lost"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000089', 'fill_blank', 4, '{"sentence": "Do I need a ___ for this country?", "options": ["visa", "souvenir", "currency"], "correct": "visa", "translation": "Eu preciso de visto para este país?"}'),
('20000000-0000-0000-0000-000000000089', 'matching', 5, '{"pairs": [{"left": "currency", "right": "moeda"}, {"left": "customs", "right": "alfândega"}, {"left": "visa", "right": "visto"}, {"left": "souvenir", "right": "lembrança"}]}'),
('20000000-0000-0000-0000-000000000089', 'word_order', 6, '{"words": ["mom", "I", "a", "souvenir", "for", "bought", "my"], "correct_sentence": "I bought a souvenir for my mom", "translation": "Eu comprei uma lembrança para minha mãe"}'),
('20000000-0000-0000-0000-000000000089', 'typing', 7, '{"prompt_pt": "Traduza: ''Ela estudou no exterior por um ano.''", "expected": "She studied abroad for a year.", "ai_review": true}');

-- ---------- Lição 9.5: Ready for a Trip (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000090', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000538"}'),
('20000000-0000-0000-0000-000000000090', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000540"}'),
('20000000-0000-0000-0000-000000000090', 'multiple_choice', 3, '{"question": "Complete: I bought a ___ ticket. I''m coming back next week.", "audio_text": null, "options": ["round trip", "one-way", "boarding pass"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000090', 'fill_blank', 4, '{"sentence": "I need to ___ my suitcase tonight.", "options": ["pack", "book", "explore"], "correct": "pack", "translation": "Eu preciso fazer minha mala hoje à noite."}'),
('20000000-0000-0000-0000-000000000090', 'matching', 5, '{"pairs": [{"left": "round trip", "right": "ida e volta"}, {"left": "one-way ticket", "right": "passagem só de ida"}, {"left": "to pack", "right": "fazer as malas"}, {"left": "tour guide", "right": "guia turístico"}]}'),
('20000000-0000-0000-0000-000000000090', 'word_order', 6, '{"words": ["places", "to", "new", "love", "We", "explore"], "correct_sentence": "We love to explore new places", "translation": "Nós adoramos explorar lugares novos"}'),
('20000000-0000-0000-0000-000000000090', 'listening', 7, '{"audio_text": "Our tour guide spoke three languages and helped us explore the city.", "question": "How many languages did the guide speak?", "options": ["three", "two", "one"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000090', 'typing', 8, '{"prompt_pt": "Traduza: ''Nosso destino é uma cidade pequena.''", "expected": "Our destination is a small city.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 14 "Housing & Neighborhood"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 032_seed_a2_restaurants_dining.sql (vocabulário
-- 811-840, módulo 10000000-...-000028, lições 20000000-...-000136 a 140).
-- Quinto dos 6 novos temas de A2.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000811', 'neighborhood', 'ˈneɪbərhʊd', 'noun', 'bairro / vizinhança', 'This is a quiet neighborhood.', 'Esse é um bairro tranquilo.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000812', 'to rent', 'tuː rent', 'verb', 'alugar', 'We rent this apartment.', 'Nós alugamos esse apartamento.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000813', 'landlord', 'ˈlændlɔːrd', 'noun', 'proprietário (de imóvel)', 'My landlord is very fair.', 'Meu proprietário é muito justo.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000814', 'tenant', 'ˈtenənt', 'noun', 'inquilino', 'The tenant pays rent every month.', 'O inquilino paga aluguel todo mês.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000815', 'rent', 'rent', 'noun', 'aluguel', 'The rent went up this year.', 'O aluguel subiu esse ano.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000816', 'lease', 'liːs', 'noun', 'contrato de aluguel', 'We signed a one-year lease.', 'Nós assinamos um contrato de um ano.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000817', 'to move in', 'tuː muːv ɪn', 'verb', 'se mudar para (um lugar)', 'We moved in last month.', 'Nós nos mudamos para cá mês passado.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000818', 'to move out', 'tuː muːv aʊt', 'verb', 'se mudar de (um lugar)', 'They moved out last week.', 'Eles se mudaram daqui semana passada.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000819', 'utilities', 'juːˈtɪlətiz', 'noun', 'contas (água, luz, etc.)', 'Utilities are not included in the rent.', 'As contas não estão incluídas no aluguel.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000820', 'deposit', 'dɪˈpɒzɪt', 'noun', 'depósito (caução)', 'We paid a deposit for the apartment.', 'Nós pagamos um depósito pelo apartamento.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000821', 'quiet', 'ˈkwaɪət', 'adjective', 'tranquilo / silencioso', 'This street is very quiet.', 'Essa rua é muito tranquila.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000822', 'noisy', 'ˈnɔɪzi', 'adjective', 'barulhento', 'The bar next door is noisy at night.', 'O bar ao lado é barulhento à noite.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000823', 'safe', 'seɪf', 'adjective', 'seguro', 'This is a safe area.', 'Essa é uma área segura.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000824', 'crowded', 'ˈkraʊdɪd', 'adjective', 'lotado / cheio de gente', 'The downtown area is very crowded.', 'A área central é muito lotada.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000825', 'nearby', 'ˌnɪərˈbaɪ', 'adverb', 'por perto', 'There''s a good school nearby.', 'Há uma boa escola por perto.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000826', 'within walking distance', 'wɪˈðɪn ˈwɔːkɪŋ ˈdɪstəns', 'phrase', 'a uma distância a pé', 'The market is within walking distance.', 'O mercado fica a uma distância a pé.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000827', 'block', 'blɒk', 'noun', 'quarteirão', 'The park is two blocks away.', 'O parque é a dois quarteirões daqui.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000828', 'community', 'kəˈmjuːnəti', 'noun', 'comunidade', 'This is a very friendly community.', 'Essa é uma comunidade muito amigável.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000829', 'view', 'vjuː', 'noun', 'vista', 'The apartment has a great view.', 'O apartamento tem uma vista ótima.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000830', 'furnished', 'ˈfɜːrnɪʃt', 'adjective', 'mobiliado', 'We''re looking for a furnished apartment.', 'Nós estamos procurando um apartamento mobiliado.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000831', 'unfurnished', 'ʌnˈfɜːrnɪʃt', 'adjective', 'sem mobília', 'This apartment is unfurnished.', 'Esse apartamento é sem mobília.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000832', 'to renovate', 'tuː ˈrenəveɪt', 'verb', 'reformar', 'We want to renovate the kitchen.', 'Nós queremos reformar a cozinha.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000833', 'property', 'ˈprɒpərti', 'noun', 'propriedade / imóvel', 'This property is for sale.', 'Esse imóvel está à venda.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000834', 'real estate agent', 'riːəl ɪˈsteɪt ˈeɪdʒənt', 'noun', 'corretor de imóveis', 'The real estate agent showed us three houses.', 'O corretor de imóveis nos mostrou três casas.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000835', 'to look for a place', 'tuː lʊk fɔːr ə pleɪs', 'verb', 'procurar um lugar para morar', 'We''re looking for a place downtown.', 'Nós estamos procurando um lugar no centro.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000836', 'roommate', 'ˈruːmmeɪt', 'noun', 'colega de quarto/apartamento', 'My roommate is very tidy.', 'Meu colega de apartamento é muito organizado.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000837', 'to share', 'tuː ʃeər', 'verb', 'dividir (moradia, contas)', 'We share the rent with our roommate.', 'Nós dividimos o aluguel com nosso colega de apartamento.', 'A2', array['housing']),
('30000000-0000-0000-0000-000000000838', 'convenient', 'kənˈviːniənt', 'adjective', 'conveniente', 'This location is very convenient.', 'Essa localização é muito conveniente.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000839', 'public transportation', 'ˈpʌblɪk ˌtrænspɔːrˈteɪʃn', 'noun', 'transporte público', 'Public transportation here is excellent.', 'O transporte público aqui é excelente.', 'A2', array['neighborhood']),
('30000000-0000-0000-0000-000000000840', 'to settle in', 'tuː ˈsetl ɪn', 'verb', 'se acomodar / se adaptar', 'It took us a while to settle in.', 'Demorou um tempo para nos acomodarmos.', 'A2', array['housing']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000028', 'A2', 'Housing & Neighborhood', 'Alugar, se mudar, descrever o bairro e a vizinhança.', 14, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000136', '10000000-0000-0000-0000-000000000028', 'Renting a Place', 1, 10),
('20000000-0000-0000-0000-000000000137', '10000000-0000-0000-0000-000000000028', 'Moving In', 2, 10),
('20000000-0000-0000-0000-000000000138', '10000000-0000-0000-0000-000000000028', 'What''s the Neighborhood Like?', 3, 10),
('20000000-0000-0000-0000-000000000139', '10000000-0000-0000-0000-000000000028', 'Finding a Place', 4, 10),
('20000000-0000-0000-0000-000000000140', '10000000-0000-0000-0000-000000000028', 'Settling In (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 14.1: Renting a Place ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000136', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000813"}'),
('20000000-0000-0000-0000-000000000136', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000815"}'),
('20000000-0000-0000-0000-000000000136', 'multiple_choice', 3, '{"question": "Complete: My ___ is very fair.", "audio_text": null, "options": ["landlord", "tenant", "roommate"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000136', 'fill_blank', 4, '{"sentence": "The ___ went up this year.", "options": ["rent", "deposit", "lease"], "correct": "rent", "translation": "O aluguel subiu esse ano."}'),
('20000000-0000-0000-0000-000000000136', 'matching', 5, '{"pairs": [{"left": "landlord", "right": "proprietário"}, {"left": "tenant", "right": "inquilino"}, {"left": "rent", "right": "aluguel"}, {"left": "lease", "right": "contrato de aluguel"}]}'),
('20000000-0000-0000-0000-000000000136', 'word_order', 6, '{"words": ["year", "lease", "signed", "a", "We", "one"], "correct_sentence": "We signed a one year lease", "translation": "Nós assinamos um contrato de um ano"}'),
('20000000-0000-0000-0000-000000000136', 'listening', 7, '{"audio_text": "Utilities are not included in the rent, and we also paid a deposit.", "question": "What is not included in the rent?", "options": ["utilities", "the deposit", "the lease"], "correct_index": 0}');

-- ---------- Lição 14.2: Moving In ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000137', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000817"}'),
('20000000-0000-0000-0000-000000000137', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000818"}'),
('20000000-0000-0000-0000-000000000137', 'multiple_choice', 3, '{"question": "Complete: We ___ last month.", "audio_text": null, "options": ["moved in", "moved out", "settled"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000137', 'fill_blank', 4, '{"sentence": "We''re looking for a ___ apartment.", "options": ["furnished", "crowded", "safe"], "correct": "furnished", "translation": "Nós estamos procurando um apartamento mobiliado."}'),
('20000000-0000-0000-0000-000000000137', 'matching', 5, '{"pairs": [{"left": "to move in", "right": "se mudar para"}, {"left": "to move out", "right": "se mudar de"}, {"left": "furnished", "right": "mobiliado"}, {"left": "unfurnished", "right": "sem mobília"}]}'),
('20000000-0000-0000-0000-000000000137', 'word_order', 6, '{"words": ["week", "moved", "out", "last", "They"], "correct_sentence": "They moved out last week", "translation": "Eles se mudaram daqui semana passada"}'),
('20000000-0000-0000-0000-000000000137', 'dictation', 7, '{"audio_text": "The apartment has a great view, but it needs to be renovated.", "expected": "The apartment has a great view, but it needs to be renovated."}');

-- ---------- Lição 14.3: What's the Neighborhood Like? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000138', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000821"}'),
('20000000-0000-0000-0000-000000000138', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000823"}'),
('20000000-0000-0000-0000-000000000138', 'multiple_choice', 3, '{"question": "Complete: This is a ___ neighborhood.", "audio_text": null, "options": ["quiet", "furnished", "unfurnished"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000138', 'fill_blank', 4, '{"sentence": "The bar next door is ___ at night.", "options": ["noisy", "safe", "convenient"], "correct": "noisy", "translation": "O bar ao lado é barulhento à noite."}'),
('20000000-0000-0000-0000-000000000138', 'matching', 5, '{"pairs": [{"left": "quiet", "right": "tranquilo"}, {"left": "noisy", "right": "barulhento"}, {"left": "safe", "right": "seguro"}, {"left": "crowded", "right": "lotado"}]}'),
('20000000-0000-0000-0000-000000000138', 'word_order', 6, '{"words": ["very", "area", "downtown", "The", "crowded", "is"], "correct_sentence": "The downtown area is very crowded", "translation": "A área central é muito lotada"}'),
('20000000-0000-0000-0000-000000000138', 'listening', 7, '{"audio_text": "This is a safe area, and there''s a good school nearby.", "question": "What is nearby?", "options": ["a good school", "a noisy bar", "the downtown area"], "correct_index": 0}');

-- ---------- Lição 14.4: Finding a Place ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000139', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000834"}'),
('20000000-0000-0000-0000-000000000139', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000835"}'),
('20000000-0000-0000-0000-000000000139', 'multiple_choice', 3, '{"question": "Complete: The ___ showed us three houses.", "audio_text": null, "options": ["real estate agent", "tenant", "roommate"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000139', 'fill_blank', 4, '{"sentence": "We share the rent with our ___.", "options": ["roommate", "landlord", "agent"], "correct": "roommate", "translation": "Nós dividimos o aluguel com nosso colega de apartamento."}'),
('20000000-0000-0000-0000-000000000139', 'matching', 5, '{"pairs": [{"left": "property", "right": "propriedade"}, {"left": "real estate agent", "right": "corretor de imóveis"}, {"left": "roommate", "right": "colega de apartamento"}, {"left": "to share", "right": "dividir"}]}'),
('20000000-0000-0000-0000-000000000139', 'word_order', 6, '{"words": ["downtown", "for", "a", "looking", "place", "We''re"], "correct_sentence": "We''re looking for a place downtown", "translation": "Nós estamos procurando um lugar no centro"}'),
('20000000-0000-0000-0000-000000000139', 'typing', 7, '{"prompt_pt": "Traduza: ''Esse imóvel está à venda.''", "expected": "This property is for sale.", "ai_review": true}');

-- ---------- Lição 14.5: Settling In (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000140', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000838"}'),
('20000000-0000-0000-0000-000000000140', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000840"}'),
('20000000-0000-0000-0000-000000000140', 'multiple_choice', 3, '{"question": "Complete: It took us a while to ___.", "audio_text": null, "options": ["settle in", "move out", "share"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000140', 'fill_blank', 4, '{"sentence": "The market is within walking ___.", "options": ["distance", "block", "view"], "correct": "distance", "translation": "O mercado fica a uma distância a pé."}'),
('20000000-0000-0000-0000-000000000140', 'matching', 5, '{"pairs": [{"left": "convenient", "right": "conveniente"}, {"left": "public transportation", "right": "transporte público"}, {"left": "block", "right": "quarteirão"}, {"left": "community", "right": "comunidade"}]}'),
('20000000-0000-0000-0000-000000000140', 'word_order', 6, '{"words": ["away", "park", "two", "The", "blocks", "is"], "correct_sentence": "The park is two blocks away", "translation": "O parque é a dois quarteirões daqui"}'),
('20000000-0000-0000-0000-000000000140', 'listening', 7, '{"audio_text": "Public transportation here is excellent, and this location is very convenient.", "question": "What is excellent?", "options": ["public transportation", "the neighborhood", "the rent"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000140', 'typing', 8, '{"prompt_pt": "Traduza: ''Essa é uma comunidade muito amigável.''", "expected": "This is a very friendly community.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

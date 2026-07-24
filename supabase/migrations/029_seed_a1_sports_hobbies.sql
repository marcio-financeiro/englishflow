-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 12 "Sports & Hobbies"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 027_seed_a1_weather.sql (vocabulário
-- 661-690, módulo 10000000-...-000023, lições 20000000-...-000111 a 115).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000661', 'sport', 'spɔːrt', 'noun', 'esporte', 'What sport do you play?', 'Que esporte você pratica?', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000662', 'football', 'ˈfʊtbɔːl', 'noun', 'futebol', 'I play football on Sundays.', 'Eu jogo futebol aos domingos.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000663', 'basketball', 'ˈbæskɪtbɔːl', 'noun', 'basquete', 'She plays basketball very well.', 'Ela joga basquete muito bem.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000664', 'volleyball', 'ˈvɒlibɔːl', 'noun', 'vôlei', 'We play volleyball at the beach.', 'Nós jogamos vôlei na praia.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000665', 'tennis', 'ˈtenɪs', 'noun', 'tênis (esporte)', 'He plays tennis every weekend.', 'Ele joga tênis todo fim de semana.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000666', 'swimming', 'ˈswɪmɪŋ', 'noun', 'natação', 'Swimming is good exercise.', 'Natação é um bom exercício.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000667', 'to swim', 'tuː swɪm', 'verb', 'nadar', 'I swim twice a week.', 'Eu nado duas vezes por semana.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000668', 'running', 'ˈrʌnɪŋ', 'noun', 'corrida', 'Running helps me relax.', 'Correr me ajuda a relaxar.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000669', 'to run', 'tuː rʌn', 'verb', 'correr', 'I run in the park every morning.', 'Eu corro no parque toda manhã.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000670', 'team', 'tiːm', 'noun', 'time / equipe', 'My team won the game.', 'Meu time ganhou o jogo.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000671', 'to play', 'tuː pleɪ', 'verb', 'jogar / tocar', 'Do you play any sport?', 'Você pratica algum esporte?', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000672', 'to win', 'tuː wɪn', 'verb', 'ganhar', 'They won the match.', 'Eles ganharam a partida.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000673', 'to lose', 'tuː luːz', 'verb', 'perder', 'We lost the game yesterday.', 'Nós perdemos o jogo ontem.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000674', 'match', 'mætʃ', 'noun', 'partida / jogo', 'The match starts at eight.', 'A partida começa às oito.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000675', 'gym', 'dʒɪm', 'noun', 'academia', 'I go to the gym after work.', 'Eu vou à academia depois do trabalho.', 'A1', array['sports']),
('30000000-0000-0000-0000-000000000676', 'hobby', 'ˈhɒbi', 'noun', 'hobby / passatempo', 'What is your favorite hobby?', 'Qual é o seu hobby favorito?', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000677', 'to read', 'tuː riːd', 'verb', 'ler', 'I like to read books.', 'Eu gosto de ler livros.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000678', 'to paint', 'tuː peɪnt', 'verb', 'pintar', 'She likes to paint on weekends.', 'Ela gosta de pintar nos fins de semana.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000679', 'to draw', 'tuː drɔː', 'verb', 'desenhar', 'He draws very well.', 'Ele desenha muito bem.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000680', 'to dance', 'tuː dæns', 'verb', 'dançar', 'We love to dance.', 'Nós adoramos dançar.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000681', 'to sing', 'tuː sɪŋ', 'verb', 'cantar', 'She sings in a band.', 'Ela canta em uma banda.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000682', 'to collect', 'tuː kəˈlekt', 'verb', 'colecionar', 'I collect old coins.', 'Eu coleciono moedas antigas.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000683', 'to garden', 'tuː ˈɡɑːrdn', 'verb', 'jardinar / cuidar do jardim', 'My mom likes to garden.', 'Minha mãe gosta de jardinar.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000684', 'to cook', 'tuː kʊk', 'verb', 'cozinhar', 'I cook every night.', 'Eu cozinho toda noite.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000685', 'to take photos', 'tuː teɪk ˈfoʊtoʊz', 'verb', 'tirar fotos', 'He likes to take photos on trips.', 'Ele gosta de tirar fotos em viagens.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000686', 'free time', 'friː taɪm', 'noun', 'tempo livre', 'What do you do in your free time?', 'O que você faz no seu tempo livre?', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000687', 'boring', 'ˈbɔːrɪŋ', 'adjective', 'chato / entediante', 'This game is boring.', 'Esse jogo é chato.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000688', 'fun', 'fʌn', 'adjective', 'divertido', 'Swimming is really fun.', 'Nadar é muito divertido.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000689', 'to relax', 'tuː rɪˈlæks', 'verb', 'relaxar', 'I read to relax after work.', 'Eu leio para relaxar depois do trabalho.', 'A1', array['hobbies']),
('30000000-0000-0000-0000-000000000690', 'to be good at', 'tuː biː ɡʊd æt', 'verb', 'ser bom em', 'He is good at tennis.', 'Ele é bom em tênis.', 'A1', array['hobbies']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000023', 'A1', 'Sports & Hobbies', 'Esportes, times, hobbies e atividades de tempo livre.', 12, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000111', '10000000-0000-0000-0000-000000000023', 'What Sport Do You Play?', 1, 10),
('20000000-0000-0000-0000-000000000112', '10000000-0000-0000-0000-000000000023', 'Win or Lose', 2, 10),
('20000000-0000-0000-0000-000000000113', '10000000-0000-0000-0000-000000000023', 'My Hobbies', 3, 10),
('20000000-0000-0000-0000-000000000114', '10000000-0000-0000-0000-000000000023', 'Free Time Activities', 4, 10),
('20000000-0000-0000-0000-000000000115', '10000000-0000-0000-0000-000000000023', 'Fun or Boring? (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 12.1: What Sport Do You Play? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000111', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000662"}'),
('20000000-0000-0000-0000-000000000111', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000665"}'),
('20000000-0000-0000-0000-000000000111', 'multiple_choice', 3, '{"question": "Complete: What ___ do you play?", "audio_text": null, "options": ["sport", "hobby", "team"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000111', 'fill_blank', 4, '{"sentence": "She plays ___ very well.", "options": ["basketball", "swimming", "running"], "correct": "basketball", "translation": "Ela joga basquete muito bem."}'),
('20000000-0000-0000-0000-000000000111', 'matching', 5, '{"pairs": [{"left": "football", "right": "futebol"}, {"left": "basketball", "right": "basquete"}, {"left": "volleyball", "right": "vôlei"}, {"left": "tennis", "right": "tênis"}]}'),
('20000000-0000-0000-0000-000000000111', 'word_order', 6, '{"words": ["beach", "the", "play", "at", "We", "volleyball"], "correct_sentence": "We play volleyball at the beach", "translation": "Nós jogamos vôlei na praia"}'),
('20000000-0000-0000-0000-000000000111', 'listening', 7, '{"audio_text": "He plays tennis every weekend, and I play football on Sundays.", "question": "When does he play tennis?", "options": ["every weekend", "on Sundays", "every day"], "correct_index": 0}');

-- ---------- Lição 12.2: Win or Lose ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000112', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000672"}'),
('20000000-0000-0000-0000-000000000112', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000673"}'),
('20000000-0000-0000-0000-000000000112', 'multiple_choice', 3, '{"question": "Complete: They ___ the match.", "audio_text": null, "options": ["won", "lost", "played"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000112', 'fill_blank', 4, '{"sentence": "We ___ the game yesterday.", "options": ["lost", "won", "swam"], "correct": "lost", "translation": "Nós perdemos o jogo ontem."}'),
('20000000-0000-0000-0000-000000000112', 'matching', 5, '{"pairs": [{"left": "to win", "right": "ganhar"}, {"left": "to lose", "right": "perder"}, {"left": "team", "right": "time"}, {"left": "match", "right": "partida"}]}'),
('20000000-0000-0000-0000-000000000112', 'word_order', 6, '{"words": ["eight", "starts", "at", "match", "The"], "correct_sentence": "The match starts at eight", "translation": "A partida começa às oito"}'),
('20000000-0000-0000-0000-000000000112', 'dictation', 7, '{"audio_text": "My team won the game, and I go to the gym to celebrate.", "expected": "My team won the game, and I go to the gym to celebrate."}');

-- ---------- Lição 12.3: My Hobbies ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000113', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000676"}'),
('20000000-0000-0000-0000-000000000113', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000677"}'),
('20000000-0000-0000-0000-000000000113', 'multiple_choice', 3, '{"question": "Complete: What is your favorite ___?", "audio_text": null, "options": ["hobby", "team", "match"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000113', 'fill_blank', 4, '{"sentence": "She likes to ___ on weekends.", "options": ["paint", "win", "lose"], "correct": "paint", "translation": "Ela gosta de pintar nos fins de semana."}'),
('20000000-0000-0000-0000-000000000113', 'matching', 5, '{"pairs": [{"left": "to read", "right": "ler"}, {"left": "to paint", "right": "pintar"}, {"left": "to draw", "right": "desenhar"}, {"left": "to sing", "right": "cantar"}]}'),
('20000000-0000-0000-0000-000000000113', 'word_order', 6, '{"words": ["a", "sings", "band", "She", "in"], "correct_sentence": "She sings in a band", "translation": "Ela canta em uma banda"}'),
('20000000-0000-0000-0000-000000000113', 'listening', 7, '{"audio_text": "He draws very well, and he also likes to take photos.", "question": "What does he like to do?", "options": ["draw and take photos", "sing and dance", "swim and run"], "correct_index": 0}');

-- ---------- Lição 12.4: Free Time Activities ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000114', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000684"}'),
('20000000-0000-0000-0000-000000000114', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000686"}'),
('20000000-0000-0000-0000-000000000114', 'multiple_choice', 3, '{"question": "Complete: What do you do in your ___?", "audio_text": null, "options": ["free time", "team", "match"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000114', 'fill_blank', 4, '{"sentence": "I ___ every night.", "options": ["cook", "collect", "garden"], "correct": "cook", "translation": "Eu cozinho toda noite."}'),
('20000000-0000-0000-0000-000000000114', 'matching', 5, '{"pairs": [{"left": "to cook", "right": "cozinhar"}, {"left": "to collect", "right": "colecionar"}, {"left": "to garden", "right": "jardinar"}, {"left": "free time", "right": "tempo livre"}]}'),
('20000000-0000-0000-0000-000000000114', 'word_order', 6, '{"words": ["coins", "old", "collect", "I"], "correct_sentence": "I collect old coins", "translation": "Eu coleciono moedas antigas"}'),
('20000000-0000-0000-0000-000000000114', 'typing', 7, '{"prompt_pt": "Traduza: ''Ele gosta de tirar fotos em viagens.''", "expected": "He likes to take photos on trips.", "ai_review": true}');

-- ---------- Lição 12.5: Fun or Boring? (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000115', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000688"}'),
('20000000-0000-0000-0000-000000000115', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000690"}'),
('20000000-0000-0000-0000-000000000115', 'multiple_choice', 3, '{"question": "Complete: This game is ___.", "audio_text": null, "options": ["boring", "fun", "good"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000115', 'fill_blank', 4, '{"sentence": "He is ___ tennis.", "options": ["good at", "fun at", "boring at"], "correct": "good at", "translation": "Ele é bom em tênis."}'),
('20000000-0000-0000-0000-000000000115', 'matching', 5, '{"pairs": [{"left": "boring", "right": "chato"}, {"left": "fun", "right": "divertido"}, {"left": "to relax", "right": "relaxar"}, {"left": "to be good at", "right": "ser bom em"}]}'),
('20000000-0000-0000-0000-000000000115', 'word_order', 6, '{"words": ["really", "is", "Swimming", "fun"], "correct_sentence": "Swimming is really fun", "translation": "Nadar é muito divertido"}'),
('20000000-0000-0000-0000-000000000115', 'listening', 7, '{"audio_text": "I read to relax after work, it''s not boring at all.", "question": "Why does the speaker read?", "options": ["to relax", "because it''s boring", "for the team"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000115', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu corro no parque toda manhã.''", "expected": "I run in the park every morning.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

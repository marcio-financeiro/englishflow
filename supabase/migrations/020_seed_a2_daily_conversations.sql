-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 7 "Daily Conversations"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 018_seed_a2_prepositions.sql (vocabulário 391-420,
-- módulo 10000000-...-000014, lições 20000000-...-000066 a 070).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000391', 'How''s it going?', 'haʊz ɪt ˈɡoʊɪŋ', 'phrase', 'Como vai?', 'Hey, how''s it going?', 'Ei, como vai?', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000392', 'What''s up?', 'wʌts ʌp', 'phrase', 'E aí? / O que houve?', 'What''s up? You look worried.', 'E aí? Você parece preocupado.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000393', 'not much', 'nɒt mʌtʃ', 'phrase', 'nada demais', 'Not much, just working a lot.', 'Nada demais, só trabalhando bastante.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000394', 'Long time no see', 'lɒŋ taɪm noʊ siː', 'phrase', 'Há quanto tempo (não te vejo)', 'Long time no see! How have you been?', 'Há quanto tempo! Como você tem estado?', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000395', 'to catch up', 'tuː kætʃ ʌp', 'verb', 'colocar o papo em dia', 'Let''s catch up soon.', 'Vamos colocar o papo em dia em breve.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000396', 'by the way', 'baɪ ðə weɪ', 'phrase', 'a propósito', 'By the way, did you finish the report?', 'A propósito, você terminou o relatório?', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000397', 'to hang out', 'tuː hæŋ aʊt', 'verb', 'sair / curtir com alguém', 'Do you want to hang out this weekend?', 'Você quer sair este fim de semana?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000398', 'to get together', 'tuː ɡet təˈɡeðər', 'verb', 'se reunir', 'Let''s get together this weekend.', 'Vamos nos reunir este fim de semana.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000399', 'sounds good', 'saʊndz ɡʊd', 'phrase', 'parece bom / combinado', 'That sounds good.', 'Isso parece bom.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000400', 'no problem', 'noʊ ˈprɒbləm', 'phrase', 'sem problema', 'No problem, see you then.', 'Sem problema, até lá.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000401', 'to make plans', 'tuː meɪk plænz', 'verb', 'fazer planos', 'We need to make plans for the trip.', 'Nós precisamos fazer planos para a viagem.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000402', 'let''s', 'lets', 'phrase', 'vamos (let us)', 'Let''s meet at the coffee shop at six.', 'Vamos nos encontrar na cafeteria às seis.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000403', 'to call back', 'tuː kɔːl bæk', 'verb', 'retornar a ligação', 'I''ll call you back.', 'Eu vou te retornar a ligação.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000404', 'to leave a message', 'tuː liːv ə ˈmesɪdʒ', 'verb', 'deixar um recado', 'I left a message.', 'Eu deixei um recado.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000405', 'hold on', 'hoʊld ɒn', 'phrase', 'espera aí / aguarde', 'Hold on, let me check that for you.', 'Espera aí, deixa eu checar isso para você.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000406', 'speaking', 'ˈspiːkɪŋ', 'phrase', 'é ele/ela mesmo(a) (telefone)', 'Is John there? - Speaking.', 'John está? - É ele mesmo.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000407', 'wrong number', 'rɒŋ ˈnʌmbər', 'phrase', 'número errado', 'Sorry, I think you have the wrong number.', 'Desculpe, acho que você discou o número errado.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000408', 'to text', 'tuː tekst', 'verb', 'mandar mensagem de texto', 'Can you text me the address?', 'Você pode me mandar o endereço por mensagem?', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000409', 'voicemail', 'ˈvɔɪsmeɪl', 'noun', 'caixa postal', 'She didn''t pick up, so I left a voicemail.', 'Ela não atendeu, então eu deixei uma mensagem na caixa postal.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000410', 'to pick up', 'tuː pɪk ʌp', 'verb', 'atender (o telefone)', 'She didn''t pick up.', 'Ela não atendeu.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000411', 'to hang up', 'tuː hæŋ ʌp', 'verb', 'desligar (o telefone)', 'Please don''t hang up.', 'Por favor, não desligue.', 'A2', array['phone']),
('30000000-0000-0000-0000-000000000412', 'by any chance', 'baɪ ˈeni tʃæns', 'phrase', 'por acaso', 'By any chance, do you know what time it is?', 'Por acaso, você sabe que horas são?', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000413', 'I guess', 'aɪ ɡes', 'phrase', 'eu acho / imagino', 'I guess it''s the best restaurant in town.', 'Eu acho que é o melhor restaurante da cidade.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000414', 'actually', 'ˈæktʃuəli', 'adverb', 'na verdade', 'Actually, I don''t think it matters much.', 'Na verdade, eu acho que não importa muito.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000415', 'anyway', 'ˈeniweɪ', 'adverb', 'de qualquer forma / enfim', 'Anyway, let''s continue.', 'Enfim, vamos continuar.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000416', 'honestly', 'ˈɒnɪstli', 'adverb', 'honestamente', 'Honestly, I didn''t understand the question.', 'Honestamente, eu não entendi a pergunta.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000417', 'to mean', 'tuː miːn', 'verb', 'querer dizer / significar', 'What do you mean?', 'O que você quer dizer?', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000418', 'to mention', 'tuː ˈmenʃən', 'verb', 'mencionar', 'She mentioned the meeting.', 'Ela mencionou a reunião.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000419', 'small talk', 'smɔːl tɔːk', 'noun', 'conversa fiada / informal', 'I don''t really like small talk.', 'Eu não gosto muito de conversa fiada.', 'A2', array['small-talk']),
('30000000-0000-0000-0000-000000000420', 'to chat', 'tuː tʃæt', 'verb', 'bater papo', 'I like to chat with her.', 'Eu gosto de bater papo com ela.', 'A2', array['small-talk']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000014', 'A2', 'Daily Conversations', 'Small talk, combinar planos e conversar ao telefone com naturalidade.', 7, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000066', '10000000-0000-0000-0000-000000000014', 'How''s It Going?', 1, 10),
('20000000-0000-0000-0000-000000000067', '10000000-0000-0000-0000-000000000014', 'Making Plans', 2, 10),
('20000000-0000-0000-0000-000000000068', '10000000-0000-0000-0000-000000000014', 'On the Phone Pt.1', 3, 10),
('20000000-0000-0000-0000-000000000069', '10000000-0000-0000-0000-000000000014', 'On the Phone Pt.2', 4, 10),
('20000000-0000-0000-0000-000000000070', '10000000-0000-0000-0000-000000000014', 'Just Chatting (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 7.1: How's It Going? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000066', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000391"}'),
('20000000-0000-0000-0000-000000000066', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000394"}'),
('20000000-0000-0000-0000-000000000066', 'multiple_choice', 3, '{"question": "Complete: ___! I haven''t seen you in months.", "audio_text": null, "options": ["Long time no see", "What''s up", "No problem"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000066', 'fill_blank', 4, '{"sentence": "A: How''s it going? B: ___, just working a lot.", "options": ["Not much", "Sounds good", "Hold on"], "correct": "Not much", "translation": "Nada demais, só trabalhando bastante."}'),
('20000000-0000-0000-0000-000000000066', 'matching', 5, '{"pairs": [{"left": "How''s it going?", "right": "Como vai?"}, {"left": "What''s up?", "right": "E aí?"}, {"left": "Not much", "right": "Nada demais"}, {"left": "Long time no see", "right": "Há quanto tempo"}]}'),
('20000000-0000-0000-0000-000000000066', 'word_order', 6, '{"words": ["up", "to", "catch", "Let''s"], "correct_sentence": "Let''s catch up", "translation": "Vamos colocar o papo em dia"}'),
('20000000-0000-0000-0000-000000000066', 'listening', 7, '{"audio_text": "Hey! Long time no see. What''s up?", "question": "What is the speaker expressing?", "options": ["surprise at seeing someone after a while", "anger", "sadness"], "correct_index": 0}');

-- ---------- Lição 7.2: Making Plans ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000067', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000397"}'),
('20000000-0000-0000-0000-000000000067', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000399"}'),
('20000000-0000-0000-0000-000000000067', 'multiple_choice', 3, '{"question": "Complete: Do you want to ___ this weekend?", "audio_text": null, "options": ["hang out", "hang up", "pick up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000067', 'fill_blank', 4, '{"sentence": "___ meet at the coffee shop at six.", "options": ["Let''s", "Hold on", "Actually"], "correct": "Let''s", "translation": "Vamos nos encontrar na cafeteria às seis."}'),
('20000000-0000-0000-0000-000000000067', 'matching', 5, '{"pairs": [{"left": "to hang out", "right": "sair/curtir"}, {"left": "to get together", "right": "se reunir"}, {"left": "sounds good", "right": "parece bom"}, {"left": "no problem", "right": "sem problema"}]}'),
('20000000-0000-0000-0000-000000000067', 'word_order', 6, '{"words": ["good", "That", "sounds"], "correct_sentence": "That sounds good", "translation": "Isso parece bom"}'),
('20000000-0000-0000-0000-000000000067', 'dictation', 7, '{"audio_text": "Let''s get together this weekend.", "expected": "Let''s get together this weekend."}');

-- ---------- Lição 7.3: On the Phone Pt.1 ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000068', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000405"}'),
('20000000-0000-0000-0000-000000000068', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000407"}'),
('20000000-0000-0000-0000-000000000068', 'multiple_choice', 3, '{"question": "Complete: ___, let me check that for you.", "audio_text": null, "options": ["Hold on", "Speaking", "Actually"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000068', 'fill_blank', 4, '{"sentence": "Sorry, I think you have the ___.", "options": ["wrong number", "voicemail", "speaking"], "correct": "wrong number", "translation": "Desculpe, acho que você discou o número errado."}'),
('20000000-0000-0000-0000-000000000068', 'matching', 5, '{"pairs": [{"left": "hold on", "right": "espera aí"}, {"left": "speaking", "right": "é ele/ela mesmo(a)"}, {"left": "wrong number", "right": "número errado"}, {"left": "to call back", "right": "retornar a ligação"}]}'),
('20000000-0000-0000-0000-000000000068', 'word_order', 6, '{"words": ["you", "back", "call", "I''ll"], "correct_sentence": "I''ll call you back", "translation": "Eu vou te retornar a ligação"}'),
('20000000-0000-0000-0000-000000000068', 'listening', 7, '{"audio_text": "Hi, is John there? - Speaking. Who is this?", "question": "Who answered the phone?", "options": ["John himself", "a wrong number", "voicemail"], "correct_index": 0}');

-- ---------- Lição 7.4: On the Phone Pt.2 ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000069', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000409"}'),
('20000000-0000-0000-0000-000000000069', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000408"}'),
('20000000-0000-0000-0000-000000000069', 'multiple_choice', 3, '{"question": "Complete: Nobody answered, so I left a message on ___.", "audio_text": null, "options": ["voicemail", "wrong number", "hold on"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000069', 'fill_blank', 4, '{"sentence": "Can you ___ me the address instead of calling?", "options": ["text", "hang up", "pick up"], "correct": "text", "translation": "Você pode me mandar o endereço por mensagem em vez de ligar?"}'),
('20000000-0000-0000-0000-000000000069', 'matching', 5, '{"pairs": [{"left": "voicemail", "right": "caixa postal"}, {"left": "to pick up", "right": "atender"}, {"left": "to hang up", "right": "desligar"}, {"left": "to text", "right": "mandar mensagem"}]}'),
('20000000-0000-0000-0000-000000000069', 'word_order', 6, '{"words": ["message", "left", "a", "I"], "correct_sentence": "I left a message", "translation": "Eu deixei um recado"}'),
('20000000-0000-0000-0000-000000000069', 'listening', 7, '{"audio_text": "She didn''t pick up, so I left a voicemail.", "question": "What did the speaker do?", "options": ["left a voicemail", "sent a text", "hung up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000069', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu vou te mandar uma mensagem mais tarde.''", "expected": "I''ll text you later.", "ai_review": true}');

-- ---------- Lição 7.5: Just Chatting (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000070', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000413"}'),
('20000000-0000-0000-0000-000000000070', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000415"}'),
('20000000-0000-0000-0000-000000000070', 'multiple_choice', 3, '{"question": "Complete: ___, I don''t think it matters much.", "audio_text": null, "options": ["Actually", "Anyway", "By any chance"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000070', 'matching', 4, '{"pairs": [{"left": "actually", "right": "na verdade"}, {"left": "anyway", "right": "de qualquer forma"}, {"left": "honestly", "right": "honestamente"}, {"left": "I guess", "right": "eu acho"}]}'),
('20000000-0000-0000-0000-000000000070', 'fill_blank', 5, '{"sentence": "___, do you know what time it is?", "options": ["By any chance", "Actually", "Small talk"], "correct": "By any chance", "translation": "Por acaso, você sabe que horas são?"}'),
('20000000-0000-0000-0000-000000000070', 'word_order', 6, '{"words": ["chat", "to", "like", "I", "with", "her"], "correct_sentence": "I like to chat with her", "translation": "Eu gosto de bater papo com ela"}'),
('20000000-0000-0000-0000-000000000070', 'listening', 7, '{"audio_text": "Honestly, I didn''t understand the question, but anyway, let''s continue.", "question": "What does the speaker admit?", "options": ["not understanding the question", "being late", "forgetting the plan"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000070', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu não gosto muito de conversa fiada.''", "expected": "I don''t really like small talk.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 37 exercícios
-- ============================================================================

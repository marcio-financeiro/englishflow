-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 10 "Making Plans & Invitations"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 024_seed_a2_travel.sql (vocabulário
-- 571-600, módulo 10000000-...-000020, lições 20000000-...-000096 a 100).
-- Primeiro dos 6 novos temas de A2 (lista original esgotada em Travel).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000571', 'to invite', 'tuː ɪnˈvaɪt', 'verb', 'convidar', 'I want to invite you to my party.', 'Eu quero te convidar para minha festa.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000572', 'invitation', 'ˌɪnvɪˈteɪʃn', 'noun', 'convite', 'Thanks for the invitation.', 'Obrigado pelo convite.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000573', 'to plan', 'tuː plæn', 'verb', 'planejar', 'We are planning a trip.', 'Nós estamos planejando uma viagem.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000574', 'plan', 'plæn', 'noun', 'plano', 'What are your plans for the weekend?', 'Quais são seus planos para o fim de semana?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000575', 'would like to', 'wʊd laɪk tuː', 'phrase', 'gostaria de', 'Would you like to come with us?', 'Você gostaria de vir com a gente?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000576', 'let''s', 'lets', 'phrase', 'vamos (sugestão)', 'Let''s go to the movies tonight.', 'Vamos ao cinema hoje à noite.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000577', 'to suggest', 'tuː səˈdʒest', 'verb', 'sugerir', 'I suggest we meet at six.', 'Eu sugiro que a gente se encontre às seis.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000578', 'suggestion', 'səˈdʒestʃən', 'noun', 'sugestão', 'That''s a great suggestion.', 'Essa é uma ótima sugestão.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000579', 'to accept', 'tuː əkˈsept', 'verb', 'aceitar', 'I accept your invitation.', 'Eu aceito seu convite.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000580', 'to decline', 'tuː dɪˈklaɪn', 'verb', 'recusar', 'I have to decline this time.', 'Eu preciso recusar dessa vez.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000581', 'to be free', 'tuː biː friː', 'phrase', 'estar livre / disponível', 'Are you free on Saturday?', 'Você está livre no sábado?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000582', 'busy', 'ˈbɪzi', 'adjective', 'ocupado', 'Sorry, I''m busy this weekend.', 'Desculpe, estou ocupado neste fim de semana.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000583', 'to reschedule', 'tuː ˌriːˈʃedjuːl', 'verb', 'remarcar', 'Can we reschedule for next week?', 'Podemos remarcar para a próxima semana?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000584', 'to cancel', 'tuː ˈkænsl', 'verb', 'cancelar', 'I need to cancel our plans.', 'Eu preciso cancelar nossos planos.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000585', 'to meet up', 'tuː miːt ʌp', 'verb', 'se encontrar', 'Let''s meet up this weekend.', 'Vamos nos encontrar neste fim de semana.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000586', 'get-together', 'ˈɡet təˈɡeðər', 'noun', 'reunião informal / confraternização', 'We had a small get-together at my house.', 'Nós tivemos uma pequena reunião na minha casa.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000587', 'to look forward to', 'tuː lʊk ˈfɔːrwərd tuː', 'phrase', 'estar ansioso/animado para', 'I''m looking forward to the party.', 'Eu estou ansioso para a festa.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000588', 'sounds good', 'saʊndz ɡʊd', 'phrase', 'parece bom / combinado', 'Sounds good, see you there!', 'Combinado, te vejo lá!', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000589', 'maybe', 'ˈmeɪbi', 'adverb', 'talvez', 'Maybe we can go next weekend.', 'Talvez a gente possa ir no próximo fim de semana.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000590', 'definitely', 'ˈdefɪnətli', 'adverb', 'com certeza', 'I''ll definitely be there.', 'Eu com certeza vou estar lá.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000591', 'to confirm', 'tuː kənˈfɜːrm', 'verb', 'confirmar', 'Can you confirm the time?', 'Você pode confirmar o horário?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000592', 'to show up', 'tuː ʃoʊ ʌp', 'verb', 'aparecer / comparecer', 'She didn''t show up for the meeting.', 'Ela não apareceu para a reunião.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000593', 'guest', 'ɡest', 'noun', 'convidado', 'We invited ten guests.', 'Nós convidamos dez convidados.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000594', 'host', 'hoʊst', 'noun', 'anfitrião', 'He is a great host.', 'Ele é um ótimo anfitrião.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000595', 'celebration', 'ˌselɪˈbreɪʃn', 'noun', 'comemoração', 'It''s a big celebration this year.', 'É uma grande comemoração esse ano.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000596', 'occasion', 'əˈkeɪʒn', 'noun', 'ocasião', 'This is a special occasion.', 'Essa é uma ocasião especial.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000597', 'to make it', 'tuː meɪk ɪt', 'phrase', 'conseguir comparecer', 'I don''t think I can make it tonight.', 'Eu acho que não vou conseguir ir hoje à noite.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000598', 'to catch up', 'tuː kætʃ ʌp', 'verb', 'colocar o papo em dia', 'Let''s catch up soon, it''s been a while.', 'Vamos colocar o papo em dia logo, faz tempo.', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000599', 'to hang out', 'tuː hæŋ aʊt', 'verb', 'sair / passar tempo com', 'Do you want to hang out this weekend?', 'Você quer sair neste fim de semana?', 'A2', array['plans']),
('30000000-0000-0000-0000-000000000600', 'rain check', 'reɪn tʃek', 'phrase', 'fica pra próxima', 'Can I take a rain check on that?', 'Posso deixar isso para a próxima?', 'A2', array['plans']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000020', 'A2', 'Making Plans & Invitations', 'Convidar, sugerir, aceitar ou recusar planos, confirmar e remarcar.', 10, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000096', '10000000-0000-0000-0000-000000000020', 'Invitations', 1, 10),
('20000000-0000-0000-0000-000000000097', '10000000-0000-0000-0000-000000000020', 'Suggestions', 2, 10),
('20000000-0000-0000-0000-000000000098', '10000000-0000-0000-0000-000000000020', 'Accepting & Declining', 3, 10),
('20000000-0000-0000-0000-000000000099', '10000000-0000-0000-0000-000000000020', 'Confirming Plans', 4, 10),
('20000000-0000-0000-0000-000000000100', '10000000-0000-0000-0000-000000000020', 'Let''s Hang Out (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 10.1: Invitations ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000096', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000571"}'),
('20000000-0000-0000-0000-000000000096', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000575"}'),
('20000000-0000-0000-0000-000000000096', 'multiple_choice', 3, '{"question": "Complete: ___ you like to come with us?", "audio_text": null, "options": ["Would", "Do", "Are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000096', 'fill_blank', 4, '{"sentence": "Thanks for the ___.", "options": ["invitation", "suggestion", "occasion"], "correct": "invitation", "translation": "Obrigado pelo convite."}'),
('20000000-0000-0000-0000-000000000096', 'matching', 5, '{"pairs": [{"left": "to invite", "right": "convidar"}, {"left": "invitation", "right": "convite"}, {"left": "guest", "right": "convidado"}, {"left": "host", "right": "anfitrião"}]}'),
('20000000-0000-0000-0000-000000000096', 'word_order', 6, '{"words": ["my", "you", "to", "party", "want", "I", "invite", "to"], "correct_sentence": "I want to invite you to my party", "translation": "Eu quero te convidar para minha festa"}'),
('20000000-0000-0000-0000-000000000096', 'listening', 7, '{"audio_text": "We invited ten guests to the celebration.", "question": "How many guests were invited?", "options": ["ten", "five", "twenty"], "correct_index": 0}');

-- ---------- Lição 10.2: Suggestions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000097', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000576"}'),
('20000000-0000-0000-0000-000000000097', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000577"}'),
('20000000-0000-0000-0000-000000000097', 'multiple_choice', 3, '{"question": "Complete: ___ go to the movies tonight.", "audio_text": null, "options": ["Let''s", "Would", "Suggest"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000097', 'fill_blank', 4, '{"sentence": "That''s a great ___.", "options": ["suggestion", "guest", "rain check"], "correct": "suggestion", "translation": "Essa é uma ótima sugestão."}'),
('20000000-0000-0000-0000-000000000097', 'matching', 5, '{"pairs": [{"left": "to suggest", "right": "sugerir"}, {"left": "suggestion", "right": "sugestão"}, {"left": "maybe", "right": "talvez"}, {"left": "definitely", "right": "com certeza"}]}'),
('20000000-0000-0000-0000-000000000097', 'word_order', 6, '{"words": ["meet", "we", "six", "at", "suggest", "I"], "correct_sentence": "I suggest we meet at six", "translation": "Eu sugiro que a gente se encontre às seis"}'),
('20000000-0000-0000-0000-000000000097', 'dictation', 7, '{"audio_text": "Maybe we can go next weekend, but I''ll definitely confirm later.", "expected": "Maybe we can go next weekend, but I''ll definitely confirm later."}');

-- ---------- Lição 10.3: Accepting & Declining ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000098', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000579"}'),
('20000000-0000-0000-0000-000000000098', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000580"}'),
('20000000-0000-0000-0000-000000000098', 'multiple_choice', 3, '{"question": "Complete: Sorry, I''m ___ this weekend.", "audio_text": null, "options": ["busy", "free", "definitely"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000098', 'fill_blank', 4, '{"sentence": "Are you ___ on Saturday?", "options": ["free", "busy", "invited"], "correct": "free", "translation": "Você está livre no sábado?"}'),
('20000000-0000-0000-0000-000000000098', 'matching', 5, '{"pairs": [{"left": "to accept", "right": "aceitar"}, {"left": "to decline", "right": "recusar"}, {"left": "to be free", "right": "estar livre"}, {"left": "busy", "right": "ocupado"}]}'),
('20000000-0000-0000-0000-000000000098', 'word_order', 6, '{"words": ["your", "invitation", "I", "accept"], "correct_sentence": "I accept your invitation", "translation": "Eu aceito seu convite"}'),
('20000000-0000-0000-0000-000000000098', 'listening', 7, '{"audio_text": "I have to decline this time, I''m busy on Saturday.", "question": "What is the person doing?", "options": ["declining the invitation", "accepting the invitation", "cancelling the party"], "correct_index": 0}');

-- ---------- Lição 10.4: Confirming Plans ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000099', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000591"}'),
('20000000-0000-0000-0000-000000000099', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000583"}'),
('20000000-0000-0000-0000-000000000099', 'multiple_choice', 3, '{"question": "Complete: Can we ___ for next week?", "audio_text": null, "options": ["reschedule", "confirm", "cancel"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000099', 'fill_blank', 4, '{"sentence": "Can you ___ the time?", "options": ["confirm", "reschedule", "show up"], "correct": "confirm", "translation": "Você pode confirmar o horário?"}'),
('20000000-0000-0000-0000-000000000099', 'matching', 5, '{"pairs": [{"left": "to confirm", "right": "confirmar"}, {"left": "to cancel", "right": "cancelar"}, {"left": "to show up", "right": "aparecer"}, {"left": "to make it", "right": "conseguir comparecer"}]}'),
('20000000-0000-0000-0000-000000000099', 'word_order', 6, '{"words": ["the", "for", "didn''t", "meeting", "show", "up", "She"], "correct_sentence": "She didn''t show up for the meeting", "translation": "Ela não apareceu para a reunião"}'),
('20000000-0000-0000-0000-000000000099', 'typing', 7, '{"prompt_pt": "Traduza: ''Eu preciso cancelar nossos planos.''", "expected": "I need to cancel our plans.", "ai_review": true}');

-- ---------- Lição 10.5: Let's Hang Out (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000100', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000599"}'),
('20000000-0000-0000-0000-000000000100', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000600"}'),
('20000000-0000-0000-0000-000000000100', 'multiple_choice', 3, '{"question": "Complete: Do you want to ___ this weekend?", "audio_text": null, "options": ["hang out", "cancel", "decline"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000100', 'fill_blank', 4, '{"sentence": "I don''t think I can ___ tonight.", "options": ["make it", "confirm it", "invite it"], "correct": "make it", "translation": "Eu acho que não vou conseguir ir hoje à noite."}'),
('20000000-0000-0000-0000-000000000100', 'matching', 5, '{"pairs": [{"left": "to catch up", "right": "colocar o papo em dia"}, {"left": "to hang out", "right": "sair / passar tempo com"}, {"left": "get-together", "right": "reunião informal"}, {"left": "rain check", "right": "fica pra próxima"}]}'),
('20000000-0000-0000-0000-000000000100', 'word_order', 6, '{"words": ["soon", "up", "catch", "Let''s"], "correct_sentence": "Let''s catch up soon", "translation": "Vamos colocar o papo em dia logo"}'),
('20000000-0000-0000-0000-000000000100', 'listening', 7, '{"audio_text": "I''m looking forward to the party, sounds good, see you there!", "question": "How does the speaker feel about the party?", "options": ["looking forward to it", "wants to cancel it", "can''t make it"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000100', 'typing', 8, '{"prompt_pt": "Traduza: ''Podemos remarcar para a próxima semana?''", "expected": "Can we reschedule for next week?", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

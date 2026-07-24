-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 12 "Feelings & Personality"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 028_seed_a2_advice_suggestions.sql (vocabulário
-- 691-720, módulo 10000000-...-000024, lições 20000000-...-000116 a 120).
-- Terceiro dos 6 novos temas de A2.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000691', 'happy', 'ˈhæpi', 'adjective', 'feliz', 'She looks very happy today.', 'Ela parece muito feliz hoje.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000692', 'sad', 'sæd', 'adjective', 'triste', 'He feels sad about the news.', 'Ele se sente triste com a notícia.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000693', 'angry', 'ˈæŋɡri', 'adjective', 'com raiva', 'Why are you so angry?', 'Por que você está com tanta raiva?', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000694', 'nervous', 'ˈnɜːrvəs', 'adjective', 'nervoso', 'I''m nervous about the interview.', 'Eu estou nervoso com a entrevista.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000695', 'excited', 'ɪkˈsaɪtɪd', 'adjective', 'animado / empolgado', 'We''re excited about the trip.', 'Nós estamos animados com a viagem.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000696', 'bored', 'bɔːrd', 'adjective', 'entediado', 'I''m bored, let''s do something.', 'Eu estou entediado, vamos fazer alguma coisa.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000697', 'surprised', 'sərˈpraɪzd', 'adjective', 'surpreso', 'I was surprised by the news.', 'Eu fiquei surpreso com a notícia.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000698', 'scared', 'skeərd', 'adjective', 'com medo / assustado', 'She''s scared of spiders.', 'Ela tem medo de aranhas.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000699', 'proud', 'praʊd', 'adjective', 'orgulhoso', 'I''m proud of you.', 'Eu tenho orgulho de você.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000700', 'embarrassed', 'ɪmˈbærəst', 'adjective', 'envergonhado', 'I felt embarrassed at the party.', 'Eu me senti envergonhado na festa.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000701', 'confused', 'kənˈfjuːzd', 'adjective', 'confuso', 'I''m confused about the instructions.', 'Eu estou confuso com as instruções.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000702', 'relieved', 'rɪˈliːvd', 'adjective', 'aliviado', 'I''m relieved the exam is over.', 'Eu estou aliviado que a prova acabou.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000703', 'lonely', 'ˈloʊnli', 'adjective', 'sozinho / solitário', 'He feels lonely in the new city.', 'Ele se sente sozinho na cidade nova.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000704', 'to feel', 'tuː fiːl', 'verb', 'sentir-se', 'How do you feel today?', 'Como você está se sentindo hoje?', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000705', 'mood', 'muːd', 'noun', 'humor (estado de espírito)', 'She''s in a good mood today.', 'Ela está de bom humor hoje.', 'A2', array['feelings']),
('30000000-0000-0000-0000-000000000706', 'friendly', 'ˈfrendli', 'adjective', 'amigável', 'My neighbor is very friendly.', 'Meu vizinho é muito amigável.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000707', 'shy', 'ʃaɪ', 'adjective', 'tímido', 'My brother is shy with strangers.', 'Meu irmão é tímido com estranhos.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000708', 'outgoing', 'ˈaʊtɡoʊɪŋ', 'adjective', 'extrovertido', 'She''s very outgoing and talks to everyone.', 'Ela é muito extrovertida e fala com todo mundo.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000709', 'confident', 'ˈkɒnfɪdənt', 'adjective', 'confiante', 'He''s confident in interviews.', 'Ele é confiante em entrevistas.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000710', 'patient', 'ˈpeɪʃnt', 'adjective', 'paciente', 'My teacher is very patient.', 'Meu professor é muito paciente.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000711', 'lazy', 'ˈleɪzi', 'adjective', 'preguiçoso', 'Don''t be lazy, help me clean.', 'Não seja preguiçoso, me ajude a limpar.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000712', 'hardworking', 'ˈhɑːrdwɜːrkɪŋ', 'adjective', 'trabalhador / esforçado', 'She''s a hardworking student.', 'Ela é uma estudante esforçada.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000713', 'honest', 'ˈɒnɪst', 'adjective', 'honesto', 'He is always honest with me.', 'Ele é sempre honesto comigo.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000714', 'generous', 'ˈdʒenərəs', 'adjective', 'generoso', 'They are very generous people.', 'Eles são pessoas muito generosas.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000715', 'funny', 'ˈfʌni', 'adjective', 'engraçado', 'My best friend is really funny.', 'Meu melhor amigo é muito engraçado.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000716', 'stubborn', 'ˈstʌbərn', 'adjective', 'teimoso', 'My grandfather is a bit stubborn.', 'Meu avô é um pouco teimoso.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000717', 'sensitive', 'ˈsensətɪv', 'adjective', 'sensível', 'She''s sensitive about her work.', 'Ela é sensível sobre o trabalho dela.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000718', 'calm', 'kɑːm', 'adjective', 'calmo', 'He stays calm under pressure.', 'Ele fica calmo sob pressão.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000719', 'personality', 'ˌpɜːrsəˈnæləti', 'noun', 'personalidade', 'She has a great personality.', 'Ela tem uma ótima personalidade.', 'A2', array['personality']),
('30000000-0000-0000-0000-000000000720', 'to get along with', 'tuː ɡet əˈlɒŋ wɪð', 'verb', 'se dar bem com', 'I get along with my coworkers.', 'Eu me dou bem com meus colegas de trabalho.', 'A2', array['personality']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000024', 'A2', 'Feelings & Personality', 'Descrever emoções, humor e traços de personalidade.', 12, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000116', '10000000-0000-0000-0000-000000000024', 'How Do You Feel?', 1, 10),
('20000000-0000-0000-0000-000000000117', '10000000-0000-0000-0000-000000000024', 'Strong Emotions', 2, 10),
('20000000-0000-0000-0000-000000000118', '10000000-0000-0000-0000-000000000024', 'Personality Traits', 3, 10),
('20000000-0000-0000-0000-000000000119', '10000000-0000-0000-0000-000000000024', 'More Traits', 4, 10),
('20000000-0000-0000-0000-000000000120', '10000000-0000-0000-0000-000000000024', 'Getting Along (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 12.1: How Do You Feel? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000116', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000691"}'),
('20000000-0000-0000-0000-000000000116', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000692"}'),
('20000000-0000-0000-0000-000000000116', 'multiple_choice', 3, '{"question": "Complete: She looks very ___ today.", "audio_text": null, "options": ["happy", "lonely", "bored"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000116', 'fill_blank', 4, '{"sentence": "He feels ___ about the news.", "options": ["sad", "happy", "excited"], "correct": "sad", "translation": "Ele se sente triste com a notícia."}'),
('20000000-0000-0000-0000-000000000116', 'matching', 5, '{"pairs": [{"left": "happy", "right": "feliz"}, {"left": "sad", "right": "triste"}, {"left": "to feel", "right": "sentir-se"}, {"left": "mood", "right": "humor"}]}'),
('20000000-0000-0000-0000-000000000116', 'word_order', 6, '{"words": ["today", "feel", "you", "do", "How"], "correct_sentence": "How do you feel today", "translation": "Como você está se sentindo hoje"}'),
('20000000-0000-0000-0000-000000000116', 'listening', 7, '{"audio_text": "She''s in a good mood today, she looks very happy.", "question": "How does she look?", "options": ["happy", "sad", "angry"], "correct_index": 0}');

-- ---------- Lição 12.2: Strong Emotions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000117', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000694"}'),
('20000000-0000-0000-0000-000000000117', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000698"}'),
('20000000-0000-0000-0000-000000000117', 'multiple_choice', 3, '{"question": "Complete: I''m ___ about the interview.", "audio_text": null, "options": ["nervous", "proud", "relieved"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000117', 'fill_blank', 4, '{"sentence": "She''s ___ of spiders.", "options": ["scared", "excited", "confused"], "correct": "scared", "translation": "Ela tem medo de aranhas."}'),
('20000000-0000-0000-0000-000000000117', 'matching', 5, '{"pairs": [{"left": "nervous", "right": "nervoso"}, {"left": "excited", "right": "animado"}, {"left": "scared", "right": "com medo"}, {"left": "surprised", "right": "surpreso"}]}'),
('20000000-0000-0000-0000-000000000117', 'word_order', 6, '{"words": ["trip", "the", "about", "excited", "We''re"], "correct_sentence": "We''re excited about the trip", "translation": "Nós estamos animados com a viagem"}'),
('20000000-0000-0000-0000-000000000117', 'dictation', 7, '{"audio_text": "I was surprised by the news, and now I feel relieved.", "expected": "I was surprised by the news, and now I feel relieved."}');

-- ---------- Lição 12.3: Personality Traits ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000118', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000706"}'),
('20000000-0000-0000-0000-000000000118', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000707"}'),
('20000000-0000-0000-0000-000000000118', 'multiple_choice', 3, '{"question": "Complete: My neighbor is very ___.", "audio_text": null, "options": ["friendly", "lazy", "stubborn"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000118', 'fill_blank', 4, '{"sentence": "My brother is ___ with strangers.", "options": ["shy", "outgoing", "confident"], "correct": "shy", "translation": "Meu irmão é tímido com estranhos."}'),
('20000000-0000-0000-0000-000000000118', 'matching', 5, '{"pairs": [{"left": "friendly", "right": "amigável"}, {"left": "shy", "right": "tímido"}, {"left": "outgoing", "right": "extrovertido"}, {"left": "confident", "right": "confiante"}]}'),
('20000000-0000-0000-0000-000000000118', 'word_order', 6, '{"words": ["everyone", "to", "talks", "and", "outgoing", "She''s", "very"], "correct_sentence": "She''s very outgoing and talks to everyone", "translation": "Ela é muito extrovertida e fala com todo mundo"}'),
('20000000-0000-0000-0000-000000000118', 'listening', 7, '{"audio_text": "He''s confident in interviews, but my teacher is very patient with shy students.", "question": "Who is confident?", "options": ["he", "the teacher", "the shy students"], "correct_index": 0}');

-- ---------- Lição 12.4: More Traits ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000119', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000712"}'),
('20000000-0000-0000-0000-000000000119', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000715"}'),
('20000000-0000-0000-0000-000000000119', 'multiple_choice', 3, '{"question": "Complete: My best friend is really ___.", "audio_text": null, "options": ["funny", "lazy", "stubborn"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000119', 'fill_blank', 4, '{"sentence": "They are very ___ people.", "options": ["generous", "lonely", "confused"], "correct": "generous", "translation": "Eles são pessoas muito generosas."}'),
('20000000-0000-0000-0000-000000000119', 'matching', 5, '{"pairs": [{"left": "honest", "right": "honesto"}, {"left": "generous", "right": "generoso"}, {"left": "stubborn", "right": "teimoso"}, {"left": "sensitive", "right": "sensível"}]}'),
('20000000-0000-0000-0000-000000000119', 'word_order', 6, '{"words": ["pressure", "calm", "under", "He", "stays"], "correct_sentence": "He stays calm under pressure", "translation": "Ele fica calmo sob pressão"}'),
('20000000-0000-0000-0000-000000000119', 'typing', 7, '{"prompt_pt": "Traduza: ''Meu avô é um pouco teimoso.''", "expected": "My grandfather is a bit stubborn.", "ai_review": true}');

-- ---------- Lição 12.5: Getting Along (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000120', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000719"}'),
('20000000-0000-0000-0000-000000000120', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000720"}'),
('20000000-0000-0000-0000-000000000120', 'multiple_choice', 3, '{"question": "Complete: I ___ my coworkers.", "audio_text": null, "options": ["get along with", "am embarrassed by", "am confused about"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000120', 'fill_blank', 4, '{"sentence": "She has a great ___.", "options": ["personality", "mood", "hobby"], "correct": "personality", "translation": "Ela tem uma ótima personalidade."}'),
('20000000-0000-0000-0000-000000000120', 'matching', 5, '{"pairs": [{"left": "personality", "right": "personalidade"}, {"left": "to get along with", "right": "se dar bem com"}, {"left": "proud", "right": "orgulhoso"}, {"left": "embarrassed", "right": "envergonhado"}]}'),
('20000000-0000-0000-0000-000000000120', 'word_order', 6, '{"words": ["of", "proud", "you", "I''m"], "correct_sentence": "I''m proud of you", "translation": "Eu tenho orgulho de você"}'),
('20000000-0000-0000-0000-000000000120', 'listening', 7, '{"audio_text": "I felt embarrassed at the party, but everyone was friendly and I got along with them.", "question": "How did the speaker feel at first?", "options": ["embarrassed", "proud", "confident"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000120', 'typing', 8, '{"prompt_pt": "Traduza: ''Ele se sente sozinho na cidade nova.''", "expected": "He feels lonely in the new city.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

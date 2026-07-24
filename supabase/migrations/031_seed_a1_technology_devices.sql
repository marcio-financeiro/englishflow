-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 13 "Technology & Devices"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 029_seed_a1_sports_hobbies.sql (vocabulário
-- 721-750, módulo 10000000-...-000025, lições 20000000-...-000121 a 125).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000721', 'phone', 'foʊn', 'noun', 'telefone / celular', 'I lost my phone yesterday.', 'Eu perdi meu celular ontem.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000722', 'computer', 'kəmˈpjuːtər', 'noun', 'computador', 'I work on my computer all day.', 'Eu trabalho no meu computador o dia todo.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000723', 'laptop', 'ˈlæptɒp', 'noun', 'notebook / laptop', 'My laptop is very light.', 'Meu notebook é muito leve.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000724', 'tablet', 'ˈtæblət', 'noun', 'tablet', 'My daughter uses a tablet for school.', 'Minha filha usa um tablet para a escola.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000725', 'screen', 'skriːn', 'noun', 'tela', 'The screen is broken.', 'A tela está quebrada.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000726', 'charger', 'ˈtʃɑːrdʒər', 'noun', 'carregador', 'Can I borrow your charger?', 'Posso pegar seu carregador emprestado?', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000727', 'battery', 'ˈbætəri', 'noun', 'bateria', 'My battery is low.', 'Minha bateria está fraca.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000728', 'to charge', 'tuː tʃɑːrdʒ', 'verb', 'carregar (bateria)', 'I need to charge my phone.', 'Eu preciso carregar meu celular.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000729', 'to turn on', 'tuː tɜːrn ɒn', 'verb', 'ligar', 'Turn on the computer, please.', 'Ligue o computador, por favor.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000730', 'to turn off', 'tuː tɜːrn ɒf', 'verb', 'desligar', 'I always turn off my phone at night.', 'Eu sempre desligo meu celular à noite.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000731', 'app', 'æp', 'noun', 'aplicativo', 'I use this app every day.', 'Eu uso esse aplicativo todo dia.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000732', 'password', 'ˈpæswɜːrd', 'noun', 'senha', 'I forgot my password.', 'Eu esqueci minha senha.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000733', 'wifi', 'ˈwaɪfaɪ', 'noun', 'wifi', 'What is the wifi password?', 'Qual é a senha do wifi?', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000734', 'internet', 'ˈɪntərnet', 'noun', 'internet', 'The internet is slow today.', 'A internet está lenta hoje.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000735', 'to download', 'tuː ˌdaʊnˈloʊd', 'verb', 'baixar', 'I need to download this file.', 'Eu preciso baixar esse arquivo.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000736', 'to upload', 'tuː ˌʌpˈloʊd', 'verb', 'enviar / fazer upload', 'I uploaded the photos already.', 'Eu já enviei as fotos.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000737', 'file', 'faɪl', 'noun', 'arquivo', 'This file is too big.', 'Esse arquivo é grande demais.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000738', 'photo', 'ˈfoʊtoʊ', 'noun', 'foto', 'Take a photo of the sign.', 'Tire uma foto da placa.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000739', 'video', 'ˈvɪdioʊ', 'noun', 'vídeo', 'I watched a funny video.', 'Eu assisti um vídeo engraçado.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000740', 'message', 'ˈmesɪdʒ', 'noun', 'mensagem', 'I sent you a message.', 'Eu te enviei uma mensagem.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000741', 'to text', 'tuː tekst', 'verb', 'mandar mensagem de texto', 'I''ll text you later.', 'Eu vou te mandar mensagem depois.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000742', 'to call', 'tuː kɔːl', 'verb', 'ligar (telefone)', 'Call me when you arrive.', 'Me ligue quando você chegar.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000743', 'email', 'ˈiːmeɪl', 'noun', 'e-mail', 'I sent you an email.', 'Eu te enviei um e-mail.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000744', 'keyboard', 'ˈkiːbɔːrd', 'noun', 'teclado', 'My keyboard doesn''t work.', 'Meu teclado não funciona.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000745', 'mouse', 'maʊs', 'noun', 'mouse (computador)', 'I need a new mouse.', 'Eu preciso de um mouse novo.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000746', 'headphones', 'ˈhedfoʊnz', 'noun', 'fones de ouvido', 'I always wear headphones on the bus.', 'Eu sempre uso fones de ouvido no ônibus.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000747', 'to update', 'tuː əpˈdeɪt', 'verb', 'atualizar', 'I need to update this app.', 'Eu preciso atualizar esse aplicativo.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000748', 'broken', 'ˈbroʊkən', 'adjective', 'quebrado', 'My screen is broken.', 'Minha tela está quebrada.', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000749', 'to fix', 'tuː fɪks', 'verb', 'consertar', 'Can you fix my computer?', 'Você pode consertar meu computador?', 'A1', array['technology']),
('30000000-0000-0000-0000-000000000750', 'device', 'dɪˈvaɪs', 'noun', 'dispositivo / aparelho', 'This device is very useful.', 'Esse dispositivo é muito útil.', 'A1', array['technology']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000025', 'A1', 'Technology & Devices', 'Aparelhos, internet, mensagens e problemas técnicos do dia a dia.', 13, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000121', '10000000-0000-0000-0000-000000000025', 'My Devices', 1, 10),
('20000000-0000-0000-0000-000000000122', '10000000-0000-0000-0000-000000000025', 'Battery & Charging', 2, 10),
('20000000-0000-0000-0000-000000000123', '10000000-0000-0000-0000-000000000025', 'Internet & Apps', 3, 10),
('20000000-0000-0000-0000-000000000124', '10000000-0000-0000-0000-000000000025', 'Messages & Calls', 4, 10),
('20000000-0000-0000-0000-000000000125', '10000000-0000-0000-0000-000000000025', 'It''s Broken! (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 13.1: My Devices ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000121', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000721"}'),
('20000000-0000-0000-0000-000000000121', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000723"}'),
('20000000-0000-0000-0000-000000000121', 'multiple_choice', 3, '{"question": "Complete: My daughter uses a ___ for school.", "audio_text": null, "options": ["tablet", "keyboard", "charger"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000121', 'fill_blank', 4, '{"sentence": "My ___ is very light.", "options": ["laptop", "screen", "battery"], "correct": "laptop", "translation": "Meu notebook é muito leve."}'),
('20000000-0000-0000-0000-000000000121', 'matching', 5, '{"pairs": [{"left": "phone", "right": "celular"}, {"left": "computer", "right": "computador"}, {"left": "laptop", "right": "notebook"}, {"left": "tablet", "right": "tablet"}]}'),
('20000000-0000-0000-0000-000000000121', 'word_order', 6, '{"words": ["yesterday", "phone", "lost", "I", "my"], "correct_sentence": "I lost my phone yesterday", "translation": "Eu perdi meu celular ontem"}'),
('20000000-0000-0000-0000-000000000121', 'listening', 7, '{"audio_text": "This device is very useful, but the screen is small.", "question": "What is small?", "options": ["the screen", "the battery", "the keyboard"], "correct_index": 0}');

-- ---------- Lição 13.2: Battery & Charging ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000122', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000727"}'),
('20000000-0000-0000-0000-000000000122', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000728"}'),
('20000000-0000-0000-0000-000000000122', 'multiple_choice', 3, '{"question": "Complete: Can I borrow your ___?", "audio_text": null, "options": ["charger", "password", "file"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000122', 'fill_blank', 4, '{"sentence": "I need to ___ my phone.", "options": ["charge", "download", "update"], "correct": "charge", "translation": "Eu preciso carregar meu celular."}'),
('20000000-0000-0000-0000-000000000122', 'matching', 5, '{"pairs": [{"left": "battery", "right": "bateria"}, {"left": "to charge", "right": "carregar"}, {"left": "to turn on", "right": "ligar"}, {"left": "to turn off", "right": "desligar"}]}'),
('20000000-0000-0000-0000-000000000122', 'word_order', 6, '{"words": ["low", "battery", "My", "is"], "correct_sentence": "My battery is low", "translation": "Minha bateria está fraca"}'),
('20000000-0000-0000-0000-000000000122', 'dictation', 7, '{"audio_text": "I always turn off my phone at night to save the battery.", "expected": "I always turn off my phone at night to save the battery."}');

-- ---------- Lição 13.3: Internet & Apps ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000123', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000733"}'),
('20000000-0000-0000-0000-000000000123', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000735"}'),
('20000000-0000-0000-0000-000000000123', 'multiple_choice', 3, '{"question": "Complete: What is the ___ password?", "audio_text": null, "options": ["wifi", "app", "file"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000123', 'fill_blank', 4, '{"sentence": "The ___ is slow today.", "options": ["internet", "battery", "charger"], "correct": "internet", "translation": "A internet está lenta hoje."}'),
('20000000-0000-0000-0000-000000000123', 'matching', 5, '{"pairs": [{"left": "internet", "right": "internet"}, {"left": "app", "right": "aplicativo"}, {"left": "to download", "right": "baixar"}, {"left": "to upload", "right": "enviar"}]}'),
('20000000-0000-0000-0000-000000000123', 'word_order', 6, '{"words": ["this", "day", "I", "app", "every", "use"], "correct_sentence": "I use this app every day", "translation": "Eu uso esse aplicativo todo dia"}'),
('20000000-0000-0000-0000-000000000123', 'listening', 7, '{"audio_text": "I need to download this file, but I forgot my password.", "question": "What did the speaker forget?", "options": ["the password", "the wifi", "the app"], "correct_index": 0}');

-- ---------- Lição 13.4: Messages & Calls ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000124', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000740"}'),
('20000000-0000-0000-0000-000000000124', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000742"}'),
('20000000-0000-0000-0000-000000000124', 'multiple_choice', 3, '{"question": "Complete: ___ me when you arrive.", "audio_text": null, "options": ["Call", "Text", "Email"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000124', 'fill_blank', 4, '{"sentence": "I sent you an ___.", "options": ["email", "video", "photo"], "correct": "email", "translation": "Eu te enviei um e-mail."}'),
('20000000-0000-0000-0000-000000000124', 'matching', 5, '{"pairs": [{"left": "message", "right": "mensagem"}, {"left": "to text", "right": "mandar mensagem"}, {"left": "to call", "right": "ligar"}, {"left": "email", "right": "e-mail"}]}'),
('20000000-0000-0000-0000-000000000124', 'word_order', 6, '{"words": ["later", "you", "I''ll", "text"], "correct_sentence": "I''ll text you later", "translation": "Eu vou te mandar mensagem depois"}'),
('20000000-0000-0000-0000-000000000124', 'typing', 7, '{"prompt_pt": "Traduza: ''Eu te enviei uma mensagem.''", "expected": "I sent you a message.", "ai_review": true}');

-- ---------- Lição 13.5: It's Broken! (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000125', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000748"}'),
('20000000-0000-0000-0000-000000000125', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000749"}'),
('20000000-0000-0000-0000-000000000125', 'multiple_choice', 3, '{"question": "Complete: My screen is ___.", "audio_text": null, "options": ["broken", "charged", "updated"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000125', 'fill_blank', 4, '{"sentence": "Can you ___ my computer?", "options": ["fix", "download", "text"], "correct": "fix", "translation": "Você pode consertar meu computador?"}'),
('20000000-0000-0000-0000-000000000125', 'matching', 5, '{"pairs": [{"left": "broken", "right": "quebrado"}, {"left": "to fix", "right": "consertar"}, {"left": "keyboard", "right": "teclado"}, {"left": "headphones", "right": "fones de ouvido"}]}'),
('20000000-0000-0000-0000-000000000125', 'word_order', 6, '{"words": ["work", "doesn''t", "keyboard", "My"], "correct_sentence": "My keyboard doesn''t work", "translation": "Meu teclado não funciona"}'),
('20000000-0000-0000-0000-000000000125', 'listening', 7, '{"audio_text": "I need to update this app, and I also need to fix my mouse.", "question": "What does the speaker need to fix?", "options": ["the mouse", "the keyboard", "the headphones"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000125', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu preciso de um mouse novo.''", "expected": "I need a new mouse.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

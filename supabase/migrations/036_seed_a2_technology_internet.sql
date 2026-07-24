-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2: módulo 15 "Technology & Internet"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 034_seed_a2_housing_neighborhood.sql (vocabulário
-- 871-900, módulo 10000000-...-000030, lições 20000000-...-000146 a 150).
-- Sexto e ultimo dos novos temas de A2 — completa os 15 modulos-alvo do nivel.
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000871', 'social media', 'ˈsoʊʃl ˈmiːdiə', 'noun', 'redes sociais', 'I spend too much time on social media.', 'Eu passo tempo demais nas redes sociais.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000872', 'account', 'əˈkaʊnt', 'noun', 'conta (usuário)', 'I created a new account.', 'Eu criei uma nova conta.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000873', 'to post', 'tuː poʊst', 'verb', 'postar', 'She posts photos every day.', 'Ela posta fotos todo dia.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000874', 'to like', 'tuː laɪk', 'verb', 'curtir (post)', 'I liked your photo.', 'Eu curti sua foto.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000875', 'to comment', 'tuː ˈkɒment', 'verb', 'comentar', 'He commented on my post.', 'Ele comentou no meu post.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000876', 'to share (online)', 'tuː ʃeər', 'verb', 'compartilhar', 'She shared the article with me.', 'Ela compartilhou o artigo comigo.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000877', 'to follow', 'tuː ˈfɒloʊ', 'verb', 'seguir (perfil)', 'I follow her on Instagram.', 'Eu sigo ela no Instagram.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000878', 'follower', 'ˈfɒloʊər', 'noun', 'seguidor', 'She has thousands of followers.', 'Ela tem milhares de seguidores.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000879', 'website', 'ˈwebsaɪt', 'noun', 'site', 'I found this recipe on a website.', 'Eu encontrei essa receita em um site.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000880', 'browser', 'ˈbraʊzər', 'noun', 'navegador', 'Which browser do you use?', 'Qual navegador você usa?', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000881', 'to search', 'tuː sɜːrtʃ', 'verb', 'pesquisar', 'I searched for the answer online.', 'Eu pesquisei a resposta online.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000882', 'search engine', 'sɜːrtʃ ˈendʒɪn', 'noun', 'mecanismo de busca', 'Google is a search engine.', 'Google é um mecanismo de busca.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000883', 'link', 'lɪŋk', 'noun', 'link', 'Click on this link.', 'Clique nesse link.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000884', 'to click', 'tuː klɪk', 'verb', 'clicar', 'Click here to continue.', 'Clique aqui para continuar.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000885', 'notification', 'ˌnoʊtɪfɪˈkeɪʃn', 'noun', 'notificação', 'I got a notification on my phone.', 'Eu recebi uma notificação no celular.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000886', 'to block', 'tuː blɒk', 'verb', 'bloquear (usuário)', 'I blocked that account.', 'Eu bloqueei aquela conta.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000887', 'privacy', 'ˈpraɪvəsi', 'noun', 'privacidade', 'I''m worried about my privacy online.', 'Eu estou preocupado com minha privacidade online.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000888', 'to go viral', 'tuː ɡoʊ ˈvaɪrəl', 'verb', 'viralizar', 'The video went viral overnight.', 'O vídeo viralizou da noite para o dia.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000889', 'to stream', 'tuː striːm', 'verb', 'transmitir ao vivo / assistir online', 'We streamed the whole game.', 'Nós assistimos ao jogo todo online.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000890', 'cloud storage', 'klaʊd ˈstɔːrɪdʒ', 'noun', 'armazenamento em nuvem', 'I saved my photos in cloud storage.', 'Eu salvei minhas fotos no armazenamento em nuvem.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000891', 'to back up', 'tuː bæk ʌp', 'verb', 'fazer backup', 'Always back up your files.', 'Sempre faça backup dos seus arquivos.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000892', 'to sign up', 'tuː saɪn ʌp', 'verb', 'se cadastrar', 'I signed up for a new account.', 'Eu me cadastrei em uma nova conta.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000893', 'to log in', 'tuː lɒɡ ɪn', 'verb', 'fazer login', 'I can''t log in to my email.', 'Eu não consigo fazer login no meu e-mail.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000894', 'to log out', 'tuː lɒɡ aʊt', 'verb', 'fazer logout', 'Remember to log out on shared computers.', 'Lembre-se de fazer logout em computadores compartilhados.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000895', 'virus (computer)', 'ˈvaɪrəs', 'noun', 'vírus (computador)', 'My computer got a virus.', 'Meu computador pegou um vírus.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000896', 'to hack', 'tuː hæk', 'verb', 'invadir / hackear', 'Someone hacked my account.', 'Alguém invadiu minha conta.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000897', 'settings', 'ˈsetɪŋz', 'noun', 'configurações', 'Change this in the settings.', 'Mude isso nas configurações.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000898', 'to scroll', 'tuː skroʊl', 'verb', 'rolar (tela)', 'I scroll through my feed every morning.', 'Eu rolo meu feed toda manhã.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000899', 'to go offline', 'tuː ɡoʊ ˈɒflaɪn', 'verb', 'ficar offline', 'I need to go offline for a while.', 'Eu preciso ficar offline por um tempo.', 'A2', array['internet']),
('30000000-0000-0000-0000-000000000900', 'screen time', 'skriːn taɪm', 'noun', 'tempo de tela', 'My screen time increased this month.', 'Meu tempo de tela aumentou esse mês.', 'A2', array['internet']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000030', 'A2', 'Technology & Internet', 'Redes sociais, navegação, contas online e segurança digital.', 15, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000146', '10000000-0000-0000-0000-000000000030', 'Social Media', 1, 10),
('20000000-0000-0000-0000-000000000147', '10000000-0000-0000-0000-000000000030', 'Browsing & Searching', 2, 10),
('20000000-0000-0000-0000-000000000148', '10000000-0000-0000-0000-000000000030', 'Accounts & Logins', 3, 10),
('20000000-0000-0000-0000-000000000149', '10000000-0000-0000-0000-000000000030', 'Online Safety', 4, 10),
('20000000-0000-0000-0000-000000000150', '10000000-0000-0000-0000-000000000030', 'Screen Time (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 15.1: Social Media ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000146', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000871"}'),
('20000000-0000-0000-0000-000000000146', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000877"}'),
('20000000-0000-0000-0000-000000000146', 'multiple_choice', 3, '{"question": "Complete: I ___ her on Instagram.", "audio_text": null, "options": ["follow", "block", "search"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000146', 'fill_blank', 4, '{"sentence": "She has thousands of ___.", "options": ["followers", "accounts", "settings"], "correct": "followers", "translation": "Ela tem milhares de seguidores."}'),
('20000000-0000-0000-0000-000000000146', 'matching', 5, '{"pairs": [{"left": "social media", "right": "redes sociais"}, {"left": "to post", "right": "postar"}, {"left": "to like", "right": "curtir"}, {"left": "to follow", "right": "seguir"}]}'),
('20000000-0000-0000-0000-000000000146', 'word_order', 6, '{"words": ["day", "photos", "every", "posts", "She"], "correct_sentence": "She posts photos every day", "translation": "Ela posta fotos todo dia"}'),
('20000000-0000-0000-0000-000000000146', 'listening', 7, '{"audio_text": "I liked your photo, and I commented on it too.", "question": "What did the speaker do besides liking?", "options": ["commented", "shared it", "blocked it"], "correct_index": 0}');

-- ---------- Lição 15.2: Browsing & Searching ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000147', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000881"}'),
('20000000-0000-0000-0000-000000000147', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000883"}'),
('20000000-0000-0000-0000-000000000147', 'multiple_choice', 3, '{"question": "Complete: Google is a ___.", "audio_text": null, "options": ["search engine", "browser", "website"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000147', 'fill_blank', 4, '{"sentence": "Click on this ___.", "options": ["link", "account", "notification"], "correct": "link", "translation": "Clique nesse link."}'),
('20000000-0000-0000-0000-000000000147', 'matching', 5, '{"pairs": [{"left": "website", "right": "site"}, {"left": "browser", "right": "navegador"}, {"left": "to search", "right": "pesquisar"}, {"left": "to click", "right": "clicar"}]}'),
('20000000-0000-0000-0000-000000000147', 'word_order', 6, '{"words": ["online", "answer", "searched", "the", "I", "for"], "correct_sentence": "I searched for the answer online", "translation": "Eu pesquisei a resposta online"}'),
('20000000-0000-0000-0000-000000000147', 'dictation', 7, '{"audio_text": "I found this recipe on a website using my favorite search engine.", "expected": "I found this recipe on a website using my favorite search engine."}');

-- ---------- Lição 15.3: Accounts & Logins ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000148', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000892"}'),
('20000000-0000-0000-0000-000000000148', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000893"}'),
('20000000-0000-0000-0000-000000000148', 'multiple_choice', 3, '{"question": "Complete: I can''t ___ to my email.", "audio_text": null, "options": ["log in", "log out", "sign up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000148', 'fill_blank', 4, '{"sentence": "Remember to ___ on shared computers.", "options": ["log out", "log in", "back up"], "correct": "log out", "translation": "Lembre-se de fazer logout em computadores compartilhados."}'),
('20000000-0000-0000-0000-000000000148', 'matching', 5, '{"pairs": [{"left": "account", "right": "conta"}, {"left": "to sign up", "right": "se cadastrar"}, {"left": "to log in", "right": "fazer login"}, {"left": "to log out", "right": "fazer logout"}]}'),
('20000000-0000-0000-0000-000000000148', 'word_order', 6, '{"words": ["new", "for", "a", "signed", "account", "I", "up"], "correct_sentence": "I signed up for a new account", "translation": "Eu me cadastrei em uma nova conta"}'),
('20000000-0000-0000-0000-000000000148', 'listening', 7, '{"audio_text": "Change this in the settings, and remember to log out when you finish.", "question": "Where can you change this?", "options": ["in the settings", "in the browser", "in the account"], "correct_index": 0}');

-- ---------- Lição 15.4: Online Safety ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000149', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000887"}'),
('20000000-0000-0000-0000-000000000149', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000895"}'),
('20000000-0000-0000-0000-000000000149', 'multiple_choice', 3, '{"question": "Complete: Someone ___ my account.", "audio_text": null, "options": ["hacked", "shared", "followed"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000149', 'fill_blank', 4, '{"sentence": "Always ___ your files.", "options": ["back up", "block", "post"], "correct": "back up", "translation": "Sempre faça backup dos seus arquivos."}'),
('20000000-0000-0000-0000-000000000149', 'matching', 5, '{"pairs": [{"left": "privacy", "right": "privacidade"}, {"left": "virus (computer)", "right": "vírus"}, {"left": "to hack", "right": "invadir/hackear"}, {"left": "to block", "right": "bloquear"}]}'),
('20000000-0000-0000-0000-000000000149', 'word_order', 6, '{"words": ["a", "computer", "got", "virus", "My"], "correct_sentence": "My computer got a virus", "translation": "Meu computador pegou um vírus"}'),
('20000000-0000-0000-0000-000000000149', 'typing', 7, '{"prompt_pt": "Traduza: ''Eu bloqueei aquela conta.''", "expected": "I blocked that account.", "ai_review": true}');

-- ---------- Lição 15.5: Screen Time (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000150', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000898"}'),
('20000000-0000-0000-0000-000000000150', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000900"}'),
('20000000-0000-0000-0000-000000000150', 'multiple_choice', 3, '{"question": "Complete: My ___ increased this month.", "audio_text": null, "options": ["screen time", "notification", "cloud storage"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000150', 'fill_blank', 4, '{"sentence": "The video ___ overnight.", "options": ["went viral", "went offline", "went viral online"], "correct": "went viral", "translation": "O vídeo viralizou da noite para o dia."}'),
('20000000-0000-0000-0000-000000000150', 'matching', 5, '{"pairs": [{"left": "to go viral", "right": "viralizar"}, {"left": "to scroll", "right": "rolar (tela)"}, {"left": "to go offline", "right": "ficar offline"}, {"left": "screen time", "right": "tempo de tela"}]}'),
('20000000-0000-0000-0000-000000000150', 'word_order', 6, '{"words": ["morning", "feed", "my", "through", "I", "every", "scroll"], "correct_sentence": "I scroll through my feed every morning", "translation": "Eu rolo meu feed toda manhã"}'),
('20000000-0000-0000-0000-000000000150', 'listening', 7, '{"audio_text": "I need to go offline for a while, my screen time is too high.", "question": "Why does the speaker want to go offline?", "options": ["screen time is too high", "the internet is slow", "the account got hacked"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000150', 'typing', 8, '{"prompt_pt": "Traduza: ''Nós assistimos ao jogo todo online.''", "expected": "We streamed the whole game.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- A2 completa 15/15 modulos-alvo.
-- ============================================================================

-- ============================================================
-- Migration 061: Conteúdo B1 — Módulo 20 "Tecnologia e Redes Sociais"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-060)
-- Completa o B1 (20/20 módulos)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001471', 'social media', '/ˈsoʊʃəl ˈmiːdiə/', 'noun', 'redes sociais', 'She spends too much time on social media.', 'Ela passa tempo demais nas redes sociais.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001472', 'profile', '/ˈproʊfaɪl/', 'noun', 'perfil', 'He updated his profile picture last week.', 'Ele atualizou a foto do perfil na semana passada.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001473', 'post', '/poʊst/', 'verb', 'publicar, postar', 'She posted a photo from her trip.', 'Ela postou uma foto da viagem dela.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001474', 'comment', '/ˈkɒment/', 'noun', 'comentário', 'He left a nice comment on my post.', 'Ele deixou um comentário legal no meu post.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001475', 'share', '/ʃer/', 'verb', 'compartilhar', 'I shared the article with my friends.', 'Eu compartilhei o artigo com meus amigos.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001476', 'follow', '/ˈfɒloʊ/', 'verb', 'seguir', 'I started to follow her account last month.', 'Comecei a seguir a conta dela no mês passado.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001477', 'unfollow', '/ʌnˈfɒloʊ/', 'verb', 'deixar de seguir', 'He decided to unfollow a few accounts.', 'Ele decidiu deixar de seguir algumas contas.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001478', 'block', '/blɒk/', 'verb', 'bloquear', 'She had to block an annoying user.', 'Ela teve que bloquear um usuário irritante.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001479', 'privacy', '/ˈpraɪvəsi/', 'noun', 'privacidade', 'Check your privacy settings regularly.', 'Verifique suas configurações de privacidade regularmente.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001480', 'settings', '/ˈsetɪŋz/', 'noun', 'configurações', 'You can change the language in the settings.', 'Você pode mudar o idioma nas configurações.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001481', 'update', '/ʌpˈdeɪt/', 'verb', 'atualizar', 'Please update the app to the latest version.', 'Por favor, atualize o aplicativo para a versão mais recente.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001482', 'app', '/æp/', 'noun', 'aplicativo', 'I deleted an old app to save space.', 'Eu deletei um aplicativo antigo para economizar espaço.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001483', 'device', '/dɪˈvaɪs/', 'noun', 'dispositivo, aparelho', 'She connected the new device to her phone.', 'Ela conectou o novo dispositivo ao celular dela.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001484', 'wifi', '/ˈwaɪfaɪ/', 'noun', 'wi-fi', 'The wifi connection was very slow today.', 'A conexão de wi-fi estava muito lenta hoje.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001485', 'browser', '/ˈbraʊzər/', 'noun', 'navegador', 'Try opening the page in a different browser.', 'Tente abrir a página em um navegador diferente.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001486', 'search engine', '/sɜːrtʃ ˈendʒɪn/', 'noun', 'mecanismo de busca', 'She typed her question into a search engine.', 'Ela digitou a pergunta dela num mecanismo de busca.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001487', 'link', '/lɪŋk/', 'noun', 'link', 'Click the link to see the full article.', 'Clique no link para ver o artigo completo.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001488', 'hashtag', '/ˈhæʃtæɡ/', 'noun', 'hashtag', 'The post included a popular hashtag.', 'O post incluía uma hashtag popular.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001489', 'viral', '/ˈvaɪrəl/', 'adjective', 'viral', 'The video went viral in just one day.', 'O vídeo viralizou em apenas um dia.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001490', 'influencer', '/ˈɪnfluənsər/', 'noun', 'influenciador', 'The influencer recommended a new brand.', 'O influenciador recomendou uma marca nova.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001491', 'subscribe', '/səbˈskraɪb/', 'verb', 'inscrever-se', 'Subscribe to the channel for weekly updates.', 'Inscreva-se no canal para atualizações semanais.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001492', 'stream', '/striːm/', 'verb', 'transmitir ao vivo', 'They stream their gameplay every Friday night.', 'Eles transmitem o jogo ao vivo toda sexta à noite.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001493', 'cloud', '/klaʊd/', 'noun', 'nuvem (armazenamento)', 'All my photos are saved in the cloud.', 'Todas as minhas fotos ficam salvas na nuvem.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001494', 'backup', '/ˈbækʌp/', 'noun', 'backup, cópia de segurança', 'Always keep a backup of important files.', 'Sempre mantenha um backup de arquivos importantes.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001495', 'malware', '/ˈmælweər/', 'noun', 'malware', 'The email contained a link with malware.', 'O e-mail continha um link com malware.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001496', 'username', '/ˈjuːzərneɪm/', 'noun', 'nome de usuário', 'Choose a username that is easy to remember.', 'Escolha um nome de usuário fácil de lembrar.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001497', 'password', '/ˈpæswɜːrd/', 'noun', 'senha', 'Never share your password with anyone.', 'Nunca compartilhe sua senha com ninguém.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001498', 'notification', '/ˌnoʊtɪfɪˈkeɪʃən/', 'noun', 'notificação', 'I turned off notifications to focus better.', 'Desativei as notificações para me concentrar melhor.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001499', 'download', '/ˈdaʊnloʊd/', 'verb', 'baixar', 'You can download the file from the website.', 'Você pode baixar o arquivo do site.', 'B1', array['technology']),
('30000000-0000-0000-0000-000000001500', 'upload', '/ˈʌploʊd/', 'verb', 'enviar, fazer upload', 'She uploaded the video this morning.', 'Ela fez o upload do vídeo hoje de manhã.', 'B1', array['technology']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000050', 'B1', 'Tecnologia e Redes Sociais', 'Amplie seu vocabulário sobre redes sociais, aplicativos, segurança digital e o dia a dia com a tecnologia. Módulo que completa o nível B1.', 20, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000246', '10000000-0000-0000-0000-000000000050', 'Redes sociais básico', 1, 20),
('20000000-0000-0000-0000-000000000247', '10000000-0000-0000-0000-000000000050', 'Interações online', 2, 20),
('20000000-0000-0000-0000-000000000248', '10000000-0000-0000-0000-000000000050', 'Apps e dispositivos', 3, 20),
('20000000-0000-0000-0000-000000000249', '10000000-0000-0000-0000-000000000050', 'Segurança digital', 4, 20),
('20000000-0000-0000-0000-000000000250', '10000000-0000-0000-0000-000000000050', 'Revisão: vida conectada', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 246: Redes sociais básico (social media, profile, post, comment, share, follow)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000246', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001471", "show_image": false}'),
('20000000-0000-0000-0000-000000000246', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001472", "show_image": false}'),
('20000000-0000-0000-0000-000000000246', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001473", "show_image": false}'),
('20000000-0000-0000-0000-000000000246', 'multiple_choice', 4, '{"question": "She spends too much time on ___.", "audio_text": null, "options": ["social media", "settings", "malware"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000246', 'multiple_choice', 5, '{"question": "What does ''follow'' mean on social media?", "audio_text": null, "options": ["Seguir", "Bloquear", "Compartilhar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000246', 'matching', 6, '{"pairs": [{"left": "social media", "right": "redes sociais"}, {"left": "profile", "right": "perfil"}, {"left": "post", "right": "publicar"}, {"left": "comment", "right": "comentário"}, {"left": "share", "right": "compartilhar"}, {"left": "follow", "right": "seguir"}]}'),
('20000000-0000-0000-0000-000000000246', 'fill_blank', 7, '{"sentence": "He left a nice ___ on my post.", "options": ["comment", "profile", "device"], "correct": "comment", "translation": "Ele deixou um comentário legal no meu post."}'),
('20000000-0000-0000-0000-000000000246', 'fill_blank', 8, '{"sentence": "I ___ the article with my friends.", "options": ["shared", "followed", "posted"], "correct": "shared", "translation": "Eu compartilhei o artigo com meus amigos."}'),
('20000000-0000-0000-0000-000000000246', 'word_order', 9, '{"words": ["He", "updated", "his", "profile", "picture", "last", "week"], "correct_sentence": "He updated his profile picture last week", "translation": "Ele atualizou a foto do perfil na semana passada"}'),
('20000000-0000-0000-0000-000000000246', 'word_order', 10, '{"words": ["I", "started", "to", "follow", "her", "account"], "correct_sentence": "I started to follow her account", "translation": "Comecei a seguir a conta dela"}'),
('20000000-0000-0000-0000-000000000246', 'reading', 11, '{"passage": "Using social media usually starts with creating a profile. From there, people post photos, leave a comment on a friend''s picture, share interesting articles, and follow accounts they enjoy. These simple actions are now part of daily life for millions of people.", "translation": "Usar redes sociais geralmente começa com a criação de um perfil. A partir daí, as pessoas postam fotos, deixam comentários na foto de um amigo, compartilham artigos interessantes e seguem contas de que gostam. Essas ações simples agora fazem parte da vida diária de milhões de pessoas.", "question": "What is the first step mentioned in using social media?", "options": ["Posting a photo", "Creating a profile", "Leaving a comment"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000246', 'listening', 12, '{"audio_text": "She spends too much time on social media. He updated his profile picture last week. I started to follow her account.", "question": "What did he update, according to the audio?", "options": ["His password", "His profile picture", "His settings"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000246', 'dictation', 13, '{"audio_text": "She posted a photo from her trip.", "expected": "She posted a photo from her trip."}'),
('20000000-0000-0000-0000-000000000246', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu comecei a seguir o perfil dela e compartilhei o post.''", "expected": "I started to follow her profile and shared the post.", "ai_review": true}'),

-- Lição 247: Interações online (unfollow, block, privacy, settings, hashtag, viral)
('20000000-0000-0000-0000-000000000247', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001477", "show_image": false}'),
('20000000-0000-0000-0000-000000000247', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001478", "show_image": false}'),
('20000000-0000-0000-0000-000000000247', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001489", "show_image": false}'),
('20000000-0000-0000-0000-000000000247', 'multiple_choice', 4, '{"question": "Check your ___ settings regularly.", "audio_text": null, "options": ["privacy", "hashtag", "viral"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000247', 'multiple_choice', 5, '{"question": "What does ''viral'' mean?", "audio_text": null, "options": ["Viral (muito compartilhado)", "Bloqueado", "Privado"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000247', 'matching', 6, '{"pairs": [{"left": "unfollow", "right": "deixar de seguir"}, {"left": "block", "right": "bloquear"}, {"left": "privacy", "right": "privacidade"}, {"left": "settings", "right": "configurações"}, {"left": "hashtag", "right": "hashtag"}, {"left": "viral", "right": "viral"}]}'),
('20000000-0000-0000-0000-000000000247', 'fill_blank', 7, '{"sentence": "She had to ___ an annoying user.", "options": ["block", "share", "follow"], "correct": "block", "translation": "Ela teve que bloquear um usuário irritante."}'),
('20000000-0000-0000-0000-000000000247', 'fill_blank', 8, '{"sentence": "The video went ___ in just one day.", "options": ["viral", "private", "blocked"], "correct": "viral", "translation": "O vídeo viralizou em apenas um dia."}'),
('20000000-0000-0000-0000-000000000247', 'word_order', 9, '{"words": ["He", "decided", "to", "unfollow", "a", "few", "accounts"], "correct_sentence": "He decided to unfollow a few accounts", "translation": "Ele decidiu deixar de seguir algumas contas"}'),
('20000000-0000-0000-0000-000000000247', 'word_order', 10, '{"words": ["The", "post", "included", "a", "popular", "hashtag"], "correct_sentence": "The post included a popular hashtag", "translation": "O post incluía uma hashtag popular"}'),
('20000000-0000-0000-0000-000000000247', 'reading', 11, '{"passage": "Managing your online presence includes deciding who to unfollow, when to block someone, and checking your privacy settings often. A post with a good hashtag can go viral quickly, but not everyone wants that kind of attention.", "translation": "Gerenciar sua presença online inclui decidir quem deixar de seguir, quando bloquear alguém e verificar suas configurações de privacidade com frequência. Um post com uma boa hashtag pode viralizar rapidamente, mas nem todo mundo quer esse tipo de atenção.", "question": "What can help a post go viral, according to the text?", "options": ["Blocking users", "A good hashtag", "Privacy settings"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000247', 'listening', 12, '{"audio_text": "Check your privacy settings regularly. She had to block an annoying user. The video went viral in just one day.", "question": "What should you check regularly, according to the audio?", "options": ["Your hashtags", "Your privacy settings", "Your followers"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000247', 'dictation', 13, '{"audio_text": "Check your privacy settings regularly.", "expected": "Check your privacy settings regularly."}'),
('20000000-0000-0000-0000-000000000247', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu bloqueei o usuário e mudei minhas configurações de privacidade.''", "expected": "I blocked the user and changed my privacy settings.", "ai_review": true}'),

-- Lição 248: Apps e dispositivos (download, upload, app, device, wifi, browser)
('20000000-0000-0000-0000-000000000248', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001499", "show_image": false}'),
('20000000-0000-0000-0000-000000000248', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001482", "show_image": false}'),
('20000000-0000-0000-0000-000000000248', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001484", "show_image": false}'),
('20000000-0000-0000-0000-000000000248', 'multiple_choice', 4, '{"question": "You can ___ the file from the website.", "audio_text": null, "options": ["download", "block", "follow"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000248', 'multiple_choice', 5, '{"question": "What does ''browser'' mean?", "audio_text": null, "options": ["Navegador", "Aplicativo", "Dispositivo"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000248', 'matching', 6, '{"pairs": [{"left": "download", "right": "baixar"}, {"left": "upload", "right": "enviar, fazer upload"}, {"left": "app", "right": "aplicativo"}, {"left": "device", "right": "dispositivo"}, {"left": "wifi", "right": "wi-fi"}, {"left": "browser", "right": "navegador"}]}'),
('20000000-0000-0000-0000-000000000248', 'fill_blank', 7, '{"sentence": "She ___ the video this morning.", "options": ["uploaded", "downloaded", "followed"], "correct": "uploaded", "translation": "Ela fez o upload do vídeo hoje de manhã."}'),
('20000000-0000-0000-0000-000000000248', 'fill_blank', 8, '{"sentence": "Try opening the page in a different ___.", "options": ["browser", "device", "app"], "correct": "browser", "translation": "Tente abrir a página em um navegador diferente."}'),
('20000000-0000-0000-0000-000000000248', 'word_order', 9, '{"words": ["I", "deleted", "an", "old", "app", "to", "save", "space"], "correct_sentence": "I deleted an old app to save space", "translation": "Eu deletei um aplicativo antigo para economizar espaço"}'),
('20000000-0000-0000-0000-000000000248', 'word_order', 10, '{"words": ["The", "wifi", "connection", "was", "very", "slow", "today"], "correct_sentence": "The wifi connection was very slow today", "translation": "A conexão de wi-fi estava muito lenta hoje"}'),
('20000000-0000-0000-0000-000000000248', 'reading', 11, '{"passage": "Before uploading a large video, she decided to download a new app that compressed files. Unfortunately, the wifi connection was very slow that day, so she had to try a different browser to finish the upload.", "translation": "Antes de fazer o upload de um vídeo grande, ela decidiu baixar um novo aplicativo que comprimia arquivos. Infelizmente, a conexão de wi-fi estava muito lenta naquele dia, então ela teve que tentar um navegador diferente para terminar o upload.", "question": "Why did she try a different browser, according to the text?", "options": ["The app was deleted", "The wifi was slow", "The device broke"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000248', 'listening', 12, '{"audio_text": "You can download the file from the website. She connected the new device to her phone. The wifi connection was very slow today.", "question": "What was very slow today, according to the audio?", "options": ["The browser", "The wifi connection", "The app"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000248', 'dictation', 13, '{"audio_text": "You can download the file from the website.", "expected": "You can download the file from the website."}'),
('20000000-0000-0000-0000-000000000248', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu baixei o aplicativo, mas o wi-fi estava lento.''", "expected": "I downloaded the app, but the wifi was slow.", "ai_review": true}'),

-- Lição 249: Segurança digital (username, password, notification, update, backup, malware)
('20000000-0000-0000-0000-000000000249', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001497", "show_image": false}'),
('20000000-0000-0000-0000-000000000249', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001494", "show_image": false}'),
('20000000-0000-0000-0000-000000000249', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001495", "show_image": false}'),
('20000000-0000-0000-0000-000000000249', 'multiple_choice', 4, '{"question": "Never share your ___ with anyone.", "audio_text": null, "options": ["password", "username", "notification"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000249', 'multiple_choice', 5, '{"question": "What does ''malware'' mean?", "audio_text": null, "options": ["Malware, vírus", "Backup", "Configuração"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000249', 'matching', 6, '{"pairs": [{"left": "username", "right": "nome de usuário"}, {"left": "password", "right": "senha"}, {"left": "notification", "right": "notificação"}, {"left": "update", "right": "atualizar"}, {"left": "backup", "right": "backup"}, {"left": "malware", "right": "malware"}]}'),
('20000000-0000-0000-0000-000000000249', 'fill_blank', 7, '{"sentence": "I turned off ___ to focus better.", "options": ["notifications", "backups", "passwords"], "correct": "notifications", "translation": "Desativei as notificações para me concentrar melhor."}'),
('20000000-0000-0000-0000-000000000249', 'fill_blank', 8, '{"sentence": "Always keep a ___ of important files.", "options": ["backup", "password", "username"], "correct": "backup", "translation": "Sempre mantenha um backup de arquivos importantes."}'),
('20000000-0000-0000-0000-000000000249', 'word_order', 9, '{"words": ["Choose", "a", "username", "that", "is", "easy", "to", "remember"], "correct_sentence": "Choose a username that is easy to remember", "translation": "Escolha um nome de usuário fácil de lembrar"}'),
('20000000-0000-0000-0000-000000000249', 'word_order', 10, '{"words": ["The", "email", "contained", "a", "link", "with", "malware"], "correct_sentence": "The email contained a link with malware", "translation": "O e-mail continha um link com malware"}'),
('20000000-0000-0000-0000-000000000249', 'reading', 11, '{"passage": "Good digital security starts with a strong username and password. It also helps to update your apps regularly, keep a backup of important files, and avoid clicking on links that might contain malware. A suspicious notification is often a warning sign.", "translation": "Uma boa segurança digital começa com um nome de usuário e senha fortes. Também ajuda atualizar seus aplicativos regularmente, manter um backup de arquivos importantes e evitar clicar em links que possam conter malware. Uma notificação suspeita costuma ser um sinal de alerta.", "question": "What is often a warning sign, according to the text?", "options": ["A strong password", "A suspicious notification", "A regular update"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000249', 'listening', 12, '{"audio_text": "Never share your password with anyone. Always keep a backup of important files. The email contained a link with malware.", "question": "What did the email contain, according to the audio?", "options": ["A backup", "A link with malware", "A notification"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000249', 'dictation', 13, '{"audio_text": "Never share your password with anyone.", "expected": "Never share your password with anyone."}'),
('20000000-0000-0000-0000-000000000249', 'typing', 14, '{"prompt_pt": "Traduza: ''Sempre atualize suas senhas e mantenha um backup.''", "expected": "Always update your passwords and keep a backup.", "ai_review": true}'),

-- Lição 250: Revisão + vida conectada (search engine, link, influencer, subscribe, stream, cloud)
('20000000-0000-0000-0000-000000000250', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001486", "show_image": false}'),
('20000000-0000-0000-0000-000000000250', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001490", "show_image": false}'),
('20000000-0000-0000-0000-000000000250', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001493", "show_image": false}'),
('20000000-0000-0000-0000-000000000250', 'multiple_choice', 4, '{"question": "All my photos are saved in the ___.", "audio_text": null, "options": ["cloud", "browser", "settings"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000250', 'multiple_choice', 5, '{"question": "What does ''subscribe'' mean?", "audio_text": null, "options": ["Inscrever-se", "Bloquear", "Compartilhar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000250', 'matching', 6, '{"pairs": [{"left": "search engine", "right": "mecanismo de busca"}, {"left": "link", "right": "link"}, {"left": "influencer", "right": "influenciador"}, {"left": "subscribe", "right": "inscrever-se"}, {"left": "stream", "right": "transmitir ao vivo"}, {"left": "cloud", "right": "nuvem"}]}'),
('20000000-0000-0000-0000-000000000250', 'fill_blank', 7, '{"sentence": "Click the ___ to see the full article.", "options": ["link", "cloud", "backup"], "correct": "link", "translation": "Clique no link para ver o artigo completo."}'),
('20000000-0000-0000-0000-000000000250', 'fill_blank', 8, '{"sentence": "They ___ their gameplay every Friday night.", "options": ["stream", "subscribe", "block"], "correct": "stream", "translation": "Eles transmitem o jogo ao vivo toda sexta à noite."}'),
('20000000-0000-0000-0000-000000000250', 'word_order', 9, '{"words": ["She", "typed", "her", "question", "into", "a", "search", "engine"], "correct_sentence": "She typed her question into a search engine", "translation": "Ela digitou a pergunta dela num mecanismo de busca"}'),
('20000000-0000-0000-0000-000000000250', 'word_order', 10, '{"words": ["The", "influencer", "recommended", "a", "new", "brand"], "correct_sentence": "The influencer recommended a new brand", "translation": "O influenciador recomendou uma marca nova"}'),
('20000000-0000-0000-0000-000000000250', 'reading', 11, '{"passage": "Technology has changed how we live and connect with others. We use a search engine to find answers, click a link to read more, subscribe to channels we like, and stream videos in real time. Even an influencer''s daily post can reach millions of people, all thanks to data saved safely in the cloud.", "translation": "A tecnologia mudou a forma como vivemos e nos conectamos com os outros. Usamos um mecanismo de busca para encontrar respostas, clicamos num link para ler mais, nos inscrevemos em canais que gostamos e transmitimos vídeos em tempo real. Até o post diário de um influenciador pode alcançar milhões de pessoas, tudo graças aos dados salvos com segurança na nuvem.", "question": "What can even reach millions of people, according to the text?", "options": ["A search engine", "An influencer''s daily post", "A backup file"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000250', 'listening', 12, '{"audio_text": "She typed her question into a search engine. They stream their gameplay every Friday night. All my photos are saved in the cloud.", "question": "When do they stream their gameplay, according to the audio?", "options": ["Every Friday night", "Every morning", "Once a month"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000250', 'dictation', 13, '{"audio_text": "All my photos are saved in the cloud.", "expected": "All my photos are saved in the cloud."}'),
('20000000-0000-0000-0000-000000000250', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu me inscrevi no canal e assisti à transmissão ao vivo.''", "expected": "I subscribed to the channel and watched the live stream.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000250', 'typing', 15, '{"prompt_pt": "Traduza: ''Um mecanismo de busca me ajudou a encontrar o link certo.''", "expected": "A search engine helped me find the right link.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- B1 COMPLETO: 20/20 módulos
-- ============================================================

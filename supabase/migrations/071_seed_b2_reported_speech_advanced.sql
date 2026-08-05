-- ============================================================
-- Migration 071: Conteúdo B2 — Módulo 10 "Reported Speech Avançado"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos anteriores (042-070)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001771', 'claim', '/kleɪm/', 'verb', 'alegar', 'She claimed that she had never seen him before.', 'Ela alegou que nunca tinha visto ele antes.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001772', 'admit', '/ədˈmɪt/', 'verb', 'admitir', 'He admitted that he had made a mistake.', 'Ele admitiu que tinha cometido um erro.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001773', 'deny', '/dɪˈnaɪ/', 'verb', 'negar', 'She denied stealing the money.', 'Ela negou ter roubado o dinheiro.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001774', 'insist', '/ɪnˈsɪst/', 'verb', 'insistir', 'He insisted that he was right.', 'Ele insistiu que estava certo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001775', 'suggest', '/səˈdʒest/', 'verb', 'sugerir', 'She suggested going to the beach.', 'Ela sugeriu ir à praia.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001776', 'warn', '/wɔːrn/', 'verb', 'avisar', 'The doctor warned him not to smoke.', 'O médico o avisou para não fumar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001777', 'advise', '/ədˈvaɪz/', 'verb', 'aconselhar', 'The teacher advised her to study more.', 'A professora a aconselhou a estudar mais.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001778', 'urge', '/ɜːrdʒ/', 'verb', 'instar', 'They urged him to accept the offer.', 'Eles o instaram a aceitar a oferta.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001779', 'beg', '/beɡ/', 'verb', 'implorar', 'She begged him to stay.', 'Ela implorou para ele ficar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001780', 'threaten', '/ˈθretən/', 'verb', 'ameaçar', 'He threatened to quit his job.', 'Ele ameaçou pedir demissão.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001781', 'promise', '/ˈprɑːmɪs/', 'verb', 'prometer', 'She promised to call me later.', 'Ela prometeu me ligar mais tarde.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001782', 'complain', '/kəmˈpleɪn/', 'verb', 'reclamar', 'He complained that the food was cold.', 'Ele reclamou que a comida estava fria.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001783', 'explain', '/ɪkˈspleɪn/', 'verb', 'explicar', 'She explained why she was late.', 'Ela explicou por que estava atrasada.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001784', 'mention', '/ˈmenʃən/', 'verb', 'mencionar', 'He mentioned that he might move abroad.', 'Ele mencionou que talvez se mudasse para o exterior.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001785', 'wonder', '/ˈwʌndər/', 'verb', 'perguntar-se', 'She wondered what time it was.', 'Ela se perguntou que horas eram.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001786', 'recommend', '/ˌrekəˈmend/', 'verb', 'recomendar', 'The doctor recommended that he rest.', 'O médico recomendou que ele descansasse.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001787', 'refuse', '/rɪˈfjuːz/', 'verb', 'recusar', 'He refused to answer the question.', 'Ele se recusou a responder a pergunta.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001788', 'agree', '/əˈɡriː/', 'verb', 'concordar', 'She agreed to help with the project.', 'Ela concordou em ajudar com o projeto.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001789', 'apologize', '/əˈpɑːlədʒaɪz/', 'verb', 'desculpar-se', 'He apologized for being late.', 'Ele se desculpou por estar atrasado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001790', 'accuse', '/əˈkjuːz/', 'verb', 'acusar', 'She accused him of lying.', 'Ela o acusou de mentir.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001791', 'confirm', '/kənˈfɜːrm/', 'verb', 'confirmar', 'He confirmed that the meeting was on Monday.', 'Ele confirmou que a reunião era na segunda-feira.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001792', 'remind', '/rɪˈmaɪnd/', 'verb', 'lembrar', 'She reminded him to bring his passport.', 'Ela o lembrou de trazer o passaporte.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001793', 'persuade', '/pərˈsweɪd/', 'verb', 'persuadir', 'They persuaded her to join the team.', 'Eles a persuadiram a entrar para o time.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001794', 'convince', '/kənˈvɪns/', 'verb', 'convencer', 'He convinced me that it was a good idea.', 'Ele me convenceu de que era uma boa ideia.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001795', 'assure', '/əˈʃʊr/', 'verb', 'assegurar', 'She assured me that everything was fine.', 'Ela me assegurou que estava tudo bem.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001796', 'demand', '/dɪˈmænd/', 'verb', 'exigir', 'He demanded to speak to the manager.', 'Ele exigiu falar com o gerente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001797', 'offer', '/ˈɔːfər/', 'verb', 'oferecer', 'She offered to help me with the move.', 'Ela se ofereceu para me ajudar com a mudança.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001798', 'invite', '/ɪnˈvaɪt/', 'verb', 'convidar', 'They invited us to their wedding.', 'Eles nos convidaram para o casamento deles.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001799', 'order', '/ˈɔːrdər/', 'verb', 'ordenar', 'The manager ordered them to finish the report.', 'O gerente ordenou que eles terminassem o relatório.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001800', 'request', '/rɪˈkwest/', 'verb', 'solicitar', 'She requested that he arrive early.', 'Ela solicitou que ele chegasse cedo.', 'B2', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000060', 'B2', 'Reported Speech Avançado', 'Aprenda a relatar perguntas, comandos, pedidos e modais no discurso indireto, além de verbos de relato avançados como claim, admit e insist.', 10, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000296', '10000000-0000-0000-0000-000000000060', 'Perguntas diretas e indiretas', 1, 20),
('20000000-0000-0000-0000-000000000297', '10000000-0000-0000-0000-000000000060', 'Comandos e pedidos', 2, 20),
('20000000-0000-0000-0000-000000000298', '10000000-0000-0000-0000-000000000060', 'Modais no discurso indireto', 3, 20),
('20000000-0000-0000-0000-000000000299', '10000000-0000-0000-0000-000000000060', 'Verbos de relato avançados', 4, 20),
('20000000-0000-0000-0000-000000000300', '10000000-0000-0000-0000-000000000060', 'Revisão: comunicação e negociação', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 296: Perguntas diretas e indiretas (claim, admit, deny, insist, suggest, warn)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000296', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001771", "show_image": false}'),
('20000000-0000-0000-0000-000000000296', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001773", "show_image": false}'),
('20000000-0000-0000-0000-000000000296', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001776", "show_image": false}'),
('20000000-0000-0000-0000-000000000296', 'multiple_choice', 4, '{"question": "\"Do you live here?\" he asked her. → He asked her ___.", "audio_text": null, "options": ["if she lived there", "if she lives here", "did she live there"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000296', 'multiple_choice', 5, '{"question": "\"What time is it?\" she wondered. → She wondered ___.", "audio_text": null, "options": ["what time it was", "what time is it", "what time was it"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000296', 'matching', 6, '{"pairs": [{"left": "claim", "right": "alegar"}, {"left": "admit", "right": "admitir"}, {"left": "deny", "right": "negar"}, {"left": "insist", "right": "insistir"}, {"left": "suggest", "right": "sugerir"}, {"left": "warn", "right": "avisar"}]}'),
('20000000-0000-0000-0000-000000000296', 'fill_blank', 7, '{"sentence": "She ___ that she had never seen him before.", "options": ["claimed", "claim", "claiming"], "correct": "claimed", "translation": "Ela alegou que nunca tinha visto ele antes."}'),
('20000000-0000-0000-0000-000000000296', 'fill_blank', 8, '{"sentence": "She ___ stealing the money.", "options": ["denied", "deny", "denies"], "correct": "denied", "translation": "Ela negou ter roubado o dinheiro."}'),
('20000000-0000-0000-0000-000000000296', 'word_order', 9, '{"words": ["She", "wondered", "what", "time", "it", "was"], "correct_sentence": "She wondered what time it was", "translation": "Ela se perguntou que horas eram"}'),
('20000000-0000-0000-0000-000000000296', 'word_order', 10, '{"words": ["The", "doctor", "warned", "him", "not", "to", "smoke"], "correct_sentence": "The doctor warned him not to smoke", "translation": "O médico o avisou para não fumar"}'),
('20000000-0000-0000-0000-000000000296', 'reading', 11, '{"passage": "When we report questions, the word order changes and we drop the question mark. \"Do you live here?\" becomes ''he asked her if she lived there'', and \"What time is it?\" becomes ''she wondered what time it was''. Reported questions never use auxiliary verbs like ''do'' or ''did'' in the reported clause.", "translation": "Quando relatamos perguntas, a ordem das palavras muda e removemos o ponto de interrogação. \"Você mora aqui?\" vira ''ele perguntou se ela morava ali'', e \"Que horas são?\" vira ''ela se perguntou que horas eram''. Perguntas relatadas nunca usam verbos auxiliares como ''do'' ou ''did'' na oração relatada.", "question": "What do reported questions never use in the reported clause, according to the text?", "options": ["A subject", "Auxiliary verbs like ''do'' or ''did''", "A verb"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000296', 'listening', 12, '{"audio_text": "She claimed that she had never seen him before. She denied stealing the money. He insisted that he was right.", "question": "What did she deny, according to the audio?", "options": ["Seeing him", "Stealing the money", "Being right"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000296', 'dictation', 13, '{"audio_text": "She wondered what time it was.", "expected": "She wondered what time it was."}'),
('20000000-0000-0000-0000-000000000296', 'typing', 14, '{"prompt_pt": "Traduza (discurso indireto): ''Ela perguntou se ele tinha visto o e-mail.''", "expected": "She asked if he had seen the email.", "ai_review": true}'),

-- Lição 297: Comandos e pedidos (advise, urge, beg, threaten, promise, complain)
('20000000-0000-0000-0000-000000000297', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001777", "show_image": false}'),
('20000000-0000-0000-0000-000000000297', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001779", "show_image": false}'),
('20000000-0000-0000-0000-000000000297', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001781", "show_image": false}'),
('20000000-0000-0000-0000-000000000297', 'multiple_choice', 4, '{"question": "\"Study more,\" the teacher said. → The teacher advised her ___.", "audio_text": null, "options": ["to study more", "study more", "that study more"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000297', 'multiple_choice', 5, '{"question": "\"Please stay,\" she said. → She begged him ___.", "audio_text": null, "options": ["to stay", "stay", "that he stays"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000297', 'matching', 6, '{"pairs": [{"left": "advise", "right": "aconselhar"}, {"left": "urge", "right": "instar"}, {"left": "beg", "right": "implorar"}, {"left": "threaten", "right": "ameaçar"}, {"left": "promise", "right": "prometer"}, {"left": "complain", "right": "reclamar"}]}'),
('20000000-0000-0000-0000-000000000297', 'fill_blank', 7, '{"sentence": "They ___ him to accept the offer.", "options": ["urged", "urge", "urging"], "correct": "urged", "translation": "Eles o instaram a aceitar a oferta."}'),
('20000000-0000-0000-0000-000000000297', 'fill_blank', 8, '{"sentence": "He ___ to quit his job.", "options": ["threatened", "threaten", "threatens"], "correct": "threatened", "translation": "Ele ameaçou pedir demissão."}'),
('20000000-0000-0000-0000-000000000297', 'word_order', 9, '{"words": ["The", "teacher", "advised", "her", "to", "study", "more"], "correct_sentence": "The teacher advised her to study more", "translation": "A professora a aconselhou a estudar mais"}'),
('20000000-0000-0000-0000-000000000297', 'word_order', 10, '{"words": ["He", "complained", "that", "the", "food", "was", "cold"], "correct_sentence": "He complained that the food was cold", "translation": "Ele reclamou que a comida estava fria"}'),
('20000000-0000-0000-0000-000000000297', 'reading', 11, '{"passage": "Many reporting verbs are followed by an object plus ''to'' + infinitive: the teacher advised her to study more, they urged him to accept the offer, and she begged him to stay. Other verbs, like ''promise'' and ''threaten'', can be followed directly by ''to'' + infinitive without an object: he promised to call, and he threatened to quit his job.", "translation": "Muitos verbos de relato são seguidos de um objeto mais ''to'' + infinitivo: a professora a aconselhou a estudar mais, eles o instaram a aceitar a oferta, e ela implorou para ele ficar. Outros verbos, como ''promise'' e ''threaten'', podem ser seguidos diretamente de ''to'' + infinitivo sem objeto: ele prometeu ligar, e ele ameaçou pedir demissão.", "question": "Which verbs can be followed directly by ''to'' + infinitive without an object, according to the text?", "options": ["Advise and urge", "Promise and threaten", "Beg and complain"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000297', 'listening', 12, '{"audio_text": "The teacher advised her to study more. They urged him to accept the offer. She begged him to stay.", "question": "What did they urge him to do, according to the audio?", "options": ["Study more", "Accept the offer", "Stay"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000297', 'dictation', 13, '{"audio_text": "They urged him to accept the offer.", "expected": "They urged him to accept the offer."}'),
('20000000-0000-0000-0000-000000000297', 'typing', 14, '{"prompt_pt": "Traduza (discurso indireto): ''Ele prometeu terminar o relatório até sexta-feira.''", "expected": "He promised to finish the report by Friday.", "ai_review": true}'),

-- Lição 298: Modais no discurso indireto (explain, mention, wonder, recommend, refuse, agree)
('20000000-0000-0000-0000-000000000298', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001783", "show_image": false}'),
('20000000-0000-0000-0000-000000000298', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001786", "show_image": false}'),
('20000000-0000-0000-0000-000000000298', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001787", "show_image": false}'),
('20000000-0000-0000-0000-000000000298', 'multiple_choice', 4, '{"question": "\"I might move abroad,\" he said. → He mentioned that he ___ move abroad.", "audio_text": null, "options": ["might", "may", "will"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000298', 'multiple_choice', 5, '{"question": "\"You must rest,\" the doctor said. → The doctor recommended that he ___ rest.", "audio_text": null, "options": ["should", "must", "will"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000298', 'matching', 6, '{"pairs": [{"left": "explain", "right": "explicar"}, {"left": "mention", "right": "mencionar"}, {"left": "wonder", "right": "perguntar-se"}, {"left": "recommend", "right": "recomendar"}, {"left": "refuse", "right": "recusar"}, {"left": "agree", "right": "concordar"}]}'),
('20000000-0000-0000-0000-000000000298', 'fill_blank', 7, '{"sentence": "He ___ that he might move abroad.", "options": ["mentioned", "mention", "mentions"], "correct": "mentioned", "translation": "Ele mencionou que talvez se mudasse para o exterior."}'),
('20000000-0000-0000-0000-000000000298', 'fill_blank', 8, '{"sentence": "He ___ to answer the question.", "options": ["refused", "refuse", "refusing"], "correct": "refused", "translation": "Ele se recusou a responder a pergunta."}'),
('20000000-0000-0000-0000-000000000298', 'word_order', 9, '{"words": ["She", "explained", "why", "she", "was", "late"], "correct_sentence": "She explained why she was late", "translation": "Ela explicou por que estava atrasada"}'),
('20000000-0000-0000-0000-000000000298', 'word_order', 10, '{"words": ["She", "agreed", "to", "help", "with", "the", "project"], "correct_sentence": "She agreed to help with the project", "translation": "Ela concordou em ajudar com o projeto"}'),
('20000000-0000-0000-0000-000000000298', 'reading', 11, '{"passage": "When reporting modal verbs, some stay the same and others change. ''Might'', ''could'' and ''would'' usually stay the same: he mentioned that he might move abroad. ''Must'' for obligation often becomes ''had to'', but when it means deduction, it can stay as ''must have''. ''Can'' becomes ''could'', as in the doctor recommended that he rest.", "translation": "Ao relatar verbos modais, alguns permanecem iguais e outros mudam. ''Might'', ''could'' e ''would'' geralmente permanecem iguais: ele mencionou que talvez se mudasse para o exterior. ''Must'' de obrigação costuma virar ''had to'', mas quando significa dedução, pode continuar como ''must have''. ''Can'' vira ''could''.", "question": "According to the text, what usually happens to ''might'', ''could'' and ''would'' in reported speech?", "options": ["They disappear", "They usually stay the same", "They become ''must''"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000298', 'listening', 12, '{"audio_text": "He mentioned that he might move abroad. She explained why she was late. He refused to answer the question.", "question": "What did he mention, according to the audio?", "options": ["That he might move abroad", "That he was late", "That he refused to answer"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000298', 'dictation', 13, '{"audio_text": "He mentioned that he might move abroad.", "expected": "He mentioned that he might move abroad."}'),
('20000000-0000-0000-0000-000000000298', 'typing', 14, '{"prompt_pt": "Traduza (discurso indireto): ''Ela explicou que talvez pudesse ajudar mais tarde.''", "expected": "She explained that she might be able to help later.", "ai_review": true}'),

-- Lição 299: Verbos de relato avançados (apologize, accuse, confirm, remind, persuade, convince)
('20000000-0000-0000-0000-000000000299', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001789", "show_image": false}'),
('20000000-0000-0000-0000-000000000299', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001793", "show_image": false}'),
('20000000-0000-0000-0000-000000000299', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001794", "show_image": false}'),
('20000000-0000-0000-0000-000000000299', 'multiple_choice', 4, '{"question": "He ___ for being late.", "audio_text": null, "options": ["apologized", "apologize", "apologizing"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000299', 'multiple_choice', 5, '{"question": "She accused him ___ lying.", "audio_text": null, "options": ["of", "to", "for"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000299', 'matching', 6, '{"pairs": [{"left": "apologize", "right": "desculpar-se"}, {"left": "accuse", "right": "acusar"}, {"left": "confirm", "right": "confirmar"}, {"left": "remind", "right": "lembrar"}, {"left": "persuade", "right": "persuadir"}, {"left": "convince", "right": "convencer"}]}'),
('20000000-0000-0000-0000-000000000299', 'fill_blank', 7, '{"sentence": "She ___ him to bring his passport.", "options": ["reminded", "remind", "reminding"], "correct": "reminded", "translation": "Ela o lembrou de trazer o passaporte."}'),
('20000000-0000-0000-0000-000000000299', 'fill_blank', 8, '{"sentence": "He ___ me that it was a good idea.", "options": ["convinced", "convince", "convinces"], "correct": "convinced", "translation": "Ele me convenceu de que era uma boa ideia."}'),
('20000000-0000-0000-0000-000000000299', 'word_order', 9, '{"words": ["He", "confirmed", "that", "the", "meeting", "was", "on", "Monday"], "correct_sentence": "He confirmed that the meeting was on Monday", "translation": "Ele confirmou que a reunião era na segunda-feira"}'),
('20000000-0000-0000-0000-000000000299', 'word_order', 10, '{"words": ["They", "persuaded", "her", "to", "join", "the", "team"], "correct_sentence": "They persuaded her to join the team", "translation": "Eles a persuadiram a entrar para o time"}'),
('20000000-0000-0000-0000-000000000299', 'reading', 11, '{"passage": "Advanced reporting verbs often follow specific patterns. ''Apologize'' is followed by ''for'': he apologized for being late. ''Accuse'' is followed by ''of'': she accused him of lying. ''Remind'', ''persuade'' and ''convince'' are followed by an object plus ''to'' + infinitive: she reminded him to bring his passport, and they persuaded her to join the team.", "translation": "Verbos de relato avançados costumam seguir padrões específicos. ''Apologize'' é seguido de ''for'': ele se desculpou por estar atrasado. ''Accuse'' é seguido de ''of'': ela o acusou de mentir. ''Remind'', ''persuade'' e ''convince'' são seguidos de um objeto mais ''to'' + infinitivo: ela o lembrou de trazer o passaporte, e eles a persuadiram a entrar para o time.", "question": "What preposition follows ''accuse'', according to the text?", "options": ["for", "of", "to"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000299', 'listening', 12, '{"audio_text": "He apologized for being late. She accused him of lying. He confirmed that the meeting was on Monday.", "question": "What did he confirm, according to the audio?", "options": ["That he was late", "That she accused him", "That the meeting was on Monday"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000299', 'dictation', 13, '{"audio_text": "He apologized for being late.", "expected": "He apologized for being late."}'),
('20000000-0000-0000-0000-000000000299', 'typing', 14, '{"prompt_pt": "Traduza (discurso indireto): ''Ela o acusou de esquecer a reunião, mas depois se desculpou.''", "expected": "She accused him of forgetting the meeting, but later apologized.", "ai_review": true}'),

-- Lição 300: Revisão + vocabulário de comunicação e negociação (assure, demand, offer, invite, order, request)
('20000000-0000-0000-0000-000000000300', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001795", "show_image": false}'),
('20000000-0000-0000-0000-000000000300', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001797", "show_image": false}'),
('20000000-0000-0000-0000-000000000300', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001799", "show_image": false}'),
('20000000-0000-0000-0000-000000000300', 'multiple_choice', 4, '{"question": "He ___ to speak to the manager.", "audio_text": null, "options": ["demanded", "demand", "demanding"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000300', 'multiple_choice', 5, '{"question": "She ___ that he arrive early.", "audio_text": null, "options": ["requested", "request", "requesting"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000300', 'matching', 6, '{"pairs": [{"left": "assure", "right": "assegurar"}, {"left": "demand", "right": "exigir"}, {"left": "offer", "right": "oferecer"}, {"left": "invite", "right": "convidar"}, {"left": "order", "right": "ordenar"}, {"left": "request", "right": "solicitar"}]}'),
('20000000-0000-0000-0000-000000000300', 'fill_blank', 7, '{"sentence": "She ___ me that everything was fine.", "options": ["assured", "assure", "assuring"], "correct": "assured", "translation": "Ela me assegurou que estava tudo bem."}'),
('20000000-0000-0000-0000-000000000300', 'fill_blank', 8, '{"sentence": "The manager ___ them to finish the report.", "options": ["ordered", "order", "orders"], "correct": "ordered", "translation": "O gerente ordenou que eles terminassem o relatório."}'),
('20000000-0000-0000-0000-000000000300', 'word_order', 9, '{"words": ["She", "offered", "to", "help", "me", "with", "the", "move"], "correct_sentence": "She offered to help me with the move", "translation": "Ela se ofereceu para me ajudar com a mudança"}'),
('20000000-0000-0000-0000-000000000300', 'word_order', 10, '{"words": ["They", "invited", "us", "to", "their", "wedding"], "correct_sentence": "They invited us to their wedding", "translation": "Eles nos convidaram para o casamento deles"}'),
('20000000-0000-0000-0000-000000000300', 'reading', 11, '{"passage": "In business negotiations, reporting verbs help summarize what was said in a meeting. The client assured us that everything was fine, but later demanded to speak to the manager. In the end, the company offered a discount and invited them to a follow-up meeting, while the manager simply ordered the team to finish the report and requested that everyone arrive early.", "translation": "Em negociações de negócios, verbos de relato ajudam a resumir o que foi dito em uma reunião. O cliente nos assegurou que estava tudo bem, mas depois exigiu falar com o gerente. No final, a empresa ofereceu um desconto e os convidou para uma reunião de acompanhamento, enquanto o gerente simplesmente ordenou que a equipe terminasse o relatório e solicitou que todos chegassem cedo.", "question": "What did the company offer, according to the text?", "options": ["A promotion", "A discount", "A refund"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000300', 'listening', 12, '{"audio_text": "She assured me that everything was fine. He demanded to speak to the manager. They invited us to their wedding.", "question": "What did he demand, according to the audio?", "options": ["A refund", "To speak to the manager", "An invitation"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000300', 'dictation', 13, '{"audio_text": "She assured me that everything was fine.", "expected": "She assured me that everything was fine."}'),
('20000000-0000-0000-0000-000000000300', 'typing', 14, '{"prompt_pt": "Traduza (discurso indireto): ''Ele exigiu uma resposta, mas ela apenas prometeu ligar mais tarde.''", "expected": "He demanded an answer, but she just promised to call later.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000300', 'typing', 15, '{"prompt_pt": "Traduza (discurso indireto): ''Ela nos convidou para a reunião e solicitou que chegássemos no horário.''", "expected": "She invited us to the meeting and requested that we arrive on time.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

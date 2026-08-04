-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 4: Reported Speech (Introdução)
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 3 (044_seed_b1_passive_voice.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 044_seed_b1_passive_voice.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 34: Reported Speech
('30000000-0000-0000-0000-000000000991', 'say', 'seɪ', 'verb', 'dizer', 'He always says he is busy.', 'Ele sempre diz que está ocupado.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000992', 'said', 'sed', 'verb', 'disse (passado de say)', 'She said she was tired.', 'Ela disse que estava cansada.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000993', 'tell', 'tel', 'verb', 'contar / dizer a alguém', 'I will tell you the truth.', 'Eu vou te contar a verdade.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000994', 'told', 'toʊld', 'verb', 'contou (passado de tell)', 'He told me he was leaving.', 'Ele me contou que estava saindo.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000995', 'that', 'ðæt', 'conjunction', 'que (conector do discurso indireto)', 'She said that she liked the job.', 'Ela disse que gostava do trabalho.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000996', 'ask', 'æsk', 'verb', 'perguntar', 'I want to ask you something.', 'Eu quero te perguntar uma coisa.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000997', 'asked', 'æskt', 'verb', 'perguntou (passado de ask)', 'He asked me where I lived.', 'Ele me perguntou onde eu morava.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000998', 'then', 'ðen', 'adverb', 'então / naquele momento (troca de "now")', 'She said she was busy then.', 'Ela disse que estava ocupada naquele momento.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000000999', 'that day', 'ðæt deɪ', 'phrase', 'aquele dia (troca de "today")', 'He said he was leaving that day.', 'Ele disse que estava saindo naquele dia.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001000', 'there', 'ðer', 'adverb', 'lá (troca de "here")', 'She said she worked there.', 'Ela disse que trabalhava lá.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001001', 'the day before', 'ðə deɪ bɪˈfɔːr', 'phrase', 'no dia anterior (troca de "yesterday")', 'He said he had arrived the day before.', 'Ele disse que tinha chegado no dia anterior.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001002', 'the next day', 'ðə nekst deɪ', 'phrase', 'no dia seguinte (troca de "tomorrow")', 'She said she would call the next day.', 'Ela disse que ligaria no dia seguinte.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001003', 'if', 'ɪf', 'conjunction', 'se (em perguntas indiretas sim/não)', 'He asked if I was ready.', 'Ele perguntou se eu estava pronto.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001004', 'whether', 'ˈweðər', 'conjunction', 'se (formal, em perguntas indiretas)', 'She asked whether I wanted coffee or tea.', 'Ela perguntou se eu queria café ou chá.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001005', 'wondered', 'ˈwʌndərd', 'verb', 'ficou imaginando / se perguntou', 'I wondered if he was okay.', 'Eu fiquei imaginando se ele estava bem.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001006', 'wanted to know', 'ˈwɑːntɪd tuː noʊ', 'phrase', 'queria saber', 'She wanted to know what happened.', 'Ela queria saber o que tinha acontecido.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001007', 'explain', 'ɪkˈspleɪn', 'verb', 'explicar', 'Can you explain the problem?', 'Você pode explicar o problema?', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001008', 'explained', 'ɪkˈspleɪnd', 'verb', 'explicou (passado de explain)', 'He explained why he was late.', 'Ele explicou por que estava atrasado.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001009', 'warn', 'wɔːrn', 'verb', 'avisar / alertar', 'I want to warn you about the risk.', 'Eu quero te avisar sobre o risco.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001010', 'warned', 'wɔːrnd', 'verb', 'avisou (passado de warn)', 'She warned me not to be late.', 'Ela me avisou para não me atrasar.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001011', 'suggest', 'səˈdʒest', 'verb', 'sugerir', 'I suggest you rest a little.', 'Eu sugiro que você descanse um pouco.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001012', 'suggested', 'səˈdʒestɪd', 'verb', 'sugeriu (passado de suggest)', 'He suggested going home early.', 'Ele sugeriu ir para casa cedo.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001013', 'promise', 'ˈprɑːmɪs', 'verb', 'prometer', 'I promise to call you.', 'Eu prometo te ligar.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001014', 'promised', 'ˈprɑːmɪst', 'verb', 'prometeu (passado de promise)', 'She promised she would help.', 'Ela prometeu que ajudaria.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001015', 'mention', 'ˈmenʃən', 'verb', 'mencionar', 'Did he mention the meeting?', 'Ele mencionou a reunião?', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001016', 'mentioned', 'ˈmenʃənd', 'verb', 'mencionou (passado de mention)', 'She mentioned she was tired.', 'Ela mencionou que estava cansada.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001017', 'admit', 'ədˈmɪt', 'verb', 'admitir', 'I admit I was wrong.', 'Eu admito que estava errado.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001018', 'admitted', 'ədˈmɪtɪd', 'verb', 'admitiu (passado de admit)', 'He admitted he had made a mistake.', 'Ele admitiu que tinha cometido um erro.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001019', 'complain', 'kəmˈpleɪn', 'verb', 'reclamar', 'Please do not complain about the food.', 'Por favor, não reclame da comida.', 'B1', array['reported-speech']),
('30000000-0000-0000-0000-000000001020', 'complained', 'kəmˈpleɪnd', 'verb', 'reclamou (passado de complain)', 'She complained that the room was cold.', 'Ela reclamou que o quarto estava frio.', 'B1', array['reported-speech']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000034', 'B1', 'Reported Speech', 'Relate o que outras pessoas disseram, perguntaram e prometeram, com as mudanças de tempo, lugar e verbo.', 4, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000166', '10000000-0000-0000-0000-000000000034', 'Reported Speech — Introduction', 1, 10),
('20000000-0000-0000-0000-000000000167', '10000000-0000-0000-0000-000000000034', 'Time & Place Changes', 2, 10),
('20000000-0000-0000-0000-000000000168', '10000000-0000-0000-0000-000000000034', 'Reported Questions', 3, 10),
('20000000-0000-0000-0000-000000000169', '10000000-0000-0000-0000-000000000034', 'Reported Advice, Warnings & Promises', 4, 10),
('20000000-0000-0000-0000-000000000170', '10000000-0000-0000-0000-000000000034', 'Reported Speech (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 34.1: Reported Speech — Introduction ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000166', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000991", "show_image": false}'),
('20000000-0000-0000-0000-000000000166', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000993", "show_image": false}'),
('20000000-0000-0000-0000-000000000166', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000995", "show_image": false}'),
('20000000-0000-0000-0000-000000000166', 'multiple_choice', 4, '{"question": "Complete: She said ___ she liked the job.", "audio_text": null, "options": ["that", "if", "then"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000166', 'multiple_choice', 5, '{"question": "Direct: ''I am tired,'' she said. Reported: She said she ___ tired.", "audio_text": null, "options": ["is", "was", "were"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000166', 'matching', 6, '{"pairs": [{"left": "say", "right": "dizer"}, {"left": "said", "right": "disse"}, {"left": "tell", "right": "contar"}, {"left": "told", "right": "contou"}, {"left": "that", "right": "que"}, {"left": "ask", "right": "perguntar"}]}'),
('20000000-0000-0000-0000-000000000166', 'fill_blank', 7, '{"sentence": "He ___ me he was leaving.", "options": ["told", "said", "asked"], "correct": "told", "translation": "Ele me contou que estava saindo."}'),
('20000000-0000-0000-0000-000000000166', 'fill_blank', 8, '{"sentence": "She ___ she was tired.", "options": ["said", "told", "asked"], "correct": "said", "translation": "Ela disse que estava cansada."}'),
('20000000-0000-0000-0000-000000000166', 'word_order', 9, '{"words": ["He", "told", "me", "he", "was", "leaving"], "correct_sentence": "He told me he was leaving", "translation": "Ele me contou que estava saindo"}'),
('20000000-0000-0000-0000-000000000166', 'word_order', 10, '{"words": ["She", "said", "she", "liked", "the", "job"], "correct_sentence": "She said she liked the job", "translation": "Ela disse que gostava do trabalho"}'),
('20000000-0000-0000-0000-000000000166', 'reading', 11, '{"passage": "In English, we use ''say'' and ''tell'' in different ways. We say something, but we tell someone something. For example: she said she was tired, but she told me she was tired. Both sentences report the same idea, but the grammar is different.", "translation": "Em inglês, usamos ''say'' e ''tell'' de formas diferentes. Nós dizemos (say) algo, mas contamos (tell) algo a alguém. Por exemplo: ela disse (said) que estava cansada, mas ela me contou (told) que estava cansada. As duas frases relatam a mesma ideia, mas a gramática é diferente.", "question": "What is the difference between ''say'' and ''tell''?", "options": ["''Tell'' needs a person after it, ''say'' does not", "''Say'' is only used in the past", "''Tell'' is only used with questions"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000166', 'listening', 12, '{"audio_text": "He told me he was leaving, but he did not say why.", "question": "What did he not say?", "options": ["That he was leaving", "Why he was leaving", "When he was leaving"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000166', 'dictation', 13, '{"audio_text": "She said she was tired, and he told me he was leaving.", "expected": "She said she was tired, and he told me he was leaving."}'),
('20000000-0000-0000-0000-000000000166', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele sempre diz que está ocupado.''", "expected": "He always says he is busy.", "ai_review": true}');

-- ---------- Lição 34.2: Time & Place Changes ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000167', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000998", "show_image": false}'),
('20000000-0000-0000-0000-000000000167', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001000", "show_image": false}'),
('20000000-0000-0000-0000-000000000167', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001002", "show_image": false}'),
('20000000-0000-0000-0000-000000000167', 'multiple_choice', 4, '{"question": "Direct: ''I am busy now,'' she said. Reported: She said she was busy ___.", "audio_text": null, "options": ["then", "now", "today"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000167', 'multiple_choice', 5, '{"question": "Direct: ''I will call tomorrow,'' he said. Reported: He said he would call ___.", "audio_text": null, "options": ["the next day", "tomorrow", "yesterday"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000167', 'matching', 6, '{"pairs": [{"left": "then", "right": "então"}, {"left": "that day", "right": "aquele dia"}, {"left": "there", "right": "lá"}, {"left": "the day before", "right": "no dia anterior"}, {"left": "the next day", "right": "no dia seguinte"}, {"left": "asked", "right": "perguntou"}]}'),
('20000000-0000-0000-0000-000000000167', 'fill_blank', 7, '{"sentence": "He said he was leaving ___.", "options": ["that day", "today", "tomorrow"], "correct": "that day", "translation": "Ele disse que estava saindo naquele dia."}'),
('20000000-0000-0000-0000-000000000167', 'fill_blank', 8, '{"sentence": "She said she worked ___.", "options": ["there", "here", "then"], "correct": "there", "translation": "Ela disse que trabalhava lá."}'),
('20000000-0000-0000-0000-000000000167', 'word_order', 9, '{"words": ["He", "said", "he", "had", "arrived", "the", "day", "before"], "correct_sentence": "He said he had arrived the day before", "translation": "Ele disse que tinha chegado no dia anterior"}'),
('20000000-0000-0000-0000-000000000167', 'word_order', 10, '{"words": ["She", "said", "she", "would", "call", "the", "next", "day"], "correct_sentence": "She said she would call the next day", "translation": "Ela disse que ligaria no dia seguinte"}'),
('20000000-0000-0000-0000-000000000167', 'reading', 11, '{"passage": "When we report what someone said, time and place words often change. ''Now'' becomes ''then'', ''today'' becomes ''that day'', ''here'' becomes ''there'', ''tomorrow'' becomes ''the next day'', and ''yesterday'' becomes ''the day before''. For example, if someone says ''I will call tomorrow,'' we report it as ''She said she would call the next day.''", "translation": "Quando relatamos o que alguém disse, as palavras de tempo e lugar geralmente mudam. ''Now'' vira ''then'', ''today'' vira ''that day'', ''here'' vira ''there'', ''tomorrow'' vira ''the next day'', e ''yesterday'' vira ''the day before''. Por exemplo, se alguém diz ''Eu vou ligar amanhã,'' relatamos como ''Ela disse que ligaria no dia seguinte.''", "question": "What does ''tomorrow'' become in reported speech?", "options": ["The day before", "The next day", "Then"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000167', 'listening', 12, '{"audio_text": "He said he was busy then, and he said he would call the next day.", "question": "When did he say he would call?", "options": ["That day", "The next day", "The day before"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000167', 'dictation', 13, '{"audio_text": "He said he had arrived the day before, and she said she worked there.", "expected": "He said he had arrived the day before, and she said she worked there."}'),
('20000000-0000-0000-0000-000000000167', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela disse que ligaria no dia seguinte.''", "expected": "She said she would call the next day.", "ai_review": true}');

-- ---------- Lição 34.3: Reported Questions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000168', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001003", "show_image": false}'),
('20000000-0000-0000-0000-000000000168', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001004", "show_image": false}'),
('20000000-0000-0000-0000-000000000168', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001007", "show_image": false}'),
('20000000-0000-0000-0000-000000000168', 'multiple_choice', 4, '{"question": "Direct: ''Are you ready?'' Reported: He asked ___ I was ready.", "audio_text": null, "options": ["if", "that", "then"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000168', 'multiple_choice', 5, '{"question": "Complete: She asked ___ I wanted coffee or tea.", "audio_text": null, "options": ["whether", "if", "that"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000168', 'matching', 6, '{"pairs": [{"left": "if", "right": "se"}, {"left": "whether", "right": "se (formal)"}, {"left": "wondered", "right": "ficou imaginando"}, {"left": "wanted to know", "right": "queria saber"}, {"left": "explain", "right": "explicar"}, {"left": "explained", "right": "explicou"}]}'),
('20000000-0000-0000-0000-000000000168', 'fill_blank', 7, '{"sentence": "I ___ if he was okay.", "options": ["wondered", "explained", "promised"], "correct": "wondered", "translation": "Eu fiquei imaginando se ele estava bem."}'),
('20000000-0000-0000-0000-000000000168', 'fill_blank', 8, '{"sentence": "He ___ why he was late.", "options": ["explained", "wondered", "warned"], "correct": "explained", "translation": "Ele explicou por que estava atrasado."}'),
('20000000-0000-0000-0000-000000000168', 'word_order', 9, '{"words": ["She", "wanted", "to", "know", "what", "happened"], "correct_sentence": "She wanted to know what happened", "translation": "Ela queria saber o que tinha acontecido"}'),
('20000000-0000-0000-0000-000000000168', 'word_order', 10, '{"words": ["He", "asked", "if", "I", "was", "ready"], "correct_sentence": "He asked if I was ready", "translation": "Ele perguntou se eu estava pronto"}'),
('20000000-0000-0000-0000-000000000168', 'reading', 11, '{"passage": "Reported questions do not use question marks or the normal question word order. For yes/no questions, we use ''if'' or ''whether''. For example, ''Are you ready?'' becomes ''He asked if I was ready.'' For wh- questions, we keep the question word but use normal word order, like ''She wanted to know what happened.''", "translation": "Perguntas relatadas não usam ponto de interrogação nem a ordem normal de pergunta. Para perguntas de sim/não, usamos ''if'' ou ''whether''. Por exemplo, ''Você está pronto?'' vira ''Ele perguntou se eu estava pronto.'' Para perguntas com wh-, mantemos a palavra de pergunta, mas usamos ordem normal, como ''Ela queria saber o que tinha acontecido.''", "question": "What word do we use to report a yes/no question?", "options": ["That", "If", "Then"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000168', 'listening', 12, '{"audio_text": "She asked whether I wanted coffee or tea, and then she wanted to know what happened at the meeting.", "question": "What did she want to know about?", "options": ["The coffee", "The meeting", "The weather"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000168', 'dictation', 13, '{"audio_text": "He asked if I was ready, and she wanted to know what happened.", "expected": "He asked if I was ready, and she wanted to know what happened."}'),
('20000000-0000-0000-0000-000000000168', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela perguntou se eu queria café ou chá.''", "expected": "She asked whether I wanted coffee or tea.", "ai_review": true}');

-- ---------- Lição 34.4: Reported Advice, Warnings & Promises ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000169', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001009", "show_image": false}'),
('20000000-0000-0000-0000-000000000169', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001011", "show_image": false}'),
('20000000-0000-0000-0000-000000000169', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001013", "show_image": false}'),
('20000000-0000-0000-0000-000000000169', 'multiple_choice', 4, '{"question": "Complete: She ___ me not to be late.", "audio_text": null, "options": ["warned", "promised", "suggested"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000169', 'multiple_choice', 5, '{"question": "Complete: He ___ going home early.", "audio_text": null, "options": ["suggested", "warned", "promised"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000169', 'matching', 6, '{"pairs": [{"left": "warn", "right": "avisar"}, {"left": "warned", "right": "avisou"}, {"left": "suggest", "right": "sugerir"}, {"left": "suggested", "right": "sugeriu"}, {"left": "promise", "right": "prometer"}, {"left": "promised", "right": "prometeu"}]}'),
('20000000-0000-0000-0000-000000000169', 'fill_blank', 7, '{"sentence": "I ___ to call you.", "options": ["promise", "warn", "suggest"], "correct": "promise", "translation": "Eu prometo te ligar."}'),
('20000000-0000-0000-0000-000000000169', 'fill_blank', 8, '{"sentence": "She ___ she would help.", "options": ["promised", "warned", "suggested"], "correct": "promised", "translation": "Ela prometeu que ajudaria."}'),
('20000000-0000-0000-0000-000000000169', 'word_order', 9, '{"words": ["She", "promised", "she", "would", "help"], "correct_sentence": "She promised she would help", "translation": "Ela prometeu que ajudaria"}'),
('20000000-0000-0000-0000-000000000169', 'word_order', 10, '{"words": ["He", "suggested", "going", "home", "early"], "correct_sentence": "He suggested going home early", "translation": "Ele sugeriu ir para casa cedo"}'),
('20000000-0000-0000-0000-000000000169', 'reading', 11, '{"passage": "At work, people often warn, suggest, and promise things. My manager warned me not to be late again. Later, she suggested going home early on Fridays. I promised I would finish the report on time. These verbs help us report advice and warnings from other people.", "translation": "No trabalho, as pessoas costumam avisar, sugerir e prometer coisas. Minha gerente me avisou para não me atrasar de novo. Depois, ela sugeriu sair mais cedo nas sextas. Eu prometi que terminaria o relatório a tempo. Esses verbos nos ajudam a relatar conselhos e avisos de outras pessoas.", "question": "What did the manager suggest?", "options": ["Finishing the report", "Going home early on Fridays", "Being late"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000169', 'listening', 12, '{"audio_text": "She warned me not to be late, and I promised I would arrive on time next week.", "question": "What did the speaker promise?", "options": ["To warn someone", "To arrive on time", "To suggest a plan"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000169', 'dictation', 13, '{"audio_text": "She warned me not to be late, and he suggested going home early.", "expected": "She warned me not to be late, and he suggested going home early."}'),
('20000000-0000-0000-0000-000000000169', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele sugeriu ir para casa cedo.''", "expected": "He suggested going home early.", "ai_review": true}');

-- ---------- Lição 34.5: Reported Speech (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000170', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001015", "show_image": false}'),
('20000000-0000-0000-0000-000000000170', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001017", "show_image": false}'),
('20000000-0000-0000-0000-000000000170', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001019", "show_image": false}'),
('20000000-0000-0000-0000-000000000170', 'multiple_choice', 4, '{"question": "Complete: She ___ she was tired.", "audio_text": null, "options": ["mentioned", "admitted", "complained"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000170', 'multiple_choice', 5, '{"question": "Complete: He ___ he had made a mistake.", "audio_text": null, "options": ["admitted", "mentioned", "complained"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000170', 'matching', 6, '{"pairs": [{"left": "mention", "right": "mencionar"}, {"left": "mentioned", "right": "mencionou"}, {"left": "admit", "right": "admitir"}, {"left": "admitted", "right": "admitiu"}, {"left": "complain", "right": "reclamar"}, {"left": "complained", "right": "reclamou"}]}'),
('20000000-0000-0000-0000-000000000170', 'fill_blank', 7, '{"sentence": "Did he ___ the meeting?", "options": ["mention", "admit", "complain"], "correct": "mention", "translation": "Ele mencionou a reunião?"}'),
('20000000-0000-0000-0000-000000000170', 'fill_blank', 8, '{"sentence": "She ___ that the room was cold.", "options": ["complained", "mentioned", "admitted"], "correct": "complained", "translation": "Ela reclamou que o quarto estava frio."}'),
('20000000-0000-0000-0000-000000000170', 'word_order', 9, '{"words": ["He", "admitted", "he", "had", "made", "a", "mistake"], "correct_sentence": "He admitted he had made a mistake", "translation": "Ele admitiu que tinha cometido um erro"}'),
('20000000-0000-0000-0000-000000000170', 'word_order', 10, '{"words": ["She", "complained", "that", "the", "room", "was", "cold"], "correct_sentence": "She complained that the room was cold", "translation": "Ela reclamou que o quarto estava frio"}'),
('20000000-0000-0000-0000-000000000170', 'reading', 11, '{"passage": "During the meeting, people mentioned, admitted, and complained about different things. One person mentioned the new schedule. Another admitted she had made a mistake. A third complained that the room was too cold. It is normal to hear all of this in a long meeting.", "translation": "Durante a reunião, as pessoas mencionaram, admitiram e reclamaram de coisas diferentes. Uma pessoa mencionou o novo cronograma. Outra admitiu que tinha cometido um erro. Uma terceira reclamou que o quarto estava muito frio. É normal ouvir tudo isso em uma reunião longa.", "question": "What did the third person complain about?", "options": ["The new schedule", "A mistake", "The room being cold"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000170', 'listening', 12, '{"audio_text": "He mentioned the new schedule, and then he admitted he had forgotten about it.", "question": "What did he admit?", "options": ["That he mentioned the schedule", "That he had forgotten about it", "That the room was cold"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000170', 'dictation', 13, '{"audio_text": "He admitted he had made a mistake, and she complained that the room was cold.", "expected": "He admitted he had made a mistake, and she complained that the room was cold."}'),
('20000000-0000-0000-0000-000000000170', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu admito que estava errado.''", "expected": "I admit I was wrong.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000170', 'typing', 15, '{"prompt_pt": "Traduza: ''Ela mencionou que estava cansada.''", "expected": "She mentioned she was tired.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 4 (REPORTED SPEECH)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

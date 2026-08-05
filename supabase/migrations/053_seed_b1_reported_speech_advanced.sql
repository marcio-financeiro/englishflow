-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 12: Reported Speech Completo
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 11 (052_seed_b1_business_english.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 052_seed_b1_business_english.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 42: Reported Speech Completo
('30000000-0000-0000-0000-000000001231', 'tell someone to', 'tel ˈsʌmwʌn tuː', 'phrase', 'dizer para alguém fazer algo (comando indireto)', 'She told him to wait outside.', 'Ela disse para ele esperar lá fora.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001232', 'ask someone to', 'æsk ˈsʌmwʌn tuː', 'phrase', 'pedir para alguém fazer algo', 'He asked me to close the door.', 'Ele me pediu para fechar a porta.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001233', 'order', 'ˈɔːrdər', 'verb', 'ordenar', 'The captain ordered the crew to stop.', 'O capitão ordenou que a tripulação parasse.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001234', 'command', 'kəˈmænd', 'verb', 'comandar / ordenar', 'The officer commanded them to leave.', 'O oficial ordenou que eles saíssem.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001235', 'request', 'rɪˈkwest', 'verb', 'solicitar', 'They requested us to be quiet.', 'Eles solicitaram que ficássemos quietos.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001236', 'forbid', 'fərˈbɪd', 'verb', 'proibir', 'The rules forbid smoking here.', 'As regras proíbem fumar aqui.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001237', 'can/could', 'kæn kʊd', 'phrase', 'pode / podia (backshift)', 'She said she could swim.', 'Ela disse que sabia nadar.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001238', 'will/would', 'wɪl wʊd', 'phrase', 'vai / iria (backshift)', 'He said he would call later.', 'Ele disse que ligaria mais tarde.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001239', 'must/had to', 'mʌst hæd tuː', 'phrase', 'deve / teve que (backshift)', 'She said she had to leave early.', 'Ela disse que tinha que sair cedo.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001240', 'may/might', 'meɪ maɪt', 'phrase', 'pode / poderia (backshift)', 'He said it might rain.', 'Ele disse que talvez chovesse.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001241', 'needn''t/didn''t need to', 'ˈniːdənt ˈdɪdənt niːd tuː', 'phrase', 'não precisava (backshift)', 'He said he did not need to come.', 'Ele disse que não precisava vir.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001242', 'admit', 'ədˈmɪt', 'verb', 'admitir (+ gerúndio)', 'He admitted stealing the money.', 'Ele admitiu ter roubado o dinheiro.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001243', 'deny', 'dɪˈnaɪ', 'verb', 'negar (+ gerúndio)', 'She denied breaking the vase.', 'Ela negou ter quebrado o vaso.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001244', 'suggest', 'səˈdʒest', 'verb', 'sugerir (+ gerúndio)', 'He suggested waiting a bit longer.', 'Ele sugeriu esperar um pouco mais.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001245', 'agree', 'əˈɡriː', 'verb', 'concordar (+ infinitivo)', 'She agreed to help us.', 'Ela concordou em nos ajudar.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001246', 'refuse', 'rɪˈfjuːz', 'verb', 'recusar (+ infinitivo)', 'He refused to sign the document.', 'Ele se recusou a assinar o documento.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001247', 'offer', 'ˈɔːfər', 'verb', 'oferecer-se (+ infinitivo)', 'They offered to pay for dinner.', 'Eles se ofereceram para pagar o jantar.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001248', 'it is said that', 'ɪt ɪz sed ðæt', 'phrase', 'diz-se que', 'It is said that the company is closing.', 'Diz-se que a empresa está fechando.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001249', 'it is believed that', 'ɪt ɪz bɪˈliːvd ðæt', 'phrase', 'acredita-se que', 'It is believed that the plan will work.', 'Acredita-se que o plano vai funcionar.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001250', 'is thought to', 'ɪz θɔːt tuː', 'phrase', 'pensa-se que / acredita-se que', 'The medicine is thought to be effective.', 'Pensa-se que o remédio é eficaz.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001251', 'is reported to', 'ɪz rɪˈpɔːrtɪd tuː', 'phrase', 'é relatado que', 'The area is reported to be safe now.', 'É relatado que a área está segura agora.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001252', 'is known to', 'ɪz noʊn tuː', 'phrase', 'é conhecido por', 'He is known to be very strict.', 'Ele é conhecido por ser muito rígido.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001253', 'is considered', 'ɪz kənˈsɪdərd', 'phrase', 'é considerado', 'This restaurant is considered the best in town.', 'Esse restaurante é considerado o melhor da cidade.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001254', 'summarize', 'ˈsʌməraɪz', 'verb', 'resumir', 'Can you summarize what he said?', 'Você pode resumir o que ele disse?', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001255', 'according to', 'əˈkɔːrdɪŋ tuː', 'phrase', 'de acordo com', 'According to her, the meeting was canceled.', 'De acordo com ela, a reunião foi cancelada.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001256', 'allegedly', 'əˈledʒɪdli', 'adverb', 'supostamente', 'He allegedly stole the car.', 'Ele supostamente roubou o carro.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001257', 'claim', 'kleɪm', 'verb', 'alegar', 'She claims she never received the email.', 'Ela alega que nunca recebeu o e-mail.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001258', 'insist', 'ɪnˈsɪst', 'verb', 'insistir', 'He insisted that he was right.', 'Ele insistiu que estava certo.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001259', 'rumor', 'ˈruːmər', 'noun', 'boato', 'There is a rumor that he is leaving.', 'Há um boato de que ele está saindo.', 'B1', array['reported-speech-advanced']),
('30000000-0000-0000-0000-000000001260', 'quote', 'kwoʊt', 'verb', 'citar', 'She quoted the manager directly.', 'Ela citou o gerente diretamente.', 'B1', array['reported-speech-advanced']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000042', 'B1', 'Reported Speech Completo', 'Relate comandos, mudanças de modais e estruturas passivas de discurso indireto usadas em notícias e formalidade.', 12, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000206', '10000000-0000-0000-0000-000000000042', 'Reported Commands', 1, 10),
('20000000-0000-0000-0000-000000000207', '10000000-0000-0000-0000-000000000042', 'Modal Verb Backshift', 2, 10),
('20000000-0000-0000-0000-000000000208', '10000000-0000-0000-0000-000000000042', 'Reporting Verbs + Gerund/Infinitive', 3, 10),
('20000000-0000-0000-0000-000000000209', '10000000-0000-0000-0000-000000000042', 'Passive Reporting Structures', 4, 10),
('20000000-0000-0000-0000-000000000210', '10000000-0000-0000-0000-000000000042', 'Reported Speech (Revisão Completa)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 42.1: Reported Commands ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000206', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001231", "show_image": false}'),
('20000000-0000-0000-0000-000000000206', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001232", "show_image": false}'),
('20000000-0000-0000-0000-000000000206', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001236", "show_image": false}'),
('20000000-0000-0000-0000-000000000206', 'multiple_choice', 4, '{"question": "Direct: ''Wait outside,'' she said. Reported: She told him ___ wait outside.", "audio_text": null, "options": ["to", "that", "if"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000206', 'multiple_choice', 5, '{"question": "Complete: He asked me ___ close the door.", "audio_text": null, "options": ["to", "that", "if"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000206', 'matching', 6, '{"pairs": [{"left": "tell someone to", "right": "dizer para fazer"}, {"left": "ask someone to", "right": "pedir para fazer"}, {"left": "order", "right": "ordenar"}, {"left": "command", "right": "comandar"}, {"left": "request", "right": "solicitar"}, {"left": "forbid", "right": "proibir"}]}'),
('20000000-0000-0000-0000-000000000206', 'fill_blank', 7, '{"sentence": "The captain ___ the crew to stop.", "options": ["ordered", "forbade", "requested"], "correct": "ordered", "translation": "O capitão ordenou que a tripulação parasse."}'),
('20000000-0000-0000-0000-000000000206', 'fill_blank', 8, '{"sentence": "The rules ___ smoking here.", "options": ["forbid", "order", "request"], "correct": "forbid", "translation": "As regras proíbem fumar aqui."}'),
('20000000-0000-0000-0000-000000000206', 'word_order', 9, '{"words": ["She", "told", "him", "to", "wait", "outside"], "correct_sentence": "She told him to wait outside", "translation": "Ela disse para ele esperar lá fora"}'),
('20000000-0000-0000-0000-000000000206', 'word_order', 10, '{"words": ["They", "requested", "us", "to", "be", "quiet"], "correct_sentence": "They requested us to be quiet", "translation": "Eles solicitaram que ficássemos quietos"}'),
('20000000-0000-0000-0000-000000000206', 'reading', 11, '{"passage": "When we report commands, we use ''tell'' or ''order'' followed by a person and ''to'' plus the verb: ''She told him to wait outside.'' Polite requests use ''ask'' in the same pattern: ''He asked me to close the door.'' More formal or official contexts use ''order,'' ''command,'' or ''request.''", "translation": "Quando relatamos comandos, usamos ''tell'' ou ''order'' seguido de uma pessoa e ''to'' mais o verbo: ''Ela disse para ele esperar lá fora.'' Pedidos educados usam ''ask'' no mesmo padrão: ''Ele me pediu para fechar a porta.'' Contextos mais formais ou oficiais usam ''order,'' ''command'' ou ''request.''", "question": "What pattern do we use to report a command?", "options": ["Verb + that + clause", "Verb + person + to + verb", "Verb + gerund"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000206', 'listening', 12, '{"audio_text": "The officer commanded them to leave immediately, but they refused.", "question": "What did the officer command them to do?", "options": ["Stay", "Leave immediately", "Wait outside"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000206', 'dictation', 13, '{"audio_text": "She told him to wait outside, and he asked me to close the door.", "expected": "She told him to wait outside, and he asked me to close the door."}'),
('20000000-0000-0000-0000-000000000206', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele me pediu para fechar a porta.''", "expected": "He asked me to close the door.", "ai_review": true}');

-- ---------- Lição 42.2: Modal Verb Backshift ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000207', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001237", "show_image": false}'),
('20000000-0000-0000-0000-000000000207', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001238", "show_image": false}'),
('20000000-0000-0000-0000-000000000207', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001239", "show_image": false}'),
('20000000-0000-0000-0000-000000000207', 'multiple_choice', 4, '{"question": "Direct: ''I can swim,'' she said. Reported: She said she ___ swim.", "audio_text": null, "options": ["could", "can", "will"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000207', 'multiple_choice', 5, '{"question": "Direct: ''I will call later,'' he said. Reported: He said he ___ call later.", "audio_text": null, "options": ["would", "will", "can"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000207', 'matching', 6, '{"pairs": [{"left": "can/could", "right": "pode / podia"}, {"left": "will/would", "right": "vai / iria"}, {"left": "must/had to", "right": "deve / teve que"}, {"left": "may/might", "right": "pode / poderia"}, {"left": "needn''t/didn''t need to", "right": "não precisava"}]}'),
('20000000-0000-0000-0000-000000000207', 'fill_blank', 7, '{"sentence": "She said she ___ leave early.", "options": ["had to", "must", "will"], "correct": "had to", "translation": "Ela disse que tinha que sair cedo."}'),
('20000000-0000-0000-0000-000000000207', 'fill_blank', 8, '{"sentence": "He said it ___ rain.", "options": ["might", "may", "will"], "correct": "might", "translation": "Ele disse que talvez chovesse."}'),
('20000000-0000-0000-0000-000000000207', 'word_order', 9, '{"words": ["She", "said", "we", "should", "hurry"], "correct_sentence": "She said we should hurry", "translation": "Ela disse que deveríamos nos apressar"}'),
('20000000-0000-0000-0000-000000000207', 'word_order', 10, '{"words": ["He", "said", "he", "did", "not", "need", "to", "come"], "correct_sentence": "He said he did not need to come", "translation": "Ele disse que não precisava vir"}'),
('20000000-0000-0000-0000-000000000207', 'reading', 11, '{"passage": "Modal verbs also change in reported speech. ''Can'' becomes ''could,'' ''will'' becomes ''would,'' and ''must'' often becomes ''had to.'' ''May'' becomes ''might,'' and ''shall'' becomes ''should.'' For example, ''I can swim'' becomes ''She said she could swim.''", "translation": "Os verbos modais também mudam no discurso indireto. ''Can'' vira ''could,'' ''will'' vira ''would,'' e ''must'' geralmente vira ''had to.'' ''May'' vira ''might,'' e ''shall'' vira ''should.'' Por exemplo, ''Eu sei nadar'' vira ''Ela disse que sabia nadar.''", "question": "What does ''can'' become in reported speech?", "options": ["Could", "Would", "Should"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000207', 'listening', 12, '{"audio_text": "She said she could swim, and she said she would teach me next summer.", "question": "What did she say she would do next summer?", "options": ["Learn to swim", "Teach the speaker to swim", "Travel"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000207', 'dictation', 13, '{"audio_text": "She said she could swim, and he said he had to leave early.", "expected": "She said she could swim, and he said he had to leave early."}'),
('20000000-0000-0000-0000-000000000207', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele disse que ligaria mais tarde.''", "expected": "He said he would call later.", "ai_review": true}');

-- ---------- Lição 42.3: Reporting Verbs + Gerund/Infinitive ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000208', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001242", "show_image": false}'),
('20000000-0000-0000-0000-000000000208', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001245", "show_image": false}'),
('20000000-0000-0000-0000-000000000208', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001246", "show_image": false}'),
('20000000-0000-0000-0000-000000000208', 'multiple_choice', 4, '{"question": "Complete: He admitted ___ the money.", "audio_text": null, "options": ["stealing", "to steal", "steal"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000208', 'multiple_choice', 5, '{"question": "Complete: She agreed ___ us.", "audio_text": null, "options": ["to help", "helping", "help"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000208', 'matching', 6, '{"pairs": [{"left": "admit", "right": "admitir"}, {"left": "deny", "right": "negar"}, {"left": "suggest", "right": "sugerir"}, {"left": "agree", "right": "concordar"}, {"left": "refuse", "right": "recusar"}, {"left": "offer", "right": "oferecer-se"}]}'),
('20000000-0000-0000-0000-000000000208', 'fill_blank', 7, '{"sentence": "He ___ to sign the document.", "options": ["refused", "admitted", "suggested"], "correct": "refused", "translation": "Ele se recusou a assinar o documento."}'),
('20000000-0000-0000-0000-000000000208', 'fill_blank', 8, '{"sentence": "They ___ to pay for dinner.", "options": ["offered", "denied", "suggested"], "correct": "offered", "translation": "Eles se ofereceram para pagar o jantar."}'),
('20000000-0000-0000-0000-000000000208', 'word_order', 9, '{"words": ["She", "denied", "breaking", "the", "vase"], "correct_sentence": "She denied breaking the vase", "translation": "Ela negou ter quebrado o vaso"}'),
('20000000-0000-0000-0000-000000000208', 'word_order', 10, '{"words": ["He", "suggested", "waiting", "a", "bit", "longer"], "correct_sentence": "He suggested waiting a bit longer", "translation": "Ele sugeriu esperar um pouco mais"}'),
('20000000-0000-0000-0000-000000000208', 'reading', 11, '{"passage": "Some reporting verbs are followed by a gerund (-ing), and others by an infinitive (to + verb). ''Admit,'' ''deny,'' and ''suggest'' are usually followed by a gerund: ''He admitted stealing the money.'' ''Agree,'' ''refuse,'' and ''offer'' are usually followed by an infinitive: ''She agreed to help us.''", "translation": "Alguns verbos de relato são seguidos de gerúndio (-ing), e outros de infinitivo (to + verbo). ''Admit,'' ''deny'' e ''suggest'' geralmente são seguidos de gerúndio: ''Ele admitiu ter roubado o dinheiro.'' ''Agree,'' ''refuse'' e ''offer'' geralmente são seguidos de infinitivo: ''Ela concordou em nos ajudar.''", "question": "Which verb is usually followed by a gerund?", "options": ["Agree", "Admit", "Offer"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000208', 'listening', 12, '{"audio_text": "He admitted lying about it, but he refused to apologize.", "question": "What did he refuse to do?", "options": ["Admit lying", "Apologize", "Suggest a solution"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000208', 'dictation', 13, '{"audio_text": "He admitted stealing the money, and she agreed to help us.", "expected": "He admitted stealing the money, and she agreed to help us."}'),
('20000000-0000-0000-0000-000000000208', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela concordou em nos ajudar.''", "expected": "She agreed to help us.", "ai_review": true}');

-- ---------- Lição 42.4: Passive Reporting Structures ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000209', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001248", "show_image": false}'),
('20000000-0000-0000-0000-000000000209', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001249", "show_image": false}'),
('20000000-0000-0000-0000-000000000209', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001252", "show_image": false}'),
('20000000-0000-0000-0000-000000000209', 'multiple_choice', 4, '{"question": "Complete: ___ the company is closing.", "audio_text": null, "options": ["It is said that", "It is known to", "Is thought to"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000209', 'multiple_choice', 5, '{"question": "Complete: He ___ be very strict.", "audio_text": null, "options": ["is known to", "it is said that", "is considered"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000209', 'matching', 6, '{"pairs": [{"left": "it is said that", "right": "diz-se que"}, {"left": "it is believed that", "right": "acredita-se que"}, {"left": "is thought to", "right": "pensa-se que"}, {"left": "is reported to", "right": "é relatado que"}, {"left": "is known to", "right": "é conhecido por"}, {"left": "is considered", "right": "é considerado"}]}'),
('20000000-0000-0000-0000-000000000209', 'fill_blank', 7, '{"sentence": "The medicine ___ be effective.", "options": ["is thought to", "it is said that", "is known"], "correct": "is thought to", "translation": "Pensa-se que o remédio é eficaz."}'),
('20000000-0000-0000-0000-000000000209', 'fill_blank', 8, '{"sentence": "This restaurant ___ the best in town.", "options": ["is considered", "is reported to", "it is believed"], "correct": "is considered", "translation": "Esse restaurante é considerado o melhor da cidade."}'),
('20000000-0000-0000-0000-000000000209', 'word_order', 9, '{"words": ["It", "is", "believed", "that", "the", "plan", "will", "work"], "correct_sentence": "It is believed that the plan will work", "translation": "Acredita-se que o plano vai funcionar"}'),
('20000000-0000-0000-0000-000000000209', 'word_order', 10, '{"words": ["The", "area", "is", "reported", "to", "be", "safe", "now"], "correct_sentence": "The area is reported to be safe now", "translation": "É relatado que a área está segura agora"}'),
('20000000-0000-0000-0000-000000000209', 'reading', 11, '{"passage": "News and formal writing often use passive structures to report information without naming the source. ''It is said that,'' ''it is believed that,'' and ''is thought to'' are common. We also use ''is known to'' and ''is considered'' to describe reputation, and ''is reported to'' for news updates.", "translation": "Notícias e textos formais costumam usar estruturas passivas para relatar informações sem nomear a fonte. ''It is said that,'' ''it is believed that'' e ''is thought to'' são comuns. Também usamos ''is known to'' e ''is considered'' para descrever reputação, e ''is reported to'' para atualizações de notícias.", "question": "Which structure describes reputation?", "options": ["It is said that", "Is known to", "Is reported to"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000209', 'listening', 12, '{"audio_text": "It is believed that the new policy will help the economy. The minister is known to support it strongly.", "question": "What is the minister known to do?", "options": ["Oppose the policy", "Support the policy strongly", "Ignore the policy"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000209', 'dictation', 13, '{"audio_text": "It is said that the company is closing, and it is believed that many jobs will be lost.", "expected": "It is said that the company is closing, and it is believed that many jobs will be lost."}'),
('20000000-0000-0000-0000-000000000209', 'typing', 14, '{"prompt_pt": "Traduza: ''Diz-se que a empresa está fechando.''", "expected": "It is said that the company is closing.", "ai_review": true}');

-- ---------- Lição 42.5: Reported Speech (Revisão Completa) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000210', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001255", "show_image": false}'),
('20000000-0000-0000-0000-000000000210', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001257", "show_image": false}'),
('20000000-0000-0000-0000-000000000210', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001258", "show_image": false}'),
('20000000-0000-0000-0000-000000000210', 'multiple_choice', 4, '{"question": "Complete: ___ her, the meeting was canceled.", "audio_text": null, "options": ["According to", "It is said", "Claim"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000210', 'multiple_choice', 5, '{"question": "Complete: He ___ that he was right.", "audio_text": null, "options": ["insisted", "claimed", "summarized"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000210', 'matching', 6, '{"pairs": [{"left": "summarize", "right": "resumir"}, {"left": "according to", "right": "de acordo com"}, {"left": "allegedly", "right": "supostamente"}, {"left": "claim", "right": "alegar"}, {"left": "insist", "right": "insistir"}, {"left": "rumor", "right": "boato"}]}'),
('20000000-0000-0000-0000-000000000210', 'fill_blank', 7, '{"sentence": "Can you ___ what he said?", "options": ["summarize", "claim", "insist"], "correct": "summarize", "translation": "Você pode resumir o que ele disse?"}'),
('20000000-0000-0000-0000-000000000210', 'fill_blank', 8, '{"sentence": "There is a ___ that he is leaving.", "options": ["rumor", "claim", "summary"], "correct": "rumor", "translation": "Há um boato de que ele está saindo."}'),
('20000000-0000-0000-0000-000000000210', 'word_order', 9, '{"words": ["She", "claims", "she", "never", "received", "the", "email"], "correct_sentence": "She claims she never received the email", "translation": "Ela alega que nunca recebeu o e-mail"}'),
('20000000-0000-0000-0000-000000000210', 'word_order', 10, '{"words": ["He", "allegedly", "stole", "the", "car"], "correct_sentence": "He allegedly stole the car", "translation": "Ele supostamente roubou o carro"}'),
('20000000-0000-0000-0000-000000000210', 'reading', 11, '{"passage": "Reporting information accurately is an important skill. You can summarize what someone said, mention your source according to them, or explain that something is only allegedly true. People sometimes claim things that are not true, and others insist on their version of events. A rumor is information that has not been confirmed.", "translation": "Relatar informações com precisão é uma habilidade importante. Você pode resumir o que alguém disse, mencionar sua fonte de acordo com ela, ou explicar que algo é apenas supostamente verdade. As pessoas às vezes alegam coisas que não são verdade, e outras insistem na sua versão dos fatos. Um boato é uma informação que não foi confirmada.", "question": "What is a rumor?", "options": ["Confirmed information", "Unconfirmed information", "A formal report"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000210', 'listening', 12, '{"audio_text": "According to the report, the company allegedly broke the rules. The manager claims it is just a rumor, but the workers insist it is true.", "question": "What does the manager claim?", "options": ["It is true", "It is just a rumor", "It is confirmed"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000210', 'dictation', 13, '{"audio_text": "According to her, the meeting was canceled, and there is a rumor that he is leaving.", "expected": "According to her, the meeting was canceled, and there is a rumor that he is leaving."}'),
('20000000-0000-0000-0000-000000000210', 'typing', 14, '{"prompt_pt": "Traduza: ''De acordo com ela, a reunião foi cancelada.''", "expected": "According to her, the meeting was canceled.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000210', 'typing', 15, '{"prompt_pt": "Traduza: ''Ele insistiu que estava certo.''", "expected": "He insisted that he was right.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 12 (REPORTED SPEECH COMPLETO)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

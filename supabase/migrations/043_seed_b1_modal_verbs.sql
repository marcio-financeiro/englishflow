-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 2: Modal Verbs
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 1 (042_seed_b1_present_perfect.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 042_seed_b1_present_perfect.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 32: Modal Verbs
('30000000-0000-0000-0000-000000000931', 'must', 'mʌst', 'modal verb', 'dever / ter que (obrigação forte)', 'You must wear a seatbelt.', 'Você deve usar cinto de segurança.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000932', 'have to', 'hæv tuː', 'phrase', 'ter que (obrigação externa)', 'I have to work tomorrow.', 'Eu tenho que trabalhar amanhã.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000933', 'has to', 'hæz tuː', 'phrase', 'tem que (3ª pessoa)', 'She has to finish the report.', 'Ela tem que terminar o relatório.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000934', 'don''t have to', 'doʊnt hæv tuː', 'phrase', 'não precisa (falta de obrigação)', 'You don''t have to come if you''re busy.', 'Você não precisa vir se estiver ocupado.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000935', 'mustn''t', 'ˈmʌsənt', 'modal verb', 'não pode (proibição)', 'You mustn''t smoke here.', 'Você não pode fumar aqui.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000936', 'should', 'ʃʊd', 'modal verb', 'deveria (conselho)', 'You should see a doctor.', 'Você deveria ver um médico.', 'B1', array['modals', 'advice']),
('30000000-0000-0000-0000-000000000937', 'may', 'meɪ', 'modal verb', 'pode (possibilidade formal)', 'It may rain later.', 'Pode ser que chova mais tarde.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000938', 'might', 'maɪt', 'modal verb', 'pode / talvez (possibilidade)', 'He might be at home.', 'Ele talvez esteja em casa.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000939', 'could', 'kʊd', 'modal verb', 'poderia (possibilidade / habilidade)', 'It could be a good idea.', 'Poderia ser uma boa ideia.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000940', 'maybe', 'ˈmeɪbi', 'adverb', 'talvez', 'Maybe she forgot the meeting.', 'Talvez ela tenha esquecido a reunião.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000941', 'perhaps', 'pərˈhæps', 'adverb', 'talvez (formal)', 'Perhaps we should wait.', 'Talvez devêssemos esperar.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000942', 'possibly', 'ˈpɑːsəbli', 'adverb', 'possivelmente', 'It could possibly work.', 'Poderia possivelmente funcionar.', 'B1', array['modals', 'possibility']),
('30000000-0000-0000-0000-000000000943', 'can', 'kæn', 'modal verb', 'pode (habilidade / permissão)', 'She can speak three languages.', 'Ela sabe falar três idiomas.', 'B1', array['modals', 'ability']),
('30000000-0000-0000-0000-000000000944', 'be able to', 'biː ˈeɪbəl tuː', 'phrase', 'ser capaz de / conseguir', 'I am able to finish it today.', 'Eu consigo terminar isso hoje.', 'B1', array['modals', 'ability']),
('30000000-0000-0000-0000-000000000945', 'allowed to', 'əˈlaʊd tuː', 'phrase', 'permitido a', 'You are allowed to leave early.', 'Você tem permissão para sair mais cedo.', 'B1', array['modals', 'permission']),
('30000000-0000-0000-0000-000000000946', 'permission', 'pərˈmɪʃən', 'noun', 'permissão', 'Do I need permission to enter?', 'Eu preciso de permissão para entrar?', 'B1', array['modals', 'permission']),
('30000000-0000-0000-0000-000000000947', 'ability', 'əˈbɪləti', 'noun', 'habilidade', 'She has the ability to learn fast.', 'Ela tem a habilidade de aprender rápido.', 'B1', array['modals', 'ability']),
('30000000-0000-0000-0000-000000000948', 'had to', 'hæd tuː', 'phrase', 'teve que (obrigação no passado)', 'I had to work last weekend.', 'Eu tive que trabalhar no último fim de semana.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000949', 'should have', 'ʃʊd hæv', 'phrase', 'deveria ter (arrependimento)', 'You should have called me.', 'Você deveria ter me ligado.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000950', 'could have', 'kʊd hæv', 'phrase', 'poderia ter (possibilidade passada)', 'We could have missed the flight.', 'Nós poderíamos ter perdido o voo.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000951', 'must have', 'mʌst hæv', 'phrase', 'deve ter (dedução sobre o passado)', 'She must have forgotten the meeting.', 'Ela deve ter esquecido a reunião.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000952', 'didn''t have to', 'ˈdɪdənt hæv tuː', 'phrase', 'não precisou (passado)', 'I didn''t have to wait long.', 'Eu não precisei esperar muito.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000953', 'was able to', 'wʌz ˈeɪbəl tuː', 'phrase', 'conseguiu (passado)', 'He was able to fix the problem.', 'Ele conseguiu consertar o problema.', 'B1', array['modals', 'past']),
('30000000-0000-0000-0000-000000000954', 'rule', 'ruːl', 'noun', 'regra', 'It''s an important rule.', 'É uma regra importante.', 'B1', array['modals', 'rules']),
('30000000-0000-0000-0000-000000000955', 'advice', 'ədˈvaɪs', 'noun', 'conselho', 'Can you give me some advice?', 'Você pode me dar um conselho?', 'B1', array['modals', 'advice']),
('30000000-0000-0000-0000-000000000956', 'suggestion', 'səˈdʒestʃən', 'noun', 'sugestão', 'That''s a good suggestion.', 'Essa é uma boa sugestão.', 'B1', array['modals', 'advice']),
('30000000-0000-0000-0000-000000000957', 'obligation', 'ˌɑːbləˈɡeɪʃən', 'noun', 'obrigação', 'It''s not an obligation, just an option.', 'Não é uma obrigação, apenas uma opção.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000958', 'necessary', 'ˈnesəseri', 'adjective', 'necessário', 'Is it necessary to book in advance?', 'É necessário reservar com antecedência?', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000959', 'forbidden', 'fərˈbɪdən', 'adjective', 'proibido', 'Smoking is forbidden here.', 'Fumar é proibido aqui.', 'B1', array['modals', 'obligation']),
('30000000-0000-0000-0000-000000000960', 'allowed', 'əˈlaʊd', 'adjective', 'permitido', 'Pets are not allowed in the office.', 'Animais não são permitidos no escritório.', 'B1', array['modals', 'permission']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000032', 'B1', 'Modal Verbs', 'Expresse obrigação, possibilidade, habilidade e permissão com verbos modais.', 2, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000156', '10000000-0000-0000-0000-000000000032', 'Modal Verbs — Obligation', 1, 10),
('20000000-0000-0000-0000-000000000157', '10000000-0000-0000-0000-000000000032', 'Modal Verbs — Possibility', 2, 10),
('20000000-0000-0000-0000-000000000158', '10000000-0000-0000-0000-000000000032', 'Modal Verbs — Ability & Permission', 3, 10),
('20000000-0000-0000-0000-000000000159', '10000000-0000-0000-0000-000000000032', 'Modal Verbs — Past Modals', 4, 10),
('20000000-0000-0000-0000-000000000160', '10000000-0000-0000-0000-000000000032', 'Rules & Advice (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 32.1: Modal Verbs — Obligation ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000156', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000931", "show_image": false}'),
('20000000-0000-0000-0000-000000000156', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000932", "show_image": false}'),
('20000000-0000-0000-0000-000000000156', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000935", "show_image": false}'),
('20000000-0000-0000-0000-000000000156', 'multiple_choice', 4, '{"question": "Complete: You ___ wear a seatbelt. It''s the law.", "audio_text": null, "options": ["must", "might", "could"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000156', 'multiple_choice', 5, '{"question": "Complete: You ___ smoke here. It''s forbidden.", "audio_text": null, "options": ["don''t have to", "mustn''t", "should"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000156', 'matching', 6, '{"pairs": [{"left": "must", "right": "dever (obrigação forte)"}, {"left": "have to", "right": "ter que"}, {"left": "mustn''t", "right": "não pode"}, {"left": "should", "right": "deveria"}, {"left": "don''t have to", "right": "não precisa"}, {"left": "has to", "right": "tem que"}]}'),
('20000000-0000-0000-0000-000000000156', 'fill_blank', 7, '{"sentence": "I ___ work tomorrow. My boss asked me to.", "options": ["have to", "mustn''t", "might"], "correct": "have to", "translation": "Eu tenho que trabalhar amanhã."}'),
('20000000-0000-0000-0000-000000000156', 'fill_blank', 8, '{"sentence": "You ___ come to the party if you''re busy.", "options": ["don''t have to", "mustn''t", "must"], "correct": "don''t have to", "translation": "Você não precisa vir à festa se estiver ocupado."}'),
('20000000-0000-0000-0000-000000000156', 'word_order', 9, '{"words": ["a", "wear", "must", "seatbelt", "You"], "correct_sentence": "You must wear a seatbelt", "translation": "Você deve usar cinto de segurança"}'),
('20000000-0000-0000-0000-000000000156', 'word_order', 10, '{"words": ["see", "should", "doctor", "a", "You"], "correct_sentence": "You should see a doctor", "translation": "Você deveria ver um médico"}'),
('20000000-0000-0000-0000-000000000156', 'reading', 11, '{"passage": "At the oil platform, safety rules are very strict. Workers must wear a helmet at all times, and they mustn''t use their phones near the machines. They don''t have to bring their own equipment because the company provides everything.", "translation": "Na plataforma de petróleo, as regras de segurança são muito rígidas. Os trabalhadores devem usar capacete o tempo todo, e não podem usar o celular perto das máquinas. Eles não precisam trazer o próprio equipamento porque a empresa fornece tudo.", "question": "What don''t workers have to do?", "options": ["Wear a helmet", "Bring their own equipment", "Follow safety rules"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000156', 'listening', 12, '{"audio_text": "You must wear a seatbelt in the car, and you mustn''t leave the door open while driving. You don''t have to drive if you are too tired.", "question": "What mustn''t you do while driving?", "options": ["Wear a seatbelt", "Leave the door open", "Stop for a break"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000156', 'dictation', 13, '{"audio_text": "You must wear a seatbelt, but you don''t have to drive if you''re tired.", "expected": "You must wear a seatbelt, but you don''t have to drive if you''re tired."}'),
('20000000-0000-0000-0000-000000000156', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela tem que terminar o relatório.''", "expected": "She has to finish the report.", "ai_review": true}');

-- ---------- Lição 32.2: Modal Verbs — Possibility ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000157', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000937", "show_image": false}'),
('20000000-0000-0000-0000-000000000157', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000938", "show_image": false}'),
('20000000-0000-0000-0000-000000000157', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000940", "show_image": false}'),
('20000000-0000-0000-0000-000000000157', 'multiple_choice', 4, '{"question": "Complete: It ___ rain later. Take an umbrella.", "audio_text": null, "options": ["may", "must", "should"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000157', 'multiple_choice', 5, '{"question": "Complete: ___ she forgot the meeting.", "audio_text": null, "options": ["Maybe", "Should", "Must"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000157', 'matching', 6, '{"pairs": [{"left": "may", "right": "pode (formal)"}, {"left": "might", "right": "talvez"}, {"left": "could", "right": "poderia"}, {"left": "maybe", "right": "talvez"}, {"left": "perhaps", "right": "talvez (formal)"}, {"left": "possibly", "right": "possivelmente"}]}'),
('20000000-0000-0000-0000-000000000157', 'fill_blank', 7, '{"sentence": "He ___ be at home. I''m not sure.", "options": ["might", "must", "should"], "correct": "might", "translation": "Ele talvez esteja em casa."}'),
('20000000-0000-0000-0000-000000000157', 'fill_blank', 8, '{"sentence": "It ___ possibly work if we try harder.", "options": ["could", "must", "should"], "correct": "could", "translation": "Poderia possivelmente funcionar se tentarmos mais."}'),
('20000000-0000-0000-0000-000000000157', 'word_order', 9, '{"words": ["later", "rain", "may", "It"], "correct_sentence": "It may rain later", "translation": "Pode ser que chova mais tarde"}'),
('20000000-0000-0000-0000-000000000157', 'word_order', 10, '{"words": ["wait", "we", "should", "Perhaps"], "correct_sentence": "Perhaps we should wait", "translation": "Talvez devêssemos esperar"}'),
('20000000-0000-0000-0000-000000000157', 'reading', 11, '{"passage": "The weather forecast is uncertain today. It may rain in the morning, but it might also be sunny in the afternoon. Perhaps we should bring an umbrella, just in case. Maybe the weather will change quickly, like it often does offshore.", "translation": "A previsão do tempo está incerta hoje. Pode chover de manhã, mas também pode fazer sol à tarde. Talvez devêssemos levar um guarda-chuva, só por precaução. Talvez o tempo mude rápido, como acontece frequentemente offshore.", "question": "What does the speaker suggest bringing?", "options": ["Sunglasses", "An umbrella", "A jacket"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000157', 'listening', 12, '{"audio_text": "He might be at home, or he could be at work. Maybe we should call him to find out.", "question": "What does the speaker suggest doing?", "options": ["Visiting him", "Calling him", "Waiting for him"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000157', 'dictation', 13, '{"audio_text": "It might rain later, so maybe we should wait.", "expected": "It might rain later, so maybe we should wait."}'),
('20000000-0000-0000-0000-000000000157', 'typing', 14, '{"prompt_pt": "Traduza: ''Poderia ser uma boa ideia.''", "expected": "It could be a good idea.", "ai_review": true}');

-- ---------- Lição 32.3: Modal Verbs — Ability & Permission ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000158', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000943", "show_image": false}'),
('20000000-0000-0000-0000-000000000158', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000944", "show_image": false}'),
('20000000-0000-0000-0000-000000000158', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000946", "show_image": false}'),
('20000000-0000-0000-0000-000000000158', 'multiple_choice', 4, '{"question": "Complete: She ___ speak three languages.", "audio_text": null, "options": ["can", "must", "should"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000158', 'multiple_choice', 5, '{"question": "Complete: Pets are not ___ in the office.", "audio_text": null, "options": ["allowed", "able", "must"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000158', 'matching', 6, '{"pairs": [{"left": "can", "right": "pode (habilidade)"}, {"left": "be able to", "right": "ser capaz de"}, {"left": "allowed to", "right": "permitido a"}, {"left": "permission", "right": "permissão"}, {"left": "ability", "right": "habilidade"}, {"left": "allowed", "right": "permitido"}]}'),
('20000000-0000-0000-0000-000000000158', 'fill_blank', 7, '{"sentence": "I am ___ to finish it today.", "options": ["able", "allowed", "can"], "correct": "able", "translation": "Eu consigo terminar isso hoje."}'),
('20000000-0000-0000-0000-000000000158', 'fill_blank', 8, '{"sentence": "You are ___ to leave early today.", "options": ["allowed", "able", "can"], "correct": "allowed", "translation": "Você tem permissão para sair mais cedo hoje."}'),
('20000000-0000-0000-0000-000000000158', 'word_order', 9, '{"words": ["languages", "speak", "three", "can", "She"], "correct_sentence": "She can speak three languages", "translation": "Ela sabe falar três idiomas"}'),
('20000000-0000-0000-0000-000000000158', 'word_order', 10, '{"words": ["enter", "I", "permission", "to", "need", "Do"], "correct_sentence": "Do I need permission to enter", "translation": "Eu preciso de permissão para entrar?"}'),
('20000000-0000-0000-0000-000000000158', 'reading', 11, '{"passage": "Julia is a very talented engineer. She can speak three languages and she is able to solve complex problems quickly. At her new job, employees are allowed to work from home two days a week, but they need permission from their manager first.", "translation": "Julia é uma engenheira muito talentosa. Ela sabe falar três idiomas e consegue resolver problemas complexos rapidamente. No novo emprego dela, os funcionários têm permissão para trabalhar de casa dois dias por semana, mas precisam de permissão do gerente primeiro.", "question": "How many languages can Julia speak?", "options": ["One", "Two", "Three"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000158', 'listening', 12, '{"audio_text": "She has the ability to learn fast, and she was able to finish the training in half the usual time. Now she is allowed to work independently.", "question": "What is she now allowed to do?", "options": ["Work independently", "Take a vacation", "Change teams"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000158', 'dictation', 13, '{"audio_text": "She has the ability to learn fast, and she is able to finish the course early.", "expected": "She has the ability to learn fast, and she is able to finish the course early."}'),
('20000000-0000-0000-0000-000000000158', 'typing', 14, '{"prompt_pt": "Traduza: ''Você tem permissão para sair mais cedo.''", "expected": "You are allowed to leave early.", "ai_review": true}');

-- ---------- Lição 32.4: Modal Verbs — Past Modals ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000159', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000948", "show_image": false}'),
('20000000-0000-0000-0000-000000000159', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000949", "show_image": false}'),
('20000000-0000-0000-0000-000000000159', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000951", "show_image": false}'),
('20000000-0000-0000-0000-000000000159', 'multiple_choice', 4, '{"question": "Complete: I ___ work last weekend. My boss asked me.", "audio_text": null, "options": ["had to", "should have", "must have"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000159', 'multiple_choice', 5, '{"question": "Complete: You ___ called me! I was worried.", "audio_text": null, "options": ["should have", "had to", "was able to"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000159', 'matching', 6, '{"pairs": [{"left": "had to", "right": "teve que"}, {"left": "should have", "right": "deveria ter"}, {"left": "could have", "right": "poderia ter"}, {"left": "must have", "right": "deve ter"}, {"left": "didn''t have to", "right": "não precisou"}, {"left": "was able to", "right": "conseguiu"}]}'),
('20000000-0000-0000-0000-000000000159', 'fill_blank', 7, '{"sentence": "We ___ missed the flight if we left later.", "options": ["could have", "had to", "must have"], "correct": "could have", "translation": "Nós poderíamos ter perdido o voo se tivéssemos saído mais tarde."}'),
('20000000-0000-0000-0000-000000000159', 'fill_blank', 8, '{"sentence": "She ___ forgotten the meeting. She never showed up.", "options": ["must have", "should have", "had to"], "correct": "must have", "translation": "Ela deve ter esquecido a reunião."}'),
('20000000-0000-0000-0000-000000000159', 'word_order', 9, '{"words": ["long", "have", "wait", "I", "didn''t", "to"], "correct_sentence": "I didn''t have to wait long", "translation": "Eu não precisei esperar muito"}'),
('20000000-0000-0000-0000-000000000159', 'word_order', 10, '{"words": ["problem", "the", "fix", "was", "to", "He", "able"], "correct_sentence": "He was able to fix the problem", "translation": "Ele conseguiu consertar o problema"}'),
('20000000-0000-0000-0000-000000000159', 'reading', 11, '{"passage": "Last month was difficult for Marcos. He had to work extra shifts offshore, and he didn''t have to travel home during the break because his family visited him instead. He should have rested more, but he was able to finish all his tasks on time.", "translation": "O mês passado foi difícil para Marcos. Ele teve que trabalhar turnos extras offshore, e não precisou viajar para casa durante a folga porque sua família o visitou. Ele deveria ter descansado mais, mas conseguiu terminar todas as tarefas a tempo.", "question": "Why didn''t Marcos have to travel home?", "options": ["His family visited him", "He had no time off", "He didn''t want to"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000159', 'listening', 12, '{"audio_text": "I had to wake up early yesterday, but I was able to finish my work before lunch. I should have gone to bed earlier the night before.", "question": "What does the speaker say they should have done?", "options": ["Woken up later", "Gone to bed earlier", "Skipped work"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000159', 'dictation', 13, '{"audio_text": "I had to work last weekend, but I was able to finish everything on time.", "expected": "I had to work last weekend, but I was able to finish everything on time."}'),
('20000000-0000-0000-0000-000000000159', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela deve ter esquecido a reunião.''", "expected": "She must have forgotten the meeting.", "ai_review": true}');

-- ---------- Lição 32.5: Rules & Advice (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000160', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000954", "show_image": false}'),
('20000000-0000-0000-0000-000000000160', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000955", "show_image": false}'),
('20000000-0000-0000-0000-000000000160', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000959", "show_image": false}'),
('20000000-0000-0000-0000-000000000160', 'multiple_choice', 4, '{"question": "Complete: Smoking is ___ here.", "audio_text": null, "options": ["forbidden", "allowed", "necessary"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000160', 'multiple_choice', 5, '{"question": "Complete: Is it ___ to book in advance?", "audio_text": null, "options": ["necessary", "forbidden", "obligation"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000160', 'matching', 6, '{"pairs": [{"left": "rule", "right": "regra"}, {"left": "advice", "right": "conselho"}, {"left": "suggestion", "right": "sugestão"}, {"left": "obligation", "right": "obrigação"}, {"left": "necessary", "right": "necessário"}, {"left": "forbidden", "right": "proibido"}]}'),
('20000000-0000-0000-0000-000000000160', 'fill_blank', 7, '{"sentence": "Can you give me some ___?", "options": ["advice", "rule", "obligation"], "correct": "advice", "translation": "Você pode me dar um conselho?"}'),
('20000000-0000-0000-0000-000000000160', 'fill_blank', 8, '{"sentence": "It''s not an ___, just an option.", "options": ["obligation", "advice", "rule"], "correct": "obligation", "translation": "Não é uma obrigação, apenas uma opção."}'),
('20000000-0000-0000-0000-000000000160', 'word_order', 9, '{"words": ["important", "an", "It''s", "rule"], "correct_sentence": "It''s an important rule", "translation": "É uma regra importante"}'),
('20000000-0000-0000-0000-000000000160', 'word_order', 10, '{"words": ["good", "That''s", "a", "suggestion"], "correct_sentence": "That''s a good suggestion", "translation": "Essa é uma boa sugestão"}'),
('20000000-0000-0000-0000-000000000160', 'reading', 11, '{"passage": "Every workplace has rules. Safety is often an obligation, not just advice. It is necessary to follow the rules, and some actions are completely forbidden. A good suggestion is always welcome, but rules must be respected.", "translation": "Todo local de trabalho tem regras. A segurança costuma ser uma obrigação, não apenas um conselho. É necessário seguir as regras, e algumas ações são completamente proibidas. Uma boa sugestão é sempre bem-vinda, mas as regras devem ser respeitadas.", "question": "According to the text, what is always welcome?", "options": ["A forbidden action", "A good suggestion", "An obligation"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000160', 'listening', 12, '{"audio_text": "It''s an important rule: smoking is forbidden here. If you need advice, just ask your supervisor for a suggestion.", "question": "What is forbidden according to the rule?", "options": ["Asking for advice", "Smoking", "Giving suggestions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000160', 'dictation', 13, '{"audio_text": "It''s an important rule, and smoking is forbidden here.", "expected": "It''s an important rule, and smoking is forbidden here."}'),
('20000000-0000-0000-0000-000000000160', 'typing', 14, '{"prompt_pt": "Traduza: ''É necessário reservar com antecedência?''", "expected": "Is it necessary to book in advance?", "ai_review": true}'),
('20000000-0000-0000-0000-000000000160', 'typing', 15, '{"prompt_pt": "Traduza: ''Animais não são permitidos no escritório.''", "expected": "Pets are not allowed in the office.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 2 (MODAL VERBS)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

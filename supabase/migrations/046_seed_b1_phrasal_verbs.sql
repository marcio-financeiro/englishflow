-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 5: Phrasal Verbs (Básicos)
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 4 (045_seed_b1_reported_speech.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 045_seed_b1_reported_speech.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 35: Phrasal Verbs
('30000000-0000-0000-0000-000000001021', 'turn on', 'tɜːrn ɑːn', 'phrasal verb', 'ligar (aparelho)', 'Can you turn on the light?', 'Você pode ligar a luz?', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001022', 'turn off', 'tɜːrn ɔːf', 'phrasal verb', 'desligar', 'Please turn off the TV.', 'Por favor, desligue a TV.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001023', 'look for', 'lʊk fɔːr', 'phrasal verb', 'procurar', 'I am looking for my keys.', 'Estou procurando minhas chaves.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001024', 'look after', 'lʊk ˈæftər', 'phrasal verb', 'cuidar de', 'She looks after her little brother.', 'Ela cuida do irmão mais novo.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001025', 'give up', 'ɡɪv ʌp', 'phrasal verb', 'desistir', 'Do not give up on your dreams.', 'Não desista dos seus sonhos.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001026', 'find out', 'faɪnd aʊt', 'phrasal verb', 'descobrir', 'I need to find out the truth.', 'Eu preciso descobrir a verdade.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001027', 'put on', 'pʊt ɑːn', 'phrasal verb', 'vestir / colocar', 'Put on your jacket, it is cold.', 'Coloque sua jaqueta, está frio.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001028', 'take off', 'teɪk ɔːf', 'phrasal verb', 'tirar (roupa) / decolar', 'The plane will take off soon.', 'O avião vai decolar em breve.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001029', 'get on', 'ɡet ɑːn', 'phrasal verb', 'entrar (ônibus / trem)', 'We got on the bus at the corner.', 'Nós entramos no ônibus na esquina.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001030', 'get off', 'ɡet ɔːf', 'phrasal verb', 'descer (ônibus / trem)', 'You should get off at the next stop.', 'Você deveria descer no próximo ponto.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001031', 'come back', 'kʌm bæk', 'phrasal verb', 'voltar', 'She will come back next week.', 'Ela vai voltar semana que vem.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001032', 'go on', 'ɡoʊ ɑːn', 'phrasal verb', 'continuar', 'Please go on with your story.', 'Por favor, continue sua história.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001033', 'sit down', 'sɪt daʊn', 'phrasal verb', 'sentar', 'Please sit down and relax.', 'Por favor, sente e relaxe.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001034', 'stand up', 'stænd ʌp', 'phrasal verb', 'levantar-se', 'Everyone stood up when she entered.', 'Todos se levantaram quando ela entrou.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001035', 'pick up', 'pɪk ʌp', 'phrasal verb', 'pegar / buscar', 'I will pick you up at six.', 'Eu vou te buscar às seis.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001036', 'drop off', 'drɑːp ɔːf', 'phrasal verb', 'deixar (alguém em algum lugar)', 'I can drop you off at the airport.', 'Eu posso te deixar no aeroporto.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001037', 'run out of', 'rʌn aʊt ʌv', 'phrasal verb', 'ficar sem', 'We ran out of coffee this morning.', 'Nós ficamos sem café hoje de manhã.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001038', 'fill out', 'fɪl aʊt', 'phrasal verb', 'preencher (formulário)', 'Please fill out this form.', 'Por favor, preencha este formulário.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001039', 'check in', 'tʃek ɪn', 'phrasal verb', 'fazer check-in', 'We checked in at the hotel at noon.', 'Nós fizemos check-in no hotel ao meio-dia.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001040', 'check out', 'tʃek aʊt', 'phrasal verb', 'fazer check-out', 'We have to check out before eleven.', 'Temos que fazer check-out antes das onze.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001041', 'hang out', 'hæŋ aʊt', 'phrasal verb', 'sair / passar tempo com amigos', 'We usually hang out on weekends.', 'Nós geralmente saímos nos fins de semana.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001042', 'hold on', 'hoʊld ɑːn', 'phrasal verb', 'esperar / aguardar', 'Hold on, I will be right back.', 'Espera aí, eu já volto.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001043', 'carry on', 'ˈkæri ɑːn', 'phrasal verb', 'continuar / seguir em frente', 'Carry on with your work.', 'Continue com seu trabalho.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001044', 'work out', 'wɜːrk aʊt', 'phrasal verb', 'malhar / dar certo', 'Everything worked out in the end.', 'No final, tudo deu certo.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001045', 'figure out', 'ˈfɪɡjər aʊt', 'phrasal verb', 'descobrir / entender', 'I cannot figure out this problem.', 'Eu não consigo entender esse problema.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001046', 'break down', 'breɪk daʊn', 'phrasal verb', 'quebrar (carro / máquina)', 'The car broke down on the highway.', 'O carro quebrou na rodovia.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001047', 'throw away', 'θroʊ əˈweɪ', 'phrasal verb', 'jogar fora', 'Do not throw away these papers.', 'Não jogue fora esses papéis.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001048', 'set up', 'set ʌp', 'phrasal verb', 'montar / configurar', 'We need to set up the equipment.', 'Precisamos montar o equipamento.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001049', 'deal with', 'diːl wɪð', 'phrasal verb', 'lidar com', 'I have to deal with this problem now.', 'Eu tenho que lidar com esse problema agora.', 'B1', array['phrasal-verbs']),
('30000000-0000-0000-0000-000000001050', 'look forward to', 'lʊk ˈfɔːrwərd tuː', 'phrasal verb', 'aguardar ansiosamente', 'I look forward to seeing you soon.', 'Estou ansioso para te ver em breve.', 'B1', array['phrasal-verbs']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000035', 'B1', 'Phrasal Verbs', 'Use os phrasal verbs mais comuns do dia a dia, viagens e trabalho.', 5, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000171', '10000000-0000-0000-0000-000000000035', 'Phrasal Verbs — Daily Actions', 1, 10),
('20000000-0000-0000-0000-000000000172', '10000000-0000-0000-0000-000000000035', 'Phrasal Verbs — Clothes & Travel', 2, 10),
('20000000-0000-0000-0000-000000000173', '10000000-0000-0000-0000-000000000035', 'Phrasal Verbs — Around the House', 3, 10),
('20000000-0000-0000-0000-000000000174', '10000000-0000-0000-0000-000000000035', 'Phrasal Verbs — Trips & Hangouts', 4, 10),
('20000000-0000-0000-0000-000000000175', '10000000-0000-0000-0000-000000000035', 'Phrasal Verbs — Problems & Plans (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 35.1: Phrasal Verbs — Daily Actions ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000171', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001021", "show_image": false}'),
('20000000-0000-0000-0000-000000000171', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001022", "show_image": false}'),
('20000000-0000-0000-0000-000000000171', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001023", "show_image": false}'),
('20000000-0000-0000-0000-000000000171', 'multiple_choice', 4, '{"question": "Complete: Can you ___ the light?", "audio_text": null, "options": ["turn on", "turn off", "look for"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000171', 'multiple_choice', 5, '{"question": "Complete: I am ___ my keys.", "audio_text": null, "options": ["looking for", "looking after", "giving up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000171', 'matching', 6, '{"pairs": [{"left": "turn on", "right": "ligar"}, {"left": "turn off", "right": "desligar"}, {"left": "look for", "right": "procurar"}, {"left": "look after", "right": "cuidar de"}, {"left": "give up", "right": "desistir"}, {"left": "find out", "right": "descobrir"}]}'),
('20000000-0000-0000-0000-000000000171', 'fill_blank', 7, '{"sentence": "She ___ her little brother every afternoon.", "options": ["looks after", "looks for", "gives up"], "correct": "looks after", "translation": "Ela cuida do irmão mais novo toda tarde."}'),
('20000000-0000-0000-0000-000000000171', 'fill_blank', 8, '{"sentence": "Do not ___ on your dreams.", "options": ["give up", "turn off", "find out"], "correct": "give up", "translation": "Não desista dos seus sonhos."}'),
('20000000-0000-0000-0000-000000000171', 'word_order', 9, '{"words": ["I", "need", "to", "find", "out", "the", "truth"], "correct_sentence": "I need to find out the truth", "translation": "Eu preciso descobrir a verdade"}'),
('20000000-0000-0000-0000-000000000171', 'word_order', 10, '{"words": ["Please", "turn", "off", "the", "TV"], "correct_sentence": "Please turn off the TV", "translation": "Por favor, desligue a TV"}'),
('20000000-0000-0000-0000-000000000171', 'reading', 11, '{"passage": "Every morning, I turn on the lights and look for my keys before leaving home. My sister looks after our dog while I am at work. Sometimes I want to give up on difficult tasks, but I always try to find out a solution first.", "translation": "Toda manhã, eu ligo as luzes e procuro minhas chaves antes de sair de casa. Minha irmã cuida do nosso cachorro enquanto estou no trabalho. Às vezes eu quero desistir de tarefas difíceis, mas sempre tento descobrir uma solução primeiro.", "question": "Who looks after the dog?", "options": ["The speaker", "The sister", "A neighbor"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000171', 'listening', 12, '{"audio_text": "Please turn off the TV and look for your shoes. We need to leave in five minutes.", "question": "What should the listener look for?", "options": ["The TV remote", "Their shoes", "Their keys"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000171', 'dictation', 13, '{"audio_text": "Please turn off the TV, and do not give up on your dreams.", "expected": "Please turn off the TV, and do not give up on your dreams."}'),
('20000000-0000-0000-0000-000000000171', 'typing', 14, '{"prompt_pt": "Traduza: ''Você pode ligar a luz?''", "expected": "Can you turn on the light?", "ai_review": true}');

-- ---------- Lição 35.2: Phrasal Verbs — Clothes & Travel ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000172', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001027", "show_image": false}'),
('20000000-0000-0000-0000-000000000172', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001028", "show_image": false}'),
('20000000-0000-0000-0000-000000000172', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001029", "show_image": false}'),
('20000000-0000-0000-0000-000000000172', 'multiple_choice', 4, '{"question": "Complete: ___ your jacket, it is cold outside.", "audio_text": null, "options": ["Put on", "Take off", "Get on"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000172', 'multiple_choice', 5, '{"question": "Complete: We ___ the bus at the corner.", "audio_text": null, "options": ["got on", "got off", "put on"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000172', 'matching', 6, '{"pairs": [{"left": "put on", "right": "vestir"}, {"left": "take off", "right": "tirar / decolar"}, {"left": "get on", "right": "entrar"}, {"left": "get off", "right": "descer"}, {"left": "come back", "right": "voltar"}, {"left": "go on", "right": "continuar"}]}'),
('20000000-0000-0000-0000-000000000172', 'fill_blank', 7, '{"sentence": "You should ___ at the next stop.", "options": ["get off", "get on", "take off"], "correct": "get off", "translation": "Você deveria descer no próximo ponto."}'),
('20000000-0000-0000-0000-000000000172', 'fill_blank', 8, '{"sentence": "The plane will ___ soon.", "options": ["take off", "put on", "get off"], "correct": "take off", "translation": "O avião vai decolar em breve."}'),
('20000000-0000-0000-0000-000000000172', 'word_order', 9, '{"words": ["She", "will", "come", "back", "next", "week"], "correct_sentence": "She will come back next week", "translation": "Ela vai voltar semana que vem"}'),
('20000000-0000-0000-0000-000000000172', 'word_order', 10, '{"words": ["Please", "go", "on", "with", "your", "story"], "correct_sentence": "Please go on with your story", "translation": "Por favor, continue sua história"}'),
('20000000-0000-0000-0000-000000000172', 'reading', 11, '{"passage": "At the airport, passengers put on warm clothes before boarding, especially in winter. They get on the plane, and after it takes off, they can take off their jackets if the cabin is warm. The flight attendant asked everyone to go on reading their safety cards.", "translation": "No aeroporto, os passageiros vestem roupas quentes antes de embarcar, especialmente no inverno. Eles entram no avião, e depois que ele decola, podem tirar as jaquetas se a cabine estiver quente. A comissária de bordo pediu para todos continuarem lendo os cartões de segurança.", "question": "When do passengers usually take off their jackets?", "options": ["Before boarding", "If the cabin is warm", "When they get off"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000172', 'listening', 12, '{"audio_text": "We got on the bus at the corner, and we will get off at the museum. The bus will come back this way in an hour.", "question": "Where will the passengers get off?", "options": ["At the corner", "At the museum", "At the airport"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000172', 'dictation', 13, '{"audio_text": "We got on the bus at the corner, and the plane will take off soon.", "expected": "We got on the bus at the corner, and the plane will take off soon."}'),
('20000000-0000-0000-0000-000000000172', 'typing', 14, '{"prompt_pt": "Traduza: ''Nós entramos no ônibus na esquina.''", "expected": "We got on the bus at the corner.", "ai_review": true}');

-- ---------- Lição 35.3: Phrasal Verbs — Around the House ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000173', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001033", "show_image": false}'),
('20000000-0000-0000-0000-000000000173', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001035", "show_image": false}'),
('20000000-0000-0000-0000-000000000173', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001037", "show_image": false}'),
('20000000-0000-0000-0000-000000000173', 'multiple_choice', 4, '{"question": "Complete: Please ___ and relax.", "audio_text": null, "options": ["sit down", "stand up", "pick up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000173', 'multiple_choice', 5, '{"question": "Complete: I will ___ you at six.", "audio_text": null, "options": ["pick up", "drop off", "sit down"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000173', 'matching', 6, '{"pairs": [{"left": "sit down", "right": "sentar"}, {"left": "stand up", "right": "levantar-se"}, {"left": "pick up", "right": "pegar / buscar"}, {"left": "drop off", "right": "deixar alguém"}, {"left": "run out of", "right": "ficar sem"}, {"left": "fill out", "right": "preencher"}]}'),
('20000000-0000-0000-0000-000000000173', 'fill_blank', 7, '{"sentence": "Everyone ___ when she entered.", "options": ["stood up", "sat down", "picked up"], "correct": "stood up", "translation": "Todos se levantaram quando ela entrou."}'),
('20000000-0000-0000-0000-000000000173', 'fill_blank', 8, '{"sentence": "We ___ coffee this morning.", "options": ["ran out of", "picked up", "filled out"], "correct": "ran out of", "translation": "Nós ficamos sem café hoje de manhã."}'),
('20000000-0000-0000-0000-000000000173', 'word_order', 9, '{"words": ["Please", "fill", "out", "this", "form"], "correct_sentence": "Please fill out this form", "translation": "Por favor, preencha este formulário"}'),
('20000000-0000-0000-0000-000000000173', 'word_order', 10, '{"words": ["I", "can", "drop", "you", "off", "at", "the", "airport"], "correct_sentence": "I can drop you off at the airport", "translation": "Eu posso te deixar no aeroporto"}'),
('20000000-0000-0000-0000-000000000173', 'reading', 11, '{"passage": "Before the interview, the receptionist asked me to sit down and fill out a form. When my name was called, I stood up and picked up my bag. Later, I found out the office had run out of coffee, so I did not get a cup while waiting.", "translation": "Antes da entrevista, a recepcionista me pediu para sentar e preencher um formulário. Quando meu nome foi chamado, eu me levantei e peguei minha bolsa. Depois, descobri que o escritório tinha ficado sem café, então não tomei uma xícara enquanto esperava.", "question": "What did the office run out of?", "options": ["Forms", "Coffee", "Chairs"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000173', 'listening', 12, '{"audio_text": "Please sit down and fill out this form. When you finish, stand up and I will pick it up.", "question": "What should the listener do after filling out the form?", "options": ["Sit down", "Stand up", "Run out of coffee"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000173', 'dictation', 13, '{"audio_text": "Please sit down and fill out this form, and I will pick it up later.", "expected": "Please sit down and fill out this form, and I will pick it up later."}'),
('20000000-0000-0000-0000-000000000173', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu vou te buscar às seis.''", "expected": "I will pick you up at six.", "ai_review": true}');

-- ---------- Lição 35.4: Phrasal Verbs — Trips & Hangouts ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000174', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001039", "show_image": false}'),
('20000000-0000-0000-0000-000000000174', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001041", "show_image": false}'),
('20000000-0000-0000-0000-000000000174', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001044", "show_image": false}'),
('20000000-0000-0000-0000-000000000174', 'multiple_choice', 4, '{"question": "Complete: We ___ at the hotel at noon.", "audio_text": null, "options": ["checked in", "checked out", "hung out"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000174', 'multiple_choice', 5, '{"question": "Complete: We usually ___ on weekends.", "audio_text": null, "options": ["hang out", "check out", "hold on"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000174', 'matching', 6, '{"pairs": [{"left": "check in", "right": "fazer check-in"}, {"left": "check out", "right": "fazer check-out"}, {"left": "hang out", "right": "sair com amigos"}, {"left": "hold on", "right": "esperar"}, {"left": "carry on", "right": "continuar"}, {"left": "work out", "right": "malhar / dar certo"}]}'),
('20000000-0000-0000-0000-000000000174', 'fill_blank', 7, '{"sentence": "We have to ___ before eleven.", "options": ["check out", "check in", "hold on"], "correct": "check out", "translation": "Temos que fazer check-out antes das onze."}'),
('20000000-0000-0000-0000-000000000174', 'fill_blank', 8, '{"sentence": "___, I will be right back.", "options": ["Hold on", "Check in", "Carry on"], "correct": "Hold on", "translation": "Espera aí, eu já volto."}'),
('20000000-0000-0000-0000-000000000174', 'word_order', 9, '{"words": ["Carry", "on", "with", "your", "work"], "correct_sentence": "Carry on with your work", "translation": "Continue com seu trabalho"}'),
('20000000-0000-0000-0000-000000000174', 'word_order', 10, '{"words": ["Everything", "worked", "out", "in", "the", "end"], "correct_sentence": "Everything worked out in the end", "translation": "No final, tudo deu certo"}'),
('20000000-0000-0000-0000-000000000174', 'reading', 11, '{"passage": "When we arrived at the hotel, we checked in and left our bags in the room. In the evening, we like to hang out at the pool with other guests. On the last day, we had to check out before eleven, but everything worked out fine and we caught our flight home.", "translation": "Quando chegamos ao hotel, fizemos check-in e deixamos as malas no quarto. À noite, gostamos de passar tempo na piscina com outros hóspedes. No último dia, tivemos que fazer check-out antes das onze, mas tudo deu certo e pegamos o voo de volta para casa.", "question": "What time did they have to check out?", "options": ["Before eleven", "At noon", "In the evening"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000174', 'listening', 12, '{"audio_text": "Hold on a second, I need to check in first. Then we can hang out by the pool.", "question": "What does the speaker need to do first?", "options": ["Hang out by the pool", "Check in", "Check out"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000174', 'dictation', 13, '{"audio_text": "We checked in at the hotel, and later we hung out by the pool.", "expected": "We checked in at the hotel, and later we hung out by the pool."}'),
('20000000-0000-0000-0000-000000000174', 'typing', 14, '{"prompt_pt": "Traduza: ''Temos que fazer check-out antes das onze.''", "expected": "We have to check out before eleven.", "ai_review": true}');

-- ---------- Lição 35.5: Phrasal Verbs — Problems & Plans (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000175', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001045", "show_image": false}'),
('20000000-0000-0000-0000-000000000175', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001048", "show_image": false}'),
('20000000-0000-0000-0000-000000000175', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001050", "show_image": false}'),
('20000000-0000-0000-0000-000000000175', 'multiple_choice', 4, '{"question": "Complete: I cannot ___ this problem.", "audio_text": null, "options": ["figure out", "set up", "break down"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000175', 'multiple_choice', 5, '{"question": "Complete: We need to ___ the equipment.", "audio_text": null, "options": ["set up", "figure out", "throw away"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000175', 'matching', 6, '{"pairs": [{"left": "figure out", "right": "descobrir / entender"}, {"left": "break down", "right": "quebrar"}, {"left": "throw away", "right": "jogar fora"}, {"left": "set up", "right": "montar / configurar"}, {"left": "deal with", "right": "lidar com"}, {"left": "look forward to", "right": "aguardar ansiosamente"}]}'),
('20000000-0000-0000-0000-000000000175', 'fill_blank', 7, '{"sentence": "The car ___ on the highway.", "options": ["broke down", "set up", "threw away"], "correct": "broke down", "translation": "O carro quebrou na rodovia."}'),
('20000000-0000-0000-0000-000000000175', 'fill_blank', 8, '{"sentence": "I have to ___ this problem now.", "options": ["deal with", "figure out", "throw away"], "correct": "deal with", "translation": "Eu tenho que lidar com esse problema agora."}'),
('20000000-0000-0000-0000-000000000175', 'word_order', 9, '{"words": ["Do", "not", "throw", "away", "these", "papers"], "correct_sentence": "Do not throw away these papers", "translation": "Não jogue fora esses papéis"}'),
('20000000-0000-0000-0000-000000000175', 'word_order', 10, '{"words": ["I", "look", "forward", "to", "seeing", "you", "soon"], "correct_sentence": "I look forward to seeing you soon", "translation": "Estou ansioso para te ver em breve"}'),
('20000000-0000-0000-0000-000000000175', 'reading', 11, '{"passage": "Working offshore is not always easy. Sometimes equipment breaks down, and the team has to figure out the problem quickly. Other times, they set up new machines and deal with unexpected issues. Despite the challenges, most workers look forward to going home and seeing their families again.", "translation": "Trabalhar offshore nem sempre é fácil. Às vezes o equipamento quebra, e a equipe precisa descobrir o problema rapidamente. Outras vezes, montam máquinas novas e lidam com problemas inesperados. Apesar dos desafios, a maioria dos trabalhadores aguarda ansiosamente para ir para casa e ver a família de novo.", "question": "What do most workers look forward to?", "options": ["Setting up new machines", "Going home to see their families", "Equipment breaking down"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000175', 'listening', 12, '{"audio_text": "The machine broke down yesterday, so the team had to figure out the problem and set it up again.", "question": "What broke down?", "options": ["The team", "The machine", "The schedule"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000175', 'dictation', 13, '{"audio_text": "The car broke down on the highway, and we had to deal with the problem.", "expected": "The car broke down on the highway, and we had to deal with the problem."}'),
('20000000-0000-0000-0000-000000000175', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu não consigo entender esse problema.''", "expected": "I cannot figure out this problem.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000175', 'typing', 15, '{"prompt_pt": "Traduza: ''Estou ansioso para te ver em breve.''", "expected": "I look forward to seeing you soon.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 5 (PHRASAL VERBS)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

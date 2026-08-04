-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 8: Conditionals (1st & 2nd)
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 7 (048_seed_b1_listening_skills.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 048_seed_b1_listening_skills.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 38: Conditionals
('30000000-0000-0000-0000-000000001111', 'if', 'ɪf', 'conjunction', 'se (condição)', 'If it rains, I will stay home.', 'Se chover, eu vou ficar em casa.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001112', 'unless', 'ənˈles', 'conjunction', 'a menos que', 'I will not go unless you come with me.', 'Eu não vou a menos que você venha comigo.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001113', 'will', 'wɪl', 'modal verb', 'vai (futuro, resultado provável)', 'If I have time, I will call you.', 'Se eu tiver tempo, eu vou te ligar.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001114', 'would', 'wʊd', 'modal verb', 'iria / faria (hipotético)', 'If I had more time, I would travel more.', 'Se eu tivesse mais tempo, eu viajaria mais.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001115', 'as soon as', 'æz suːn æz', 'phrase', 'assim que', 'I will call you as soon as I arrive.', 'Eu vou te ligar assim que eu chegar.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001116', 'when', 'wen', 'conjunction', 'quando', 'When I finish work, I will go home.', 'Quando eu terminar o trabalho, vou para casa.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001117', 'in case', 'ɪn keɪs', 'phrase', 'caso / no caso de', 'Take an umbrella in case it rains.', 'Leve um guarda-chuva caso chova.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001118', 'provided that', 'prəˈvaɪdɪd ðæt', 'phrase', 'desde que', 'You can go out provided that you finish your homework.', 'Você pode sair desde que termine o dever de casa.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001119', 'otherwise', 'ˈʌðərwaɪz', 'adverb', 'caso contrário', 'Hurry up, otherwise we will miss the bus.', 'Se apresse, caso contrário vamos perder o ônibus.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001120', 'imagine', 'ɪˈmædʒɪn', 'verb', 'imaginar', 'Imagine if you won the lottery.', 'Imagine se você ganhasse na loteria.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001121', 'suppose', 'səˈpoʊz', 'verb', 'supor', 'Suppose you lost your job, what would you do?', 'Suponha que você perdesse o emprego, o que você faria?', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001122', 'likely', 'ˈlaɪkli', 'adjective', 'provável', 'It is likely to rain tomorrow.', 'É provável que chova amanhã.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001123', 'possible', 'ˈpɑːsəbəl', 'adjective', 'possível', 'It is possible to finish today.', 'É possível terminar hoje.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001124', 'probably', 'ˈprɑːbəbli', 'adverb', 'provavelmente', 'I will probably go home early.', 'Eu provavelmente vou para casa cedo.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001125', 'definitely', 'ˈdefənətli', 'adverb', 'definitivamente', 'I will definitely call you tonight.', 'Eu vou definitivamente te ligar hoje à noite.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001126', 'certainly', 'ˈsɜːrtənli', 'adverb', 'certamente', 'She will certainly help you.', 'Ela certamente vai te ajudar.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001127', 'chance', 'tʃæns', 'noun', 'chance', 'If I had the chance, I would travel the world.', 'Se eu tivesse a chance, eu viajaria pelo mundo.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001128', 'opportunity', 'ˌɑːpərˈtuːnəti', 'noun', 'oportunidade', 'This is a great opportunity.', 'Essa é uma ótima oportunidade.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001129', 'decision', 'dɪˈsɪʒən', 'noun', 'decisão', 'If I were you, I would make a different decision.', 'Se eu fosse você, tomaria uma decisão diferente.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001130', 'choice', 'tʃɔɪs', 'noun', 'escolha', 'You always have a choice.', 'Você sempre tem uma escolha.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001131', 'situation', 'ˌsɪtʃuˈeɪʃən', 'noun', 'situação', 'If the situation changes, let me know.', 'Se a situação mudar, me avise.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001132', 'result', 'rɪˈzʌlt', 'noun', 'resultado', 'What would be the result?', 'Qual seria o resultado?', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001133', 'consequence', 'ˈkɑːnsəkwens', 'noun', 'consequência', 'Every choice has a consequence.', 'Toda escolha tem uma consequência.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001134', 'outcome', 'ˈaʊtkʌm', 'noun', 'desfecho / resultado', 'The outcome depends on your decision.', 'O desfecho depende da sua decisão.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001135', 'achieve', 'əˈtʃiːv', 'verb', 'alcançar / conquistar', 'If you work hard, you will achieve your goals.', 'Se você trabalhar duro, vai alcançar seus objetivos.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001136', 'succeed', 'səkˈsiːd', 'verb', 'ter sucesso / conseguir', 'If you practice every day, you will succeed.', 'Se você praticar todo dia, você vai conseguir.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001137', 'fail', 'feɪl', 'verb', 'falhar', 'If you do not prepare, you might fail.', 'Se você não se preparar, pode falhar.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001138', 'win', 'wɪn', 'verb', 'ganhar / vencer', 'If we play well, we will win.', 'Se jogarmos bem, vamos ganhar.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001139', 'lose', 'luːz', 'verb', 'perder', 'If we are not careful, we could lose.', 'Se não formos cuidadosos, podemos perder.', 'B1', array['conditionals']),
('30000000-0000-0000-0000-000000001140', 'afford', 'əˈfɔːrd', 'verb', 'ter condições de pagar / bancar', 'If I had more money, I would afford a bigger house.', 'Se eu tivesse mais dinheiro, eu bancaria uma casa maior.', 'B1', array['conditionals']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000038', 'B1', 'Conditionals', 'Fale sobre possibilidades reais e situações hipotéticas com o first e o second conditional.', 8, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000186', '10000000-0000-0000-0000-000000000038', 'First Conditional — Introduction', 1, 10),
('20000000-0000-0000-0000-000000000187', '10000000-0000-0000-0000-000000000038', 'First Conditional — Practice', 2, 10),
('20000000-0000-0000-0000-000000000188', '10000000-0000-0000-0000-000000000038', 'Second Conditional — Introduction', 3, 10),
('20000000-0000-0000-0000-000000000189', '10000000-0000-0000-0000-000000000038', 'Second Conditional — Practice', 4, 10),
('20000000-0000-0000-0000-000000000190', '10000000-0000-0000-0000-000000000038', 'First vs Second Conditional (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 38.1: First Conditional — Introduction ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000186', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001111", "show_image": false}'),
('20000000-0000-0000-0000-000000000186', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001113", "show_image": false}'),
('20000000-0000-0000-0000-000000000186', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001116", "show_image": false}'),
('20000000-0000-0000-0000-000000000186', 'multiple_choice', 4, '{"question": "Complete: If it ___ tomorrow, I will stay home.", "audio_text": null, "options": ["rains", "rained", "will rain"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000186', 'multiple_choice', 5, '{"question": "Complete: If I have time, I ___ call you.", "audio_text": null, "options": ["will", "would", "call"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000186', 'matching', 6, '{"pairs": [{"left": "if", "right": "se"}, {"left": "will", "right": "vai (futuro)"}, {"left": "when", "right": "quando"}, {"left": "as soon as", "right": "assim que"}, {"left": "unless", "right": "a menos que"}, {"left": "otherwise", "right": "caso contrário"}]}'),
('20000000-0000-0000-0000-000000000186', 'fill_blank', 7, '{"sentence": "___ I finish work, I will go home.", "options": ["When", "Unless", "Otherwise"], "correct": "When", "translation": "Quando eu terminar o trabalho, vou para casa."}'),
('20000000-0000-0000-0000-000000000186', 'fill_blank', 8, '{"sentence": "I will not go ___ you come with me.", "options": ["unless", "if", "when"], "correct": "unless", "translation": "Eu não vou a menos que você venha comigo."}'),
('20000000-0000-0000-0000-000000000186', 'word_order', 9, '{"words": ["If", "it", "rains", "I", "will", "stay", "home"], "correct_sentence": "If it rains I will stay home", "translation": "Se chover, eu vou ficar em casa"}'),
('20000000-0000-0000-0000-000000000186', 'word_order', 10, '{"words": ["I", "will", "call", "you", "as", "soon", "as", "I", "arrive"], "correct_sentence": "I will call you as soon as I arrive", "translation": "Eu vou te ligar assim que eu chegar"}'),
('20000000-0000-0000-0000-000000000186', 'reading', 11, '{"passage": "The first conditional describes real and possible situations in the future. We use ''if'' with the present simple, and ''will'' with the base verb: ''If it rains, I will stay home.'' We can also use ''when,'' ''as soon as,'' or ''unless'' instead of ''if,'' depending on the meaning.", "translation": "O first conditional descreve situações reais e possíveis no futuro. Usamos ''if'' com o presente simples, e ''will'' com o verbo base: ''Se chover, eu vou ficar em casa.'' Também podemos usar ''when,'' ''as soon as'' ou ''unless'' no lugar de ''if,'' dependendo do significado.", "question": "What tense do we use after ''if'' in the first conditional?", "options": ["Present simple", "Past simple", "Future"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000186', 'listening', 12, '{"audio_text": "If it rains tomorrow, I will stay home. But if it is sunny, I will go to the beach.", "question": "What will the speaker do if it is sunny?", "options": ["Stay home", "Go to the beach", "Call a friend"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000186', 'dictation', 13, '{"audio_text": "If it rains, I will stay home, and I will call you as soon as I arrive.", "expected": "If it rains, I will stay home, and I will call you as soon as I arrive."}'),
('20000000-0000-0000-0000-000000000186', 'typing', 14, '{"prompt_pt": "Traduza: ''Se chover, eu vou ficar em casa.''", "expected": "If it rains, I will stay home.", "ai_review": true}');

-- ---------- Lição 38.2: First Conditional — Practice ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000187', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001117", "show_image": false}'),
('20000000-0000-0000-0000-000000000187', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001122", "show_image": false}'),
('20000000-0000-0000-0000-000000000187', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001125", "show_image": false}'),
('20000000-0000-0000-0000-000000000187', 'multiple_choice', 4, '{"question": "Complete: Take an umbrella ___ it rains.", "audio_text": null, "options": ["in case", "unless", "provided that"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000187', 'multiple_choice', 5, '{"question": "Complete: You can go out ___ you finish your homework.", "audio_text": null, "options": ["provided that", "in case", "otherwise"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000187', 'matching', 6, '{"pairs": [{"left": "in case", "right": "caso"}, {"left": "provided that", "right": "desde que"}, {"left": "likely", "right": "provável"}, {"left": "possible", "right": "possível"}, {"left": "probably", "right": "provavelmente"}, {"left": "definitely", "right": "definitivamente"}]}'),
('20000000-0000-0000-0000-000000000187', 'fill_blank', 7, '{"sentence": "It is ___ to rain tomorrow.", "options": ["likely", "possible", "definitely"], "correct": "likely", "translation": "É provável que chova amanhã."}'),
('20000000-0000-0000-0000-000000000187', 'fill_blank', 8, '{"sentence": "I will ___ call you tonight.", "options": ["definitely", "likely", "possible"], "correct": "definitely", "translation": "Eu vou definitivamente te ligar hoje à noite."}'),
('20000000-0000-0000-0000-000000000187', 'word_order', 9, '{"words": ["You", "can", "go", "out", "provided", "that", "you", "finish", "your", "homework"], "correct_sentence": "You can go out provided that you finish your homework", "translation": "Você pode sair desde que termine o dever de casa"}'),
('20000000-0000-0000-0000-000000000187', 'word_order', 10, '{"words": ["Take", "an", "umbrella", "in", "case", "it", "rains"], "correct_sentence": "Take an umbrella in case it rains", "translation": "Leve um guarda-chuva caso chova"}'),
('20000000-0000-0000-0000-000000000187', 'reading', 11, '{"passage": "When we plan for the future, we often think about possibilities. We say ''take an umbrella in case it rains'' to prepare for something that might happen. We use ''provided that'' to set a condition, like ''you can go out provided that you finish your homework.'' Words like ''likely,'' ''possible,'' and ''definitely'' help us express how sure we are.", "translation": "Quando planejamos o futuro, geralmente pensamos em possibilidades. Dizemos ''leve um guarda-chuva caso chova'' para se preparar para algo que pode acontecer. Usamos ''provided that'' para colocar uma condição, como ''você pode sair desde que termine o dever de casa.'' Palavras como ''likely,'' ''possible'' e ''definitely'' nos ajudam a expressar o quão certos estamos.", "question": "What does ''in case'' help us do?", "options": ["Express certainty", "Prepare for something that might happen", "Refuse a request"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000187', 'listening', 12, '{"audio_text": "It is likely to rain this afternoon, so take an umbrella in case it starts.", "question": "Why should the listener take an umbrella?", "options": ["It is definitely going to rain", "In case it rains", "Because it is sunny"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000187', 'dictation', 13, '{"audio_text": "It is likely to rain, so take an umbrella in case it starts.", "expected": "It is likely to rain, so take an umbrella in case it starts."}'),
('20000000-0000-0000-0000-000000000187', 'typing', 14, '{"prompt_pt": "Traduza: ''É possível terminar hoje.''", "expected": "It is possible to finish today.", "ai_review": true}');

-- ---------- Lição 38.3: Second Conditional — Introduction ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000188', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001114", "show_image": false}'),
('20000000-0000-0000-0000-000000000188', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001120", "show_image": false}'),
('20000000-0000-0000-0000-000000000188', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001127", "show_image": false}'),
('20000000-0000-0000-0000-000000000188', 'multiple_choice', 4, '{"question": "Complete: If I had more time, I ___ travel more.", "audio_text": null, "options": ["would", "will", "am"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000188', 'multiple_choice', 5, '{"question": "Complete: If I ___ the chance, I would travel the world.", "audio_text": null, "options": ["had", "have", "will have"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000188', 'matching', 6, '{"pairs": [{"left": "would", "right": "iria (hipotético)"}, {"left": "imagine", "right": "imaginar"}, {"left": "suppose", "right": "supor"}, {"left": "chance", "right": "chance"}, {"left": "opportunity", "right": "oportunidade"}, {"left": "decision", "right": "decisão"}]}'),
('20000000-0000-0000-0000-000000000188', 'fill_blank', 7, '{"sentence": "___ you won the lottery, what would you do?", "options": ["Imagine", "Would", "Chance"], "correct": "Imagine", "translation": "Imagine se você ganhasse na loteria, o que você faria?"}'),
('20000000-0000-0000-0000-000000000188', 'fill_blank', 8, '{"sentence": "If I were you, I would make a different ___.", "options": ["decision", "chance", "opportunity"], "correct": "decision", "translation": "Se eu fosse você, tomaria uma decisão diferente."}'),
('20000000-0000-0000-0000-000000000188', 'word_order', 9, '{"words": ["If", "I", "had", "more", "time", "I", "would", "travel", "more"], "correct_sentence": "If I had more time I would travel more", "translation": "Se eu tivesse mais tempo, eu viajaria mais"}'),
('20000000-0000-0000-0000-000000000188', 'word_order', 10, '{"words": ["Suppose", "you", "lost", "your", "job", "what", "would", "you", "do"], "correct_sentence": "Suppose you lost your job what would you do", "translation": "Suponha que você perdesse o emprego, o que você faria?"}'),
('20000000-0000-0000-0000-000000000188', 'reading', 11, '{"passage": "The second conditional describes imaginary or unlikely situations. We use ''if'' with the past simple, and ''would'' with the base verb: ''If I had more time, I would travel more.'' This is different from the first conditional because the situation is hypothetical, not a real possibility.", "translation": "O second conditional descreve situações imaginárias ou improváveis. Usamos ''if'' com o passado simples, e ''would'' com o verbo base: ''Se eu tivesse mais tempo, eu viajaria mais.'' Isso é diferente do first conditional porque a situação é hipotética, não uma possibilidade real.", "question": "What kind of situations does the second conditional describe?", "options": ["Real and possible", "Imaginary or unlikely", "Things that already happened"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000188', 'listening', 12, '{"audio_text": "Imagine if you won the lottery. What would you do with the money? I would probably travel the world.", "question": "What would the speaker do with lottery money?", "options": ["Save it", "Travel the world", "Buy a house"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000188', 'dictation', 13, '{"audio_text": "If I had more time, I would travel more, and I would take every opportunity.", "expected": "If I had more time, I would travel more, and I would take every opportunity."}'),
('20000000-0000-0000-0000-000000000188', 'typing', 14, '{"prompt_pt": "Traduza: ''Se eu tivesse a chance, eu viajaria pelo mundo.''", "expected": "If I had the chance, I would travel the world.", "ai_review": true}');

-- ---------- Lição 38.4: Second Conditional — Practice ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000189', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001130", "show_image": false}'),
('20000000-0000-0000-0000-000000000189', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001135", "show_image": false}'),
('20000000-0000-0000-0000-000000000189', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001140", "show_image": false}'),
('20000000-0000-0000-0000-000000000189', 'multiple_choice', 4, '{"question": "Complete: If I had more money, I ___ afford a bigger house.", "audio_text": null, "options": ["would", "will", "am"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000189', 'multiple_choice', 5, '{"question": "Complete: If you worked harder, you ___ achieve your goals.", "audio_text": null, "options": ["would", "will", "are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000189', 'matching', 6, '{"pairs": [{"left": "choice", "right": "escolha"}, {"left": "situation", "right": "situação"}, {"left": "achieve", "right": "alcançar"}, {"left": "succeed", "right": "ter sucesso"}, {"left": "fail", "right": "falhar"}, {"left": "afford", "right": "bancar"}]}'),
('20000000-0000-0000-0000-000000000189', 'fill_blank', 7, '{"sentence": "You always have a ___.", "options": ["choice", "situation", "chance"], "correct": "choice", "translation": "Você sempre tem uma escolha."}'),
('20000000-0000-0000-0000-000000000189', 'fill_blank', 8, '{"sentence": "If you practiced every day, you would ___.", "options": ["succeed", "fail", "afford"], "correct": "succeed", "translation": "Se você praticasse todo dia, você conseguiria."}'),
('20000000-0000-0000-0000-000000000189', 'word_order', 9, '{"words": ["If", "I", "had", "the", "chance", "I", "would", "achieve", "my", "goals"], "correct_sentence": "If I had the chance I would achieve my goals", "translation": "Se eu tivesse a chance, eu alcançaria meus objetivos"}'),
('20000000-0000-0000-0000-000000000189', 'word_order', 10, '{"words": ["If", "I", "had", "more", "money", "I", "would", "afford", "a", "bigger", "house"], "correct_sentence": "If I had more money I would afford a bigger house", "translation": "Se eu tivesse mais dinheiro, eu bancaria uma casa maior"}'),
('20000000-0000-0000-0000-000000000189', 'reading', 11, '{"passage": "If the situation were different, many people would make different choices. If she had more money, she would afford a better apartment. If he practiced more, he would achieve his dreams and succeed in his career. But if we do not try, we will probably fail.", "translation": "Se a situação fosse diferente, muitas pessoas fariam escolhas diferentes. Se ela tivesse mais dinheiro, ela bancaria um apartamento melhor. Se ele praticasse mais, alcançaria seus sonhos e teria sucesso na carreira. Mas se não tentarmos, provavelmente vamos falhar.", "question": "What would happen if the person practiced more, according to the text?", "options": ["They would fail", "They would achieve their dreams", "They would afford a house"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000189', 'listening', 12, '{"audio_text": "If I had more money, I would afford a bigger house. If I worked harder, I would probably succeed faster.", "question": "What would the speaker afford with more money?", "options": ["A car", "A bigger house", "A trip"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000189', 'dictation', 13, '{"audio_text": "If I had more money, I would afford a bigger house, and I would achieve my goals.", "expected": "If I had more money, I would afford a bigger house, and I would achieve my goals."}'),
('20000000-0000-0000-0000-000000000189', 'typing', 14, '{"prompt_pt": "Traduza: ''Você sempre tem uma escolha.''", "expected": "You always have a choice.", "ai_review": true}');

-- ---------- Lição 38.5: First vs Second Conditional (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000190', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001126", "show_image": false}'),
('20000000-0000-0000-0000-000000000190', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001133", "show_image": false}'),
('20000000-0000-0000-0000-000000000190', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001138", "show_image": false}'),
('20000000-0000-0000-0000-000000000190', 'multiple_choice', 4, '{"question": "Complete (real possibility): If we play well, we ___ win.", "audio_text": null, "options": ["will", "would", "are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000190', 'multiple_choice', 5, '{"question": "Complete (imaginary): If I ___ a bird, I would fly everywhere.", "audio_text": null, "options": ["were", "am", "will be"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000190', 'matching', 6, '{"pairs": [{"left": "certainly", "right": "certamente"}, {"left": "result", "right": "resultado"}, {"left": "consequence", "right": "consequência"}, {"left": "outcome", "right": "desfecho"}, {"left": "win", "right": "ganhar"}, {"left": "lose", "right": "perder"}]}'),
('20000000-0000-0000-0000-000000000190', 'fill_blank', 7, '{"sentence": "Every choice has a ___.", "options": ["consequence", "chance", "decision"], "correct": "consequence", "translation": "Toda escolha tem uma consequência."}'),
('20000000-0000-0000-0000-000000000190', 'fill_blank', 8, '{"sentence": "If we are not careful, we could ___.", "options": ["lose", "win", "achieve"], "correct": "lose", "translation": "Se não formos cuidadosos, podemos perder."}'),
('20000000-0000-0000-0000-000000000190', 'word_order', 9, '{"words": ["She", "will", "certainly", "help", "you"], "correct_sentence": "She will certainly help you", "translation": "Ela certamente vai te ajudar"}'),
('20000000-0000-0000-0000-000000000190', 'word_order', 10, '{"words": ["The", "outcome", "depends", "on", "your", "decision"], "correct_sentence": "The outcome depends on your decision", "translation": "O desfecho depende da sua decisão"}'),
('20000000-0000-0000-0000-000000000190', 'reading', 11, '{"passage": "The first conditional talks about real possibilities: ''If we play well, we will win.'' The second conditional talks about imaginary situations: ''If I were a bird, I would fly everywhere.'' Every choice has a consequence, and the outcome often depends on the decisions we make. Understanding both conditionals certainly helps you talk about the future and about hypothetical situations.", "translation": "O first conditional fala sobre possibilidades reais: ''Se jogarmos bem, vamos ganhar.'' O second conditional fala sobre situações imaginárias: ''Se eu fosse um pássaro, voaria por toda parte.'' Toda escolha tem uma consequência, e o desfecho geralmente depende das decisões que tomamos. Entender os dois conditionals certamente ajuda a falar sobre o futuro e sobre situações hipotéticas.", "question": "Which conditional talks about imaginary situations?", "options": ["The first conditional", "The second conditional", "Both equally"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000190', 'listening', 12, '{"audio_text": "If we practice hard, we will certainly win the game. But if I were the coach, I would change the strategy.", "question": "Which sentence is the second conditional?", "options": ["If we practice hard, we will win", "If I were the coach, I would change the strategy", "Both are the second conditional"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000190', 'dictation', 13, '{"audio_text": "If we play well, we will win, and every choice has a consequence.", "expected": "If we play well, we will win, and every choice has a consequence."}'),
('20000000-0000-0000-0000-000000000190', 'typing', 14, '{"prompt_pt": "Traduza: ''Se jogarmos bem, vamos ganhar.''", "expected": "If we play well, we will win.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000190', 'typing', 15, '{"prompt_pt": "Traduza: ''Qual seria o resultado?''", "expected": "What would be the result?", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 8 (CONDITIONALS)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

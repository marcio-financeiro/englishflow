-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1
-- 2 módulos, 10 lições, 60 palavras de vocabulário, ~70 exercícios
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Salve como supabase/migrations/002_seed_a1.sql no seu repositório.
-- 3. Aplique com: npx supabase db push
--    (ou peça ao Claude Code para aplicar via MCP do Supabase na Fase 1)
-- 4. Este arquivo só funciona DEPOIS da migration 001_initial_schema.sql
--    (precisa das tabelas modules, lessons, exercises, vocabulary já criadas).
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (60 palavras)
-- Cada linha vira um "card inteligente" no app: palavra, IPA (pronúncia),
-- classe gramatical, tradução, frase de exemplo em inglês e português.
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 1: Greetings & Introductions
('30000000-0000-0000-0000-000000000001', 'hello', 'həˈloʊ', 'interjection', 'olá', 'Hello! How are you?', 'Olá! Como você está?', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000002', 'goodbye', 'ɡʊdˈbaɪ', 'interjection', 'tchau', 'Goodbye! See you tomorrow.', 'Tchau! Até amanhã.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000003', 'good morning', 'ˌɡʊd ˈmɔːrnɪŋ', 'phrase', 'bom dia', 'Good morning, Anna!', 'Bom dia, Anna!', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000004', 'good afternoon', 'ˌɡʊd æfˈtɜːrnuːn', 'phrase', 'boa tarde', 'Good afternoon, everyone.', 'Boa tarde, pessoal.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000005', 'good evening', 'ˌɡʊd ˈiːvnɪŋ', 'phrase', 'boa noite (chegada)', 'Good evening, welcome.', 'Boa noite, bem-vindo.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000006', 'good night', 'ˌɡʊd ˈnaɪt', 'phrase', 'boa noite (despedida)', 'Good night, sleep well.', 'Boa noite, durma bem.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000007', 'please', 'pliːz', 'adverb', 'por favor', 'Close the door, please.', 'Feche a porta, por favor.', 'A1', array['politeness']),
('30000000-0000-0000-0000-000000000008', 'thank you', 'ˈθæŋk juː', 'phrase', 'obrigado(a)', 'Thank you very much.', 'Muito obrigado.', 'A1', array['politeness']),
('30000000-0000-0000-0000-000000000009', 'you''re welcome', 'jɔːr ˈwelkəm', 'phrase', 'de nada', 'You''re welcome!', 'De nada!', 'A1', array['politeness']),
('30000000-0000-0000-0000-000000000010', 'sorry', 'ˈsɒri', 'adjective', 'desculpe', 'I''m sorry, I''m late.', 'Desculpe, estou atrasado.', 'A1', array['politeness']),
('30000000-0000-0000-0000-000000000011', 'excuse me', 'ɪkˈskjuːz miː', 'phrase', 'com licença', 'Excuse me, where is the bank?', 'Com licença, onde fica o banco?', 'A1', array['politeness']),
('30000000-0000-0000-0000-000000000012', 'yes', 'jes', 'adverb', 'sim', 'Yes, I understand.', 'Sim, eu entendo.', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000013', 'no', 'noʊ', 'adverb', 'não', 'No, thank you.', 'Não, obrigado.', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000014', 'name', 'neɪm', 'noun', 'nome', 'What is your name?', 'Qual é o seu nome?', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000015', 'I', 'aɪ', 'pronoun', 'eu', 'I am a student.', 'Eu sou estudante.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000016', 'you', 'juː', 'pronoun', 'você', 'You are my friend.', 'Você é meu amigo.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000017', 'he', 'hiː', 'pronoun', 'ele', 'He is a teacher.', 'Ele é professor.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000018', 'she', 'ʃiː', 'pronoun', 'ela', 'She is from Brazil.', 'Ela é do Brasil.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000019', 'we', 'wiː', 'pronoun', 'nós', 'We are happy.', 'Nós estamos felizes.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000020', 'they', 'ðeɪ', 'pronoun', 'eles/elas', 'They are students.', 'Eles são estudantes.', 'A1', array['pronouns']),
('30000000-0000-0000-0000-000000000021', 'is', 'ɪz', 'verb', 'é / está', 'My name is Márcio.', 'Meu nome é Márcio.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000022', 'am', 'æm', 'verb', 'sou / estou', 'I am from Brazil.', 'Eu sou do Brasil.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000023', 'are', 'ɑːr', 'verb', 'é / são / está / estão', 'You are welcome.', 'Você é bem-vindo.', 'A1', array['grammar','to-be']),
('30000000-0000-0000-0000-000000000024', 'from', 'frɒm', 'preposition', 'de (origem)', 'I am from São Paulo.', 'Eu sou de São Paulo.', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000025', 'country', 'ˈkʌntri', 'noun', 'país', 'Brazil is a big country.', 'O Brasil é um país grande.', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000026', 'Brazil', 'brəˈzɪl', 'noun', 'Brasil', 'I live in Brazil.', 'Eu moro no Brasil.', 'A1', array['basics']),
('30000000-0000-0000-0000-000000000027', 'nice', 'naɪs', 'adjective', 'agradável', 'It''s nice to meet you.', 'É um prazer conhecer você.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000028', 'to meet', 'tuː miːt', 'verb', 'conhecer', 'I want to meet her.', 'Eu quero conhecer ela.', 'A1', array['greetings']),
('30000000-0000-0000-0000-000000000029', 'friend', 'frend', 'noun', 'amigo(a)', 'He is my best friend.', 'Ele é meu melhor amigo.', 'A1', array['people']),
('30000000-0000-0000-0000-000000000030', 'teacher', 'ˈtiːtʃər', 'noun', 'professor(a)', 'My teacher is very kind.', 'Minha professora é muito gentil.', 'A1', array['people']),
-- Módulo 2: Numbers, Colors & Family
('30000000-0000-0000-0000-000000000031', 'one', 'wʌn', 'number', 'um', 'I have one brother.', 'Eu tenho um irmão.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000032', 'two', 'tuː', 'number', 'dois', 'She has two cats.', 'Ela tem dois gatos.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000033', 'three', 'θriː', 'number', 'três', 'We are three friends.', 'Nós somos três amigos.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000034', 'four', 'fɔːr', 'number', 'quatro', 'There are four chairs.', 'Há quatro cadeiras.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000035', 'five', 'faɪv', 'number', 'cinco', 'I work five days a week.', 'Eu trabalho cinco dias por semana.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000036', 'six', 'sɪks', 'number', 'seis', 'The class starts at six.', 'A aula começa às seis.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000037', 'seven', 'ˈsevən', 'number', 'sete', 'She has seven books.', 'Ela tem sete livros.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000038', 'eight', 'eɪt', 'number', 'oito', 'I wake up at eight.', 'Eu acordo às oito.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000039', 'nine', 'naɪn', 'number', 'nove', 'Nine people are here.', 'Nove pessoas estão aqui.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000040', 'ten', 'ten', 'number', 'dez', 'Ten students are in the room.', 'Dez estudantes estão na sala.', 'A1', array['numbers']),
('30000000-0000-0000-0000-000000000041', 'red', 'red', 'adjective', 'vermelho', 'The car is red.', 'O carro é vermelho.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000042', 'blue', 'bluː', 'adjective', 'azul', 'The sky is blue.', 'O céu é azul.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000043', 'green', 'ɡriːn', 'adjective', 'verde', 'The grass is green.', 'A grama é verde.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000044', 'yellow', 'ˈjeloʊ', 'adjective', 'amarelo', 'The sun is yellow.', 'O sol é amarelo.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000045', 'black', 'blæk', 'adjective', 'preto', 'My shoes are black.', 'Meus sapatos são pretos.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000046', 'white', 'waɪt', 'adjective', 'branco', 'The wall is white.', 'A parede é branca.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000047', 'orange', 'ˈɒrɪndʒ', 'adjective', 'laranja', 'I like the color orange.', 'Eu gosto da cor laranja.', 'A1', array['colors']),
('30000000-0000-0000-0000-000000000048', 'family', 'ˈfæməli', 'noun', 'família', 'I love my family.', 'Eu amo minha família.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000049', 'mother', 'ˈmʌðər', 'noun', 'mãe', 'My mother is a doctor.', 'Minha mãe é médica.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000050', 'father', 'ˈfɑːðər', 'noun', 'pai', 'My father works offshore.', 'Meu pai trabalha offshore.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000051', 'sister', 'ˈsɪstər', 'noun', 'irmã', 'I have one sister.', 'Eu tenho uma irmã.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000052', 'brother', 'ˈbrʌðər', 'noun', 'irmão', 'My brother is older than me.', 'Meu irmão é mais velho que eu.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000053', 'son', 'sʌn', 'noun', 'filho', 'Their son is five years old.', 'O filho deles tem cinco anos.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000054', 'daughter', 'ˈdɔːtər', 'noun', 'filha', 'Her daughter is very smart.', 'A filha dela é muito inteligente.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000055', 'grandmother', 'ˈɡrænˌmʌðər', 'noun', 'avó', 'My grandmother cooks very well.', 'Minha avó cozinha muito bem.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000056', 'grandfather', 'ˈɡrænˌfɑːðər', 'noun', 'avô', 'My grandfather is eighty years old.', 'Meu avô tem oitenta anos.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000057', 'wife', 'waɪf', 'noun', 'esposa', 'His wife is a teacher.', 'A esposa dele é professora.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000058', 'husband', 'ˈhʌzbənd', 'noun', 'marido', 'Her husband works in Rio.', 'O marido dela trabalha no Rio.', 'A1', array['family']),
('30000000-0000-0000-0000-000000000059', 'old', 'oʊld', 'adjective', 'velho / idade', 'He is fifty years old.', 'Ele tem cinquenta anos.', 'A1', array['descriptions']),
('30000000-0000-0000-0000-000000000060', 'young', 'jʌŋ', 'adjective', 'jovem', 'She is very young.', 'Ela é muito jovem.', 'A1', array['descriptions']);


-- ============================================================================
-- PARTE 2 — MÓDULOS
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000001', 'A1', 'Greetings & Introductions', 'Aprenda a cumprimentar, se apresentar e falar de onde você é.', 1, true),
('10000000-0000-0000-0000-000000000002', 'A1', 'Numbers, Colors & Family', 'Números de 1 a 10, cores básicas e como falar sobre sua família.', 2, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5 por módulo)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
-- Módulo 1
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Hello & Goodbye', 1, 10),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'Please & Thank You', 2, 10),
('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', 'My Name Is...', 3, 10),
('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000001', 'Where Are You From?', 4, 10),
('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', 'Nice to Meet You (Revisão)', 5, 15),
-- Módulo 2
('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', 'Numbers 1-10', 1, 10),
('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000002', 'Colors', 2, 10),
('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000002', 'Family Members', 3, 10),
('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000002', 'My Family', 4, 10),
('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000002', 'All About Me (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- O campo "content" (jsonb) segue os formatos definidos no INSTRUCOES-CLAUDE-CODE
-- seção 4. Cada lição mistura tipos diferentes para não ficar repetitiva.
-- ============================================================================

-- ---------- Lição 1.1: Hello & Goodbye ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000001', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000001", "show_image": false}'),
('20000000-0000-0000-0000-000000000001', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000002", "show_image": false}'),
('20000000-0000-0000-0000-000000000001', 'multiple_choice', 3, '{"question": "How do you greet someone in the morning?", "audio_text": null, "options": ["Good night", "Good morning", "Goodbye", "Sorry"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000001', 'matching', 4, '{"pairs": [{"left": "Hello", "right": "Olá"}, {"left": "Goodbye", "right": "Tchau"}, {"left": "Good night", "right": "Boa noite"}, {"left": "Good morning", "right": "Bom dia"}]}'),
('20000000-0000-0000-0000-000000000001', 'fill_blank', 5, '{"sentence": "___ Anna! Nice to meet you.", "options": ["Hello", "Goodbye", "Sorry"], "correct": "Hello", "translation": "Olá Anna! Prazer em conhecê-la."}'),
('20000000-0000-0000-0000-000000000001', 'word_order', 6, '{"words": ["morning", "Good", "teacher"], "correct_sentence": "Good morning teacher", "translation": "Bom dia professor(a)"}'),
('20000000-0000-0000-0000-000000000001', 'listening', 7, '{"audio_text": "Good evening! Welcome to the class.", "question": "What time of day is it?", "options": ["Morning", "Evening", "Night"], "correct_index": 1}');

-- ---------- Lição 1.2: Please & Thank You ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000002', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000007", "show_image": false}'),
('20000000-0000-0000-0000-000000000002', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000008", "show_image": false}'),
('20000000-0000-0000-0000-000000000002', 'multiple_choice', 3, '{"question": "What do you say after someone helps you?", "audio_text": null, "options": ["Sorry", "Thank you", "No", "Excuse me"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000002', 'matching', 4, '{"pairs": [{"left": "Please", "right": "Por favor"}, {"left": "Thank you", "right": "Obrigado"}, {"left": "Sorry", "right": "Desculpe"}, {"left": "Yes", "right": "Sim"}]}'),
('20000000-0000-0000-0000-000000000002', 'fill_blank', 5, '{"sentence": "___ me, where is the bathroom?", "options": ["Excuse", "Please", "Sorry"], "correct": "Excuse", "translation": "Com licença, onde fica o banheiro?"}'),
('20000000-0000-0000-0000-000000000002', 'word_order', 6, '{"words": ["welcome", "You''re"], "correct_sentence": "You''re welcome", "translation": "De nada"}'),
('20000000-0000-0000-0000-000000000002', 'typing', 7, '{"prompt_pt": "Traduza: ''Desculpe, estou atrasado.''", "expected": "Sorry, I''m late.", "ai_review": true}');

-- ---------- Lição 1.3: My Name Is... ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000003', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000014", "show_image": false}'),
('20000000-0000-0000-0000-000000000003', 'multiple_choice', 2, '{"question": "Complete: My name ___ Márcio.", "audio_text": null, "options": ["am", "is", "are"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000003', 'fill_blank', 3, '{"sentence": "I ___ from Brazil.", "options": ["am", "is", "are"], "correct": "am", "translation": "Eu sou do Brasil."}'),
('20000000-0000-0000-0000-000000000003', 'word_order', 4, '{"words": ["name", "is", "My", "Anna"], "correct_sentence": "My name is Anna", "translation": "Meu nome é Anna"}'),
('20000000-0000-0000-0000-000000000003', 'matching', 5, '{"pairs": [{"left": "I", "right": "Eu"}, {"left": "You", "right": "Você"}, {"left": "name", "right": "nome"}, {"left": "am", "right": "sou / estou"}]}'),
('20000000-0000-0000-0000-000000000003', 'dictation', 6, '{"audio_text": "What is your name?", "expected": "What is your name?"}'),
('20000000-0000-0000-0000-000000000003', 'typing', 7, '{"prompt_pt": "Traduza: ''Eu sou o Márcio.''", "expected": "I am Márcio.", "ai_review": true}');

-- ---------- Lição 1.4: Where Are You From? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000004', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000024", "show_image": false}'),
('20000000-0000-0000-0000-000000000004', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000025", "show_image": false}'),
('20000000-0000-0000-0000-000000000004', 'multiple_choice', 3, '{"question": "Complete: She ___ from Brazil.", "audio_text": null, "options": ["is", "am", "are"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000004', 'fill_blank', 4, '{"sentence": "He ___ from Rio de Janeiro.", "options": ["is", "am", "are"], "correct": "is", "translation": "Ele é do Rio de Janeiro."}'),
('20000000-0000-0000-0000-000000000004', 'matching', 5, '{"pairs": [{"left": "country", "right": "país"}, {"left": "Brazil", "right": "Brasil"}, {"left": "he", "right": "ele"}, {"left": "she", "right": "ela"}]}'),
('20000000-0000-0000-0000-000000000004', 'word_order', 6, '{"words": ["from", "are", "You", "Brazil"], "correct_sentence": "You are from Brazil", "translation": "Você é do Brasil"}'),
('20000000-0000-0000-0000-000000000004', 'listening', 7, '{"audio_text": "Hello! My name is Anna. I am from Portugal.", "question": "Where is Anna from?", "options": ["Brazil", "Portugal", "Spain"], "correct_index": 1}');

-- ---------- Lição 1.5: Nice to Meet You (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000005', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000027", "show_image": false}'),
('20000000-0000-0000-0000-000000000005', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000029", "show_image": false}'),
('20000000-0000-0000-0000-000000000005', 'multiple_choice', 3, '{"question": "Complete: ___ to meet you!", "audio_text": null, "options": ["Nice", "Sorry", "Goodbye"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000005', 'matching', 4, '{"pairs": [{"left": "teacher", "right": "professor(a)"}, {"left": "friend", "right": "amigo(a)"}, {"left": "we", "right": "nós"}, {"left": "they", "right": "eles/elas"}]}'),
('20000000-0000-0000-0000-000000000005', 'fill_blank', 5, '{"sentence": "___ are students in this class.", "options": ["They", "He", "She"], "correct": "They", "translation": "Eles são estudantes nesta turma."}'),
('20000000-0000-0000-0000-000000000005', 'word_order', 6, '{"words": ["you", "meet", "to", "Nice"], "correct_sentence": "Nice to meet you", "translation": "Prazer em conhecê-lo(a)"}'),
('20000000-0000-0000-0000-000000000005', 'dictation', 7, '{"audio_text": "Nice to meet you. I am your teacher.", "expected": "Nice to meet you. I am your teacher."}'),
('20000000-0000-0000-0000-000000000005', 'typing', 8, '{"prompt_pt": "Traduza: ''Ele é meu amigo.''", "expected": "He is my friend.", "ai_review": true}');

-- ---------- Lição 2.1: Numbers 1-10 ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000006', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000031", "show_image": false}'),
('20000000-0000-0000-0000-000000000006', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000035", "show_image": false}'),
('20000000-0000-0000-0000-000000000006', 'multiple_choice', 3, '{"question": "What number is ''seven''?", "audio_text": null, "options": ["6", "7", "8", "9"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000006', 'matching', 4, '{"pairs": [{"left": "one", "right": "um"}, {"left": "two", "right": "dois"}, {"left": "three", "right": "três"}, {"left": "four", "right": "quatro"}]}'),
('20000000-0000-0000-0000-000000000006', 'fill_blank', 5, '{"sentence": "There are ___ days in a weekend.", "options": ["two", "five", "ten"], "correct": "two", "translation": "Há dois dias no fim de semana."}'),
('20000000-0000-0000-0000-000000000006', 'word_order', 6, '{"words": ["have", "sister", "one", "I"], "correct_sentence": "I have one sister", "translation": "Eu tenho uma irmã"}'),
('20000000-0000-0000-0000-000000000006', 'dictation', 7, '{"audio_text": "One, two, three, four, five.", "expected": "One, two, three, four, five."}'),
('20000000-0000-0000-0000-000000000006', 'listening', 8, '{"audio_text": "I wake up at eight and I have ten students in my class.", "question": "How many students does the teacher have?", "options": ["Eight", "Nine", "Ten"], "correct_index": 2}');

-- ---------- Lição 2.2: Colors ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000007', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000041", "show_image": false}'),
('20000000-0000-0000-0000-000000000007', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000042", "show_image": false}'),
('20000000-0000-0000-0000-000000000007', 'multiple_choice', 3, '{"question": "What color is the sky?", "audio_text": null, "options": ["Red", "Blue", "Black", "Yellow"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000007', 'matching', 4, '{"pairs": [{"left": "red", "right": "vermelho"}, {"left": "green", "right": "verde"}, {"left": "yellow", "right": "amarelo"}, {"left": "black", "right": "preto"}]}'),
('20000000-0000-0000-0000-000000000007', 'fill_blank', 5, '{"sentence": "The grass is ___.", "options": ["green", "orange", "white"], "correct": "green", "translation": "A grama é verde."}'),
('20000000-0000-0000-0000-000000000007', 'word_order', 6, '{"words": ["red", "car", "is", "The"], "correct_sentence": "The car is red", "translation": "O carro é vermelho"}'),
('20000000-0000-0000-0000-000000000007', 'listening', 7, '{"audio_text": "My favorite colors are blue and white.", "question": "What colors does the speaker like?", "options": ["Red and black", "Blue and white", "Green and yellow"], "correct_index": 1}');

-- ---------- Lição 2.3: Family Members ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000008', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000048", "show_image": false}'),
('20000000-0000-0000-0000-000000000008', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000049", "show_image": false}'),
('20000000-0000-0000-0000-000000000008', 'multiple_choice', 3, '{"question": "Who is your father''s son?", "audio_text": null, "options": ["Your brother", "Your sister", "Your mother"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000008', 'matching', 4, '{"pairs": [{"left": "mother", "right": "mãe"}, {"left": "father", "right": "pai"}, {"left": "sister", "right": "irmã"}, {"left": "brother", "right": "irmão"}]}'),
('20000000-0000-0000-0000-000000000008', 'fill_blank', 5, '{"sentence": "My ___ is a doctor.", "options": ["mother", "brother", "family"], "correct": "mother", "translation": "Minha mãe é médica."}'),
('20000000-0000-0000-0000-000000000008', 'word_order', 6, '{"words": ["family", "love", "my", "I"], "correct_sentence": "I love my family", "translation": "Eu amo minha família"}'),
('20000000-0000-0000-0000-000000000008', 'dictation', 7, '{"audio_text": "I have one brother and one sister.", "expected": "I have one brother and one sister."}'),
('20000000-0000-0000-0000-000000000008', 'typing', 8, '{"prompt_pt": "Traduza: ''Meu pai trabalha offshore.''", "expected": "My father works offshore.", "ai_review": true}');

-- ---------- Lição 2.4: My Family ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000009', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000053", "show_image": false}'),
('20000000-0000-0000-0000-000000000009', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000054", "show_image": false}'),
('20000000-0000-0000-0000-000000000009', 'multiple_choice', 3, '{"question": "What do you call your mother''s mother?", "audio_text": null, "options": ["Grandmother", "Grandfather", "Sister"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000009', 'matching', 4, '{"pairs": [{"left": "grandmother", "right": "avó"}, {"left": "grandfather", "right": "avô"}, {"left": "wife", "right": "esposa"}, {"left": "husband", "right": "marido"}]}'),
('20000000-0000-0000-0000-000000000009', 'fill_blank', 5, '{"sentence": "His ___ is a teacher.", "options": ["wife", "husband", "son"], "correct": "wife", "translation": "A esposa dele é professora."}'),
('20000000-0000-0000-0000-000000000009', 'word_order', 6, '{"words": ["works", "husband", "Rio", "in", "Her"], "correct_sentence": "Her husband works in Rio", "translation": "O marido dela trabalha no Rio"}'),
('20000000-0000-0000-0000-000000000009', 'listening', 7, '{"audio_text": "My grandmother is eighty years old and my grandfather is eighty-two.", "question": "Who is older?", "options": ["Grandmother", "Grandfather", "They are the same age"], "correct_index": 1}');

-- ---------- Lição 2.5: All About Me (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000010', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000059", "show_image": false}'),
('20000000-0000-0000-0000-000000000010', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000060", "show_image": false}'),
('20000000-0000-0000-0000-000000000010', 'multiple_choice', 3, '{"question": "Complete: My grandfather is very ___.", "audio_text": null, "options": ["young", "old", "nice"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000010', 'matching', 4, '{"pairs": [{"left": "old", "right": "velho"}, {"left": "young", "right": "jovem"}, {"left": "family", "right": "família"}, {"left": "friend", "right": "amigo"}]}'),
('20000000-0000-0000-0000-000000000010', 'fill_blank', 5, '{"sentence": "My sister is very ___. She is only two years old.", "options": ["young", "old", "blue"], "correct": "young", "translation": "Minha irmã é muito jovem. Ela tem só dois anos."}'),
('20000000-0000-0000-0000-000000000010', 'word_order', 6, '{"words": ["family", "is", "My", "small"], "correct_sentence": "My family is small", "translation": "Minha família é pequena"}'),
('20000000-0000-0000-0000-000000000010', 'dictation', 7, '{"audio_text": "My name is Márcio. I am from Brazil. I have one sister.", "expected": "My name is Márcio. I am from Brazil. I have one sister."}'),
('20000000-0000-0000-0000-000000000010', 'typing', 8, '{"prompt_pt": "Traduza: ''Minha família é pequena, mas eu amo eles.''", "expected": "My family is small, but I love them.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 60 vocabulário | 2 módulos | 10 lições | 71 exercícios
-- ============================================================================

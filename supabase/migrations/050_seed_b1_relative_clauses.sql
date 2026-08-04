-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 9: Relative Clauses (Introdução)
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 8 (049_seed_b1_conditionals.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 049_seed_b1_conditionals.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 39: Relative Clauses
('30000000-0000-0000-0000-000000001141', 'who', 'huː', 'pronoun', 'quem / que (pessoas)', 'The man who called is my boss.', 'O homem que ligou é meu chefe.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001142', 'which', 'wɪtʃ', 'pronoun', 'que / o qual (coisas)', 'The book which I bought is great.', 'O livro que eu comprei é ótimo.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001143', 'that', 'ðæt', 'pronoun', 'que (pessoas ou coisas, informal)', 'The car that I drive is old.', 'O carro que eu dirijo é velho.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001144', 'whose', 'huːz', 'pronoun', 'cujo / de quem', 'The woman whose car broke down called a mechanic.', 'A mulher cujo carro quebrou chamou um mecânico.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001145', 'where', 'wer', 'adverb', 'onde', 'This is the city where I was born.', 'Essa é a cidade onde eu nasci.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001146', 'whom', 'huːm', 'pronoun', 'quem (formal, objeto)', 'The manager to whom I spoke was very kind.', 'O gerente com quem eu falei foi muito gentil.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001147', 'person', 'ˈpɜːrsən', 'noun', 'pessoa', 'She is the person who helped me.', 'Ela é a pessoa que me ajudou.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001148', 'thing', 'θɪŋ', 'noun', 'coisa', 'That is the thing which I need.', 'Essa é a coisa que eu preciso.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001149', 'place', 'pleɪs', 'noun', 'lugar', 'This is the place where we met.', 'Esse é o lugar onde nos conhecemos.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001150', 'reason', 'ˈriːzən', 'noun', 'motivo / razão', 'That is the reason why she left.', 'Esse é o motivo pelo qual ela saiu.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001151', 'information', 'ˌɪnfərˈmeɪʃən', 'noun', 'informação', 'I need the information that you have.', 'Eu preciso da informação que você tem.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001152', 'item', 'ˈaɪtəm', 'noun', 'item', 'This is the item which I ordered.', 'Esse é o item que eu pedi.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001153', 'describe', 'dɪˈskraɪb', 'verb', 'descrever', 'Can you describe the person who called?', 'Você pode descrever a pessoa que ligou?', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001154', 'define', 'dɪˈfaɪn', 'verb', 'definir', 'Let me define what I mean.', 'Deixe-me definir o que eu quero dizer.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001155', 'identify', 'aɪˈdentəfaɪ', 'verb', 'identificar', 'Can you identify the man who stole the bag?', 'Você pode identificar o homem que roubou a bolsa?', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001156', 'connect', 'kəˈnekt', 'verb', 'conectar', 'This clause connects two ideas.', 'Essa oração conecta duas ideias.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001157', 'combine', 'kəmˈbaɪn', 'verb', 'combinar', 'We can combine these two sentences.', 'Podemos combinar essas duas frases.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001158', 'sentence', 'ˈsentəns', 'noun', 'frase / sentença', 'This sentence is very long.', 'Essa frase é muito longa.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001159', 'clause', 'klɔːz', 'noun', 'oração', 'A relative clause gives extra information.', 'Uma oração relativa dá informação extra.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001160', 'essential', 'ɪˈsenʃəl', 'adjective', 'essencial (informação necessária)', 'This information is essential to understand the sentence.', 'Essa informação é essencial para entender a frase.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001161', 'extra', 'ˈekstrə', 'adjective', 'extra (informação adicional)', 'This clause gives extra information.', 'Essa oração dá informação extra.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001162', 'comma', 'ˈkɑːmə', 'noun', 'vírgula', 'We use a comma before some relative clauses.', 'Usamos uma vírgula antes de algumas orações relativas.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001163', 'characteristic', 'ˌkærəktəˈrɪstɪk', 'noun', 'característica', 'Patience is an important characteristic.', 'Paciência é uma característica importante.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001164', 'detail', 'dɪˈteɪl', 'noun', 'detalhe', 'She remembers every detail.', 'Ela lembra de cada detalhe.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001165', 'fact', 'fækt', 'noun', 'fato', 'That is an important fact.', 'Esse é um fato importante.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001166', 'example', 'ɪɡˈzæmpəl', 'noun', 'exemplo', 'Can you give me an example?', 'Você pode me dar um exemplo?', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001167', 'colleague', 'ˈkɑːliːɡ', 'noun', 'colega de trabalho', 'She is the colleague who trained me.', 'Ela é a colega que me treinou.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001168', 'neighbor', 'ˈneɪbər', 'noun', 'vizinho', 'My neighbor, who is a doctor, helped me.', 'Meu vizinho, que é médico, me ajudou.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001169', 'company', 'ˈkʌmpəni', 'noun', 'empresa', 'The company where I work is growing.', 'A empresa onde eu trabalho está crescendo.', 'B1', array['relative-clauses']),
('30000000-0000-0000-0000-000000001170', 'moment', 'ˈmoʊmənt', 'noun', 'momento', 'I remember the moment when we met.', 'Eu lembro do momento em que nos conhecemos.', 'B1', array['relative-clauses']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000039', 'B1', 'Relative Clauses', 'Dê mais informação sobre pessoas, coisas e lugares usando who, which, that, whose e where.', 9, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000191', '10000000-0000-0000-0000-000000000039', 'Relative Clauses — Who & Which', 1, 10),
('20000000-0000-0000-0000-000000000192', '10000000-0000-0000-0000-000000000039', 'Relative Clauses — Whose & Where', 2, 10),
('20000000-0000-0000-0000-000000000193', '10000000-0000-0000-0000-000000000039', 'Relative Clauses — Defining vs Extra Information', 3, 10),
('20000000-0000-0000-0000-000000000194', '10000000-0000-0000-0000-000000000039', 'Relative Clauses — People & Places', 4, 10),
('20000000-0000-0000-0000-000000000195', '10000000-0000-0000-0000-000000000039', 'Relative Clauses (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 39.1: Relative Clauses — Who & Which ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000191', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001141", "show_image": false}'),
('20000000-0000-0000-0000-000000000191', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001142", "show_image": false}'),
('20000000-0000-0000-0000-000000000191', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001143", "show_image": false}'),
('20000000-0000-0000-0000-000000000191', 'multiple_choice', 4, '{"question": "Complete: The man ___ called is my boss.", "audio_text": null, "options": ["who", "which", "where"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000191', 'multiple_choice', 5, '{"question": "Complete: The book ___ I bought is great.", "audio_text": null, "options": ["which", "who", "whose"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000191', 'matching', 6, '{"pairs": [{"left": "who", "right": "quem"}, {"left": "which", "right": "que (coisas)"}, {"left": "that", "right": "que (informal)"}, {"left": "person", "right": "pessoa"}, {"left": "thing", "right": "coisa"}, {"left": "place", "right": "lugar"}]}'),
('20000000-0000-0000-0000-000000000191', 'fill_blank', 7, '{"sentence": "She is the ___ who helped me.", "options": ["person", "thing", "place"], "correct": "person", "translation": "Ela é a pessoa que me ajudou."}'),
('20000000-0000-0000-0000-000000000191', 'fill_blank', 8, '{"sentence": "That is the ___ which I need.", "options": ["thing", "person", "place"], "correct": "thing", "translation": "Essa é a coisa que eu preciso."}'),
('20000000-0000-0000-0000-000000000191', 'word_order', 9, '{"words": ["The", "man", "who", "called", "is", "my", "boss"], "correct_sentence": "The man who called is my boss", "translation": "O homem que ligou é meu chefe"}'),
('20000000-0000-0000-0000-000000000191', 'word_order', 10, '{"words": ["The", "book", "which", "I", "bought", "is", "great"], "correct_sentence": "The book which I bought is great", "translation": "O livro que eu comprei é ótimo"}'),
('20000000-0000-0000-0000-000000000191', 'reading', 11, '{"passage": "Relative clauses give more information about a noun. We use ''who'' for people, and ''which'' for things. For example: ''The man who called is my boss'' (a person) and ''The book which I bought is great'' (a thing). In informal English, ''that'' can replace both ''who'' and ''which.''", "translation": "Orações relativas dão mais informação sobre um substantivo. Usamos ''who'' para pessoas, e ''which'' para coisas. Por exemplo: ''O homem que ligou é meu chefe'' (uma pessoa) e ''O livro que eu comprei é ótimo'' (uma coisa). No inglês informal, ''that'' pode substituir tanto ''who'' quanto ''which.''", "question": "Which word do we use for people?", "options": ["Which", "Who", "Where"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000191', 'listening', 12, '{"audio_text": "The person who helped me was very kind. The thing which I need most is time.", "question": "What does the speaker need most?", "options": ["Money", "Time", "Help"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000191', 'dictation', 13, '{"audio_text": "The man who called is my boss, and the book which I bought is great.", "expected": "The man who called is my boss, and the book which I bought is great."}'),
('20000000-0000-0000-0000-000000000191', 'typing', 14, '{"prompt_pt": "Traduza: ''O carro que eu dirijo é velho.''", "expected": "The car that I drive is old.", "ai_review": true}');

-- ---------- Lição 39.2: Relative Clauses — Whose & Where ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000192', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001144", "show_image": false}'),
('20000000-0000-0000-0000-000000000192', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001145", "show_image": false}'),
('20000000-0000-0000-0000-000000000192', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001150", "show_image": false}'),
('20000000-0000-0000-0000-000000000192', 'multiple_choice', 4, '{"question": "Complete: This is the city ___ I was born.", "audio_text": null, "options": ["where", "which", "whose"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000192', 'multiple_choice', 5, '{"question": "Complete: The woman ___ car broke down called a mechanic.", "audio_text": null, "options": ["whose", "who", "which"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000192', 'matching', 6, '{"pairs": [{"left": "whose", "right": "cujo"}, {"left": "where", "right": "onde"}, {"left": "reason", "right": "motivo"}, {"left": "information", "right": "informação"}, {"left": "item", "right": "item"}, {"left": "describe", "right": "descrever"}]}'),
('20000000-0000-0000-0000-000000000192', 'fill_blank', 7, '{"sentence": "That is the ___ why she left.", "options": ["reason", "place", "item"], "correct": "reason", "translation": "Esse é o motivo pelo qual ela saiu."}'),
('20000000-0000-0000-0000-000000000192', 'fill_blank', 8, '{"sentence": "I need the ___ that you have.", "options": ["information", "reason", "item"], "correct": "information", "translation": "Eu preciso da informação que você tem."}'),
('20000000-0000-0000-0000-000000000192', 'word_order', 9, '{"words": ["This", "is", "the", "city", "where", "I", "was", "born"], "correct_sentence": "This is the city where I was born", "translation": "Essa é a cidade onde eu nasci"}'),
('20000000-0000-0000-0000-000000000192', 'word_order', 10, '{"words": ["The", "woman", "whose", "car", "broke", "down", "called", "a", "mechanic"], "correct_sentence": "The woman whose car broke down called a mechanic", "translation": "A mulher cujo carro quebrou chamou um mecânico"}'),
('20000000-0000-0000-0000-000000000192', 'reading', 11, '{"passage": "We use ''whose'' to show possession in a relative clause, like ''The woman whose car broke down called a mechanic.'' We use ''where'' for places, like ''This is the city where I was born.'' These words help us describe people and places with more detail.", "translation": "Usamos ''whose'' para mostrar posse em uma oração relativa, como ''A mulher cujo carro quebrou chamou um mecânico.'' Usamos ''where'' para lugares, como ''Essa é a cidade onde eu nasci.'' Essas palavras nos ajudam a descrever pessoas e lugares com mais detalhes.", "question": "What does ''whose'' show in a relative clause?", "options": ["Location", "Possession", "Time"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000192', 'listening', 12, '{"audio_text": "This is the city where I was born. My neighbor, whose house is next to mine, grew up here too.", "question": "Where was the speaker born?", "options": ["In this city", "In another country", "Near the neighbor''s house"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000192', 'dictation', 13, '{"audio_text": "This is the city where I was born, and I need the information that you have.", "expected": "This is the city where I was born, and I need the information that you have."}'),
('20000000-0000-0000-0000-000000000192', 'typing', 14, '{"prompt_pt": "Traduza: ''Você pode descrever a pessoa que ligou?''", "expected": "Can you describe the person who called?", "ai_review": true}');

-- ---------- Lição 39.3: Relative Clauses — Defining vs Extra Information ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000193', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001160", "show_image": false}'),
('20000000-0000-0000-0000-000000000193', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001161", "show_image": false}'),
('20000000-0000-0000-0000-000000000193', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001162", "show_image": false}'),
('20000000-0000-0000-0000-000000000193', 'multiple_choice', 4, '{"question": "Complete: A defining relative clause gives ___ information.", "audio_text": null, "options": ["essential", "extra", "no"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000193', 'multiple_choice', 5, '{"question": "Complete: A non-defining clause needs a ___ before it.", "audio_text": null, "options": ["comma", "period", "question mark"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000193', 'matching', 6, '{"pairs": [{"left": "essential", "right": "essencial"}, {"left": "extra", "right": "extra"}, {"left": "comma", "right": "vírgula"}, {"left": "define", "right": "definir"}, {"left": "identify", "right": "identificar"}, {"left": "connect", "right": "conectar"}]}'),
('20000000-0000-0000-0000-000000000193', 'fill_blank', 7, '{"sentence": "This clause gives ___ information, not necessary to understand the sentence.", "options": ["extra", "essential", "no"], "correct": "extra", "translation": "Essa oração dá informação extra."}'),
('20000000-0000-0000-0000-000000000193', 'fill_blank', 8, '{"sentence": "We use a ___ before some relative clauses.", "options": ["comma", "period", "colon"], "correct": "comma", "translation": "Usamos uma vírgula antes de algumas orações relativas."}'),
('20000000-0000-0000-0000-000000000193', 'word_order', 9, '{"words": ["This", "clause", "connects", "two", "ideas"], "correct_sentence": "This clause connects two ideas", "translation": "Essa oração conecta duas ideias"}'),
('20000000-0000-0000-0000-000000000193', 'word_order', 10, '{"words": ["We", "can", "combine", "these", "two", "sentences"], "correct_sentence": "We can combine these two sentences", "translation": "Podemos combinar essas duas frases"}'),
('20000000-0000-0000-0000-000000000193', 'reading', 11, '{"passage": "There are two types of relative clauses. Defining clauses give essential information, and we do not use a comma: ''The man who called is my boss.'' Non-defining clauses give extra information, and we use a comma: ''My neighbor, who is a doctor, helped me.'' Removing a non-defining clause does not change the main meaning of the sentence.", "translation": "Existem dois tipos de orações relativas. As definidoras dão informação essencial, e não usamos vírgula: ''O homem que ligou é meu chefe.'' As não definidoras dão informação extra, e usamos vírgula: ''Meu vizinho, que é médico, me ajudou.'' Remover uma oração não definidora não muda o significado principal da frase.", "question": "When do we use a comma with a relative clause?", "options": ["When the information is essential", "When the information is extra", "Never"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000193', 'listening', 12, '{"audio_text": "This information is essential to understand the sentence, but this other detail is just extra information.", "question": "What is described as extra?", "options": ["The essential information", "The other detail", "The whole sentence"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000193', 'dictation', 13, '{"audio_text": "This clause connects two ideas, and we can combine these two sentences.", "expected": "This clause connects two ideas, and we can combine these two sentences."}'),
('20000000-0000-0000-0000-000000000193', 'typing', 14, '{"prompt_pt": "Traduza: ''Essa informação é essencial para entender a frase.''", "expected": "This information is essential to understand the sentence.", "ai_review": true}');

-- ---------- Lição 39.4: Relative Clauses — People & Places ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000194', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001167", "show_image": false}'),
('20000000-0000-0000-0000-000000000194', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001168", "show_image": false}'),
('20000000-0000-0000-0000-000000000194', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001169", "show_image": false}'),
('20000000-0000-0000-0000-000000000194', 'multiple_choice', 4, '{"question": "Complete: She is the ___ who trained me.", "audio_text": null, "options": ["colleague", "company", "moment"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000194', 'multiple_choice', 5, '{"question": "Complete: My ___, who is a doctor, helped me.", "audio_text": null, "options": ["neighbor", "colleague", "company"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000194', 'matching', 6, '{"pairs": [{"left": "colleague", "right": "colega"}, {"left": "neighbor", "right": "vizinho"}, {"left": "company", "right": "empresa"}, {"left": "moment", "right": "momento"}, {"left": "combine", "right": "combinar"}, {"left": "sentence", "right": "frase"}]}'),
('20000000-0000-0000-0000-000000000194', 'fill_blank', 7, '{"sentence": "The ___ where I work is growing.", "options": ["company", "moment", "colleague"], "correct": "company", "translation": "A empresa onde eu trabalho está crescendo."}'),
('20000000-0000-0000-0000-000000000194', 'fill_blank', 8, '{"sentence": "I remember the ___ when we met.", "options": ["moment", "company", "reason"], "correct": "moment", "translation": "Eu lembro do momento em que nos conhecemos."}'),
('20000000-0000-0000-0000-000000000194', 'word_order', 9, '{"words": ["My", "neighbor", "who", "is", "a", "doctor", "helped", "me"], "correct_sentence": "My neighbor who is a doctor helped me", "translation": "Meu vizinho que é médico me ajudou"}'),
('20000000-0000-0000-0000-000000000194', 'word_order', 10, '{"words": ["The", "company", "where", "I", "work", "is", "growing"], "correct_sentence": "The company where I work is growing", "translation": "A empresa onde eu trabalho está crescendo"}'),
('20000000-0000-0000-0000-000000000194', 'reading', 11, '{"passage": "Relative clauses are useful when talking about people we know. ''She is the colleague who trained me'' describes a coworker. ''My neighbor, who is a doctor, helped me'' adds extra information about a neighbor. ''The company where I work is growing'' talks about a place. We often remember the moment when we first met someone important.", "translation": "Orações relativas são úteis para falar sobre pessoas que conhecemos. ''Ela é a colega que me treinou'' descreve uma colega de trabalho. ''Meu vizinho, que é médico, me ajudou'' adiciona informação extra sobre um vizinho. ''A empresa onde eu trabalho está crescendo'' fala sobre um lugar. Muitas vezes lembramos do momento em que conhecemos alguém importante.", "question": "What does ''My neighbor, who is a doctor, helped me'' add?", "options": ["Essential information", "Extra information", "No information"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000194', 'listening', 12, '{"audio_text": "The company where I work is growing fast. My colleague, who joined last year, is already a manager.", "question": "What happened to the colleague who joined last year?", "options": ["They left the company", "They became a manager", "They moved to another city"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000194', 'dictation', 13, '{"audio_text": "She is the colleague who trained me, and my neighbor helped me too.", "expected": "She is the colleague who trained me, and my neighbor helped me too."}'),
('20000000-0000-0000-0000-000000000194', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela é a colega que me treinou.''", "expected": "She is the colleague who trained me.", "ai_review": true}');

-- ---------- Lição 39.5: Relative Clauses (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000195', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001159", "show_image": false}'),
('20000000-0000-0000-0000-000000000195', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001163", "show_image": false}'),
('20000000-0000-0000-0000-000000000195', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001166", "show_image": false}'),
('20000000-0000-0000-0000-000000000195', 'multiple_choice', 4, '{"question": "Complete: A relative ___ gives extra information about a noun.", "audio_text": null, "options": ["clause", "comma", "fact"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000195', 'multiple_choice', 5, '{"question": "Complete: Patience is an important ___.", "audio_text": null, "options": ["characteristic", "detail", "fact"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000195', 'matching', 6, '{"pairs": [{"left": "clause", "right": "oração"}, {"left": "characteristic", "right": "característica"}, {"left": "detail", "right": "detalhe"}, {"left": "fact", "right": "fato"}, {"left": "example", "right": "exemplo"}, {"left": "whom", "right": "quem (formal)"}]}'),
('20000000-0000-0000-0000-000000000195', 'fill_blank', 7, '{"sentence": "She remembers every ___.", "options": ["detail", "fact", "example"], "correct": "detail", "translation": "Ela lembra de cada detalhe."}'),
('20000000-0000-0000-0000-000000000195', 'fill_blank', 8, '{"sentence": "Can you give me an ___?", "options": ["example", "fact", "detail"], "correct": "example", "translation": "Você pode me dar um exemplo?"}'),
('20000000-0000-0000-0000-000000000195', 'word_order', 9, '{"words": ["That", "is", "an", "important", "fact"], "correct_sentence": "That is an important fact", "translation": "Esse é um fato importante"}'),
('20000000-0000-0000-0000-000000000195', 'word_order', 10, '{"words": ["The", "manager", "to", "whom", "I", "spoke", "was", "very", "kind"], "correct_sentence": "The manager to whom I spoke was very kind", "translation": "O gerente com quem eu falei foi muito gentil"}'),
('20000000-0000-0000-0000-000000000195', 'reading', 11, '{"passage": "A relative clause is a part of a sentence that gives more information about a person, thing, or place, using words like who, which, that, whose, or where. For example, ''the man who called'' or ''the city where I was born.'' Every detail and every characteristic can be added using these clauses, which makes our sentences richer and more precise.", "translation": "Uma oração relativa é parte de uma frase que dá mais informação sobre uma pessoa, coisa ou lugar, usando palavras como who, which, that, whose ou where. Por exemplo, ''o homem que ligou'' ou ''a cidade onde eu nasci.'' Todo detalhe e toda característica podem ser adicionados usando essas orações, o que deixa nossas frases mais ricas e precisas.", "question": "What can relative clauses add to a sentence?", "options": ["Nothing important", "Details and characteristics", "Only questions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000195', 'listening', 12, '{"audio_text": "The manager to whom I spoke was very kind, and she gave me a good example of a relative clause.", "question": "What did the manager give the speaker?", "options": ["A gift", "A good example", "A detail"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000195', 'dictation', 13, '{"audio_text": "That is an important fact, and the manager to whom I spoke was very kind.", "expected": "That is an important fact, and the manager to whom I spoke was very kind."}'),
('20000000-0000-0000-0000-000000000195', 'typing', 14, '{"prompt_pt": "Traduza: ''Você pode identificar o homem que roubou a bolsa?''", "expected": "Can you identify the man who stole the bag?", "ai_review": true}'),
('20000000-0000-0000-0000-000000000195', 'typing', 15, '{"prompt_pt": "Traduza: ''Essa é a cidade onde eu nasci.''", "expected": "This is the city where I was born.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 9 (RELATIVE CLAUSES)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

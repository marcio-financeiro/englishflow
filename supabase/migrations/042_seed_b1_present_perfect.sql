-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 1: Present Perfect
-- 1 módulo, 5 lições, 30 palavras de vocabulário, ~71 exercícios
-- Abre o nível B1. Continua a numeração dos IDs do seed A2 (036_seed_a2_technology_internet.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 001_initial_schema.sql
--    e da 039_reading_exercise_type.sql (tipo de exercício 'reading').
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 31: Present Perfect
('30000000-0000-0000-0000-000000000901', 'have', 'hæv', 'auxiliary verb', 'ter (auxiliar do present perfect)', 'I have finished my work.', 'Eu terminei meu trabalho.', 'B1', array['present-perfect']),
('30000000-0000-0000-0000-000000000902', 'has', 'hæz', 'auxiliary verb', 'tem (auxiliar do present perfect, 3ª pessoa)', 'She has traveled to five countries.', 'Ela já viajou para cinco países.', 'B1', array['present-perfect']),
('30000000-0000-0000-0000-000000000903', 'been', 'biːn', 'verb', 'sido / estado (particípio de be)', 'I have been to London twice.', 'Eu já estive em Londres duas vezes.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000904', 'gone', 'ɡɔːn', 'verb', 'ido (particípio de go)', 'He has gone to the store.', 'Ele foi à loja (e ainda não voltou).', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000905', 'done', 'dʌn', 'verb', 'feito (particípio de do)', 'I have done my homework.', 'Eu já fiz minha lição de casa.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000906', 'seen', 'siːn', 'verb', 'visto (particípio de see)', 'We have seen that movie before.', 'Nós já vimos esse filme antes.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000907', 'eaten', 'ˈiːtən', 'verb', 'comido (particípio de eat)', 'I have never eaten sushi.', 'Eu nunca comi sushi.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000908', 'taken', 'ˈteɪkən', 'verb', 'tomado / levado (particípio de take)', 'She has taken the exam twice.', 'Ela já fez a prova duas vezes.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000909', 'made', 'meɪd', 'verb', 'feito / criado (particípio de make)', 'They have made a big decision.', 'Eles tomaram uma grande decisão.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000910', 'written', 'ˈrɪtən', 'verb', 'escrito (particípio de write)', 'He has written three books.', 'Ele já escreveu três livros.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000911', 'read', 'red', 'verb', 'lido (particípio de read, mesma grafia)', 'I have read this book already.', 'Eu já li esse livro.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000912', 'met', 'met', 'verb', 'conhecido / encontrado (particípio de meet)', 'We have met before.', 'Nós já nos conhecemos antes.', 'B1', array['present-perfect', 'irregular']),
('30000000-0000-0000-0000-000000000913', 'lived', 'lɪvd', 'verb', 'morado (particípio de live)', 'I have lived here for ten years.', 'Eu moro aqui há dez anos.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000914', 'worked', 'wɜːrkt', 'verb', 'trabalhado (particípio de work)', 'She has worked offshore for years.', 'Ela trabalha offshore há anos.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000915', 'traveled', 'ˈtrævəld', 'verb', 'viajado (particípio de travel)', 'They have traveled to many countries.', 'Eles já viajaram para muitos países.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000916', 'visited', 'ˈvɪzɪtɪd', 'verb', 'visitado (particípio de visit)', 'I have visited Paris twice.', 'Eu já visitei Paris duas vezes.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000917', 'finished', 'ˈfɪnɪʃt', 'verb', 'terminado (particípio de finish)', 'He has just finished his shift.', 'Ele acabou de terminar seu turno.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000918', 'started', 'ˈstɑːrtɪd', 'verb', 'começado (particípio de start)', 'We have already started the project.', 'Nós já começamos o projeto.', 'B1', array['present-perfect', 'regular']),
('30000000-0000-0000-0000-000000000919', 'ever', 'ˈevər', 'adverb', 'já (em algum momento, em perguntas)', 'Have you ever been to Japan?', 'Você já esteve no Japão alguma vez?', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000920', 'never', 'ˈnevər', 'adverb', 'nunca', 'I have never seen snow.', 'Eu nunca vi neve.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000921', 'already', 'ɔːlˈredi', 'adverb', 'já', 'She has already left.', 'Ela já saiu.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000922', 'yet', 'jet', 'adverb', 'ainda (negativas / perguntas)', 'I haven''t finished yet.', 'Eu ainda não terminei.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000923', 'just', 'dʒʌst', 'adverb', 'acabou de', 'We have just arrived.', 'Nós acabamos de chegar.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000924', 'since', 'sɪns', 'preposition', 'desde', 'I have worked here since 2020.', 'Eu trabalho aqui desde 2020.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000925', 'for', 'fɔːr', 'preposition', 'por / há (duração)', 'She has lived in Brazil for ten years.', 'Ela mora no Brasil há dez anos.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000926', 'experience', 'ɪkˈspɪriəns', 'noun', 'experiência', 'It was an amazing experience.', 'Foi uma experiência incrível.', 'B1', array['life-experiences']),
('30000000-0000-0000-0000-000000000927', 'achievement', 'əˈtʃiːvmənt', 'noun', 'conquista', 'Graduating was a big achievement.', 'Se formar foi uma grande conquista.', 'B1', array['life-experiences']),
('30000000-0000-0000-0000-000000000928', 'so far', 'soʊ fɑːr', 'phrase', 'até agora', 'So far, everything has been great.', 'Até agora, tudo tem sido ótimo.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000929', 'recently', 'ˈriːsəntli', 'adverb', 'recentemente', 'I have recently changed jobs.', 'Eu mudei de emprego recentemente.', 'B1', array['present-perfect', 'time']),
('30000000-0000-0000-0000-000000000930', 'lately', 'ˈleɪtli', 'adverb', 'ultimamente', 'Have you traveled much lately?', 'Você tem viajado muito ultimamente?', 'B1', array['present-perfect', 'time']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000031', 'B1', 'Present Perfect', 'Fale sobre experiências de vida e ações recentes usando o present perfect.', 1, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000151', '10000000-0000-0000-0000-000000000031', 'Present Perfect — Introduction', 1, 10),
('20000000-0000-0000-0000-000000000152', '10000000-0000-0000-0000-000000000031', 'Already, Yet & Just', 2, 10),
('20000000-0000-0000-0000-000000000153', '10000000-0000-0000-0000-000000000031', 'Present Perfect vs Past Simple', 3, 10),
('20000000-0000-0000-0000-000000000154', '10000000-0000-0000-0000-000000000031', 'For & Since', 4, 10),
('20000000-0000-0000-0000-000000000155', '10000000-0000-0000-0000-000000000031', 'Life Experiences (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 31.1: Present Perfect — Introduction ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000151', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000901", "show_image": false}'),
('20000000-0000-0000-0000-000000000151', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000903", "show_image": false}'),
('20000000-0000-0000-0000-000000000151', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000904", "show_image": false}'),
('20000000-0000-0000-0000-000000000151', 'multiple_choice', 4, '{"question": "Complete: I ___ been to Canada.", "audio_text": null, "options": ["have", "has", "had"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000151', 'multiple_choice', 5, '{"question": "Complete: She ___ never tried sushi.", "audio_text": null, "options": ["have", "has", "had"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000151', 'matching', 6, '{"pairs": [{"left": "have", "right": "ter (auxiliar)"}, {"left": "has", "right": "tem (auxiliar)"}, {"left": "been", "right": "sido / estado"}, {"left": "gone", "right": "ido"}]}'),
('20000000-0000-0000-0000-000000000151', 'fill_blank', 7, '{"sentence": "Have you ___ been to Japan?", "options": ["ever", "never", "yet"], "correct": "ever", "translation": "Você já esteve no Japão alguma vez?"}'),
('20000000-0000-0000-0000-000000000151', 'fill_blank', 8, '{"sentence": "I have ___ seen snow.", "options": ["ever", "never", "just"], "correct": "never", "translation": "Eu nunca vi neve."}'),
('20000000-0000-0000-0000-000000000151', 'word_order', 9, '{"words": ["been", "have", "to", "London", "I"], "correct_sentence": "I have been to London", "translation": "Eu já estive em Londres"}'),
('20000000-0000-0000-0000-000000000151', 'word_order', 10, '{"words": ["gone", "has", "store", "the", "to", "He"], "correct_sentence": "He has gone to the store", "translation": "Ele foi à loja"}'),
('20000000-0000-0000-0000-000000000151', 'reading', 11, '{"passage": "Maria has traveled a lot in her life. She has been to Portugal, Spain, and Italy. She has never been to Asia, but she wants to go to Japan someday. Last year, she went to Italy for two weeks.", "translation": "Maria viajou muito na vida. Ela já esteve em Portugal, Espanha e Itália. Ela nunca esteve na Ásia, mas quer ir ao Japão algum dia. Ano passado, ela foi para a Itália por duas semanas.", "question": "Where has Maria never been?", "options": ["Europe", "Asia", "Portugal"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000151', 'listening', 12, '{"audio_text": "I have been to three countries this year. I have never been to Africa, but I have already visited most of South America.", "question": "How many continents has the speaker never visited?", "options": ["One", "Two", "Three"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000151', 'dictation', 13, '{"audio_text": "I have been to Canada, but I have never been to Japan.", "expected": "I have been to Canada, but I have never been to Japan."}'),
('20000000-0000-0000-0000-000000000151', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela nunca comeu sushi.''", "expected": "She has never eaten sushi.", "ai_review": true}');

-- ---------- Lição 31.2: Already, Yet & Just ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000152', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000921", "show_image": false}'),
('20000000-0000-0000-0000-000000000152', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000922", "show_image": false}'),
('20000000-0000-0000-0000-000000000152', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000923", "show_image": false}'),
('20000000-0000-0000-0000-000000000152', 'multiple_choice', 4, '{"question": "Complete: She has ___ finished her homework.", "audio_text": null, "options": ["already", "yet", "never"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000152', 'multiple_choice', 5, '{"question": "Complete: I haven''t done it ___.", "audio_text": null, "options": ["already", "just", "yet"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000152', 'matching', 6, '{"pairs": [{"left": "already", "right": "já"}, {"left": "yet", "right": "ainda"}, {"left": "just", "right": "acabou de"}, {"left": "done", "right": "feito"}]}'),
('20000000-0000-0000-0000-000000000152', 'fill_blank', 7, '{"sentence": "We have ___ arrived.", "options": ["just", "yet", "never"], "correct": "just", "translation": "Nós acabamos de chegar."}'),
('20000000-0000-0000-0000-000000000152', 'fill_blank', 8, '{"sentence": "Has he finished his shift ___?", "options": ["yet", "already", "never"], "correct": "yet", "translation": "Ele já terminou o turno?"}'),
('20000000-0000-0000-0000-000000000152', 'word_order', 9, '{"words": ["already", "She", "left", "has"], "correct_sentence": "She has already left", "translation": "Ela já saiu"}'),
('20000000-0000-0000-0000-000000000152', 'word_order', 10, '{"words": ["arrived", "have", "just", "We"], "correct_sentence": "We have just arrived", "translation": "Nós acabamos de chegar"}'),
('20000000-0000-0000-0000-000000000152', 'reading', 11, '{"passage": "Carlos is very organized. He has already finished his report, and he has just sent it to his boss. His colleague hasn''t finished her part yet, so the team can''t submit the project.", "translation": "Carlos é muito organizado. Ele já terminou o relatório dele e acabou de enviá-lo para o chefe. Sua colega ainda não terminou a parte dela, então o time não pode entregar o projeto.", "question": "Has Carlos''s colleague finished her part?", "options": ["Yes, already", "No, not yet", "She just started"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000152', 'listening', 12, '{"audio_text": "We have already started the project, and I have just sent the first draft. We haven''t finished it yet, though.", "question": "What has the speaker just done?", "options": ["Finished the project", "Sent the first draft", "Started a new project"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000152', 'dictation', 13, '{"audio_text": "I have already started the project, but I haven''t finished it yet.", "expected": "I have already started the project, but I haven''t finished it yet."}'),
('20000000-0000-0000-0000-000000000152', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele acabou de terminar o turno.''", "expected": "He has just finished his shift.", "ai_review": true}');

-- ---------- Lição 31.3: Present Perfect vs Past Simple ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000153', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000912", "show_image": false}'),
('20000000-0000-0000-0000-000000000153', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000926", "show_image": false}'),
('20000000-0000-0000-0000-000000000153', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000927", "show_image": false}'),
('20000000-0000-0000-0000-000000000153', 'multiple_choice', 4, '{"question": "Complete: I ___ him yesterday.", "audio_text": null, "options": ["have met", "met", "meet"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000153', 'multiple_choice', 5, '{"question": "Complete: I ___ him before, but I don''t remember when.", "audio_text": null, "options": ["met", "have met", "meet"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000153', 'matching', 6, '{"pairs": [{"left": "met", "right": "conheceu"}, {"left": "read", "right": "leu"}, {"left": "written", "right": "escrito"}, {"left": "lived", "right": "morou"}, {"left": "experience", "right": "experiência"}, {"left": "achievement", "right": "conquista"}]}'),
('20000000-0000-0000-0000-000000000153', 'fill_blank', 7, '{"sentence": "She ___ Paris last year.", "options": ["visited", "has visited", "visits"], "correct": "visited", "translation": "Ela visitou Paris ano passado."}'),
('20000000-0000-0000-0000-000000000153', 'fill_blank', 8, '{"sentence": "She ___ Paris three times.", "options": ["visited", "has visited", "visits"], "correct": "has visited", "translation": "Ela já visitou Paris três vezes."}'),
('20000000-0000-0000-0000-000000000153', 'word_order', 9, '{"words": ["book", "this", "have", "already", "read", "I"], "correct_sentence": "I have already read this book", "translation": "Eu já li esse livro"}'),
('20000000-0000-0000-0000-000000000153', 'word_order', 10, '{"words": ["three", "written", "has", "books", "He"], "correct_sentence": "He has written three books", "translation": "Ele já escreveu três livros"}'),
('20000000-0000-0000-0000-000000000153', 'reading', 11, '{"passage": "Ana met her best friend, Julia, five years ago. They have been friends ever since. Last month, they traveled to Rio together, and it was an amazing experience. Ana has never had a friend like Julia before.", "translation": "Ana conheceu sua melhor amiga, Julia, há cinco anos. Elas são amigas desde então. Mês passado, viajaram juntas para o Rio, e foi uma experiência incrível. Ana nunca teve uma amiga como Julia antes.", "question": "When did Ana meet Julia?", "options": ["Five years ago", "Last month", "She has never met her"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000153', 'listening', 12, '{"audio_text": "I visited Portugal last year, but I have never been to Spain. Maybe I will go there next summer.", "question": "Has the speaker been to Spain?", "options": ["Yes, last year", "No, never", "Yes, many times"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000153', 'dictation', 13, '{"audio_text": "I met him last year, but I have never talked to him since.", "expected": "I met him last year, but I have never talked to him since."}'),
('20000000-0000-0000-0000-000000000153', 'typing', 14, '{"prompt_pt": "Traduza: ''Foi uma experiência incrível.''", "expected": "It was an amazing experience.", "ai_review": true}');

-- ---------- Lição 31.4: For & Since ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000154', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000924", "show_image": false}'),
('20000000-0000-0000-0000-000000000154', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000925", "show_image": false}'),
('20000000-0000-0000-0000-000000000154', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000928", "show_image": false}'),
('20000000-0000-0000-0000-000000000154', 'multiple_choice', 4, '{"question": "Complete: I have lived here ___ ten years.", "audio_text": null, "options": ["since", "for", "ago"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000154', 'multiple_choice', 5, '{"question": "Complete: She has worked here ___ 2020.", "audio_text": null, "options": ["since", "for", "ago"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000154', 'matching', 6, '{"pairs": [{"left": "for", "right": "por (duração)"}, {"left": "since", "right": "desde"}, {"left": "so far", "right": "até agora"}, {"left": "worked", "right": "trabalhado"}, {"left": "lived", "right": "morado"}, {"left": "traveled", "right": "viajado"}]}'),
('20000000-0000-0000-0000-000000000154', 'fill_blank', 7, '{"sentence": "We have traveled a lot ___ we got married.", "options": ["since", "for", "ago"], "correct": "since", "translation": "Nós viajamos muito desde que nos casamos."}'),
('20000000-0000-0000-0000-000000000154', 'fill_blank', 8, '{"sentence": "He has worked offshore ___ five years.", "options": ["since", "for", "ago"], "correct": "for", "translation": "Ele trabalha offshore há cinco anos."}'),
('20000000-0000-0000-0000-000000000154', 'word_order', 9, '{"words": ["years", "lived", "for", "have", "here", "ten", "I"], "correct_sentence": "I have lived here for ten years", "translation": "Eu moro aqui há dez anos"}'),
('20000000-0000-0000-0000-000000000154', 'word_order', 10, '{"words": ["2020", "worked", "has", "since", "here", "She"], "correct_sentence": "She has worked here since 2020", "translation": "Ela trabalha aqui desde 2020"}'),
('20000000-0000-0000-0000-000000000154', 'reading', 11, '{"passage": "Pedro has worked on the same oil platform for six years. He has lived in the same city since he was born. So far, he has had a great career, and he hopes to keep working there for many more years.", "translation": "Pedro trabalha na mesma plataforma de petróleo há seis anos. Ele mora na mesma cidade desde que nasceu. Até agora, teve uma ótima carreira, e espera continuar trabalhando lá por muitos mais anos.", "question": "How long has Pedro lived in the same city?", "options": ["For six years", "Since he was born", "Since last year"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000154', 'listening', 12, '{"audio_text": "She has studied English since 2019 and has practiced every day for the last three months.", "question": "Since when has she studied English?", "options": ["2019", "Three months ago", "Last year"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000154', 'dictation', 13, '{"audio_text": "So far, everything has been great since I moved here.", "expected": "So far, everything has been great since I moved here."}'),
('20000000-0000-0000-0000-000000000154', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela mora no Brasil há dez anos.''", "expected": "She has lived in Brazil for ten years.", "ai_review": true}');

-- ---------- Lição 31.5: Life Experiences (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000155', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000929", "show_image": false}'),
('20000000-0000-0000-0000-000000000155', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000930", "show_image": false}'),
('20000000-0000-0000-0000-000000000155', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000919", "show_image": false}'),
('20000000-0000-0000-0000-000000000155', 'multiple_choice', 4, '{"question": "Complete: Have you traveled much ___?", "audio_text": null, "options": ["lately", "yet", "never"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000155', 'multiple_choice', 5, '{"question": "Complete: I have ___ changed jobs.", "audio_text": null, "options": ["recently", "yet", "never"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000155', 'matching', 6, '{"pairs": [{"left": "recently", "right": "recentemente"}, {"left": "lately", "right": "ultimamente"}, {"left": "ever", "right": "já"}, {"left": "never", "right": "nunca"}, {"left": "already", "right": "já"}, {"left": "yet", "right": "ainda"}]}'),
('20000000-0000-0000-0000-000000000155', 'fill_blank', 7, '{"sentence": "Have you ___ been to Japan?", "options": ["ever", "never", "yet"], "correct": "ever", "translation": "Você já esteve no Japão alguma vez?"}'),
('20000000-0000-0000-0000-000000000155', 'fill_blank', 8, '{"sentence": "I haven''t finished ___.", "options": ["yet", "already", "ever"], "correct": "yet", "translation": "Eu ainda não terminei."}'),
('20000000-0000-0000-0000-000000000155', 'word_order', 9, '{"words": ["much", "you", "lately", "traveled", "Have"], "correct_sentence": "Have you traveled much lately", "translation": "Você tem viajado muito ultimamente?"}'),
('20000000-0000-0000-0000-000000000155', 'word_order', 10, '{"words": ["jobs", "recently", "changed", "have", "I"], "correct_sentence": "I have recently changed jobs", "translation": "Eu mudei de emprego recentemente"}'),
('20000000-0000-0000-0000-000000000155', 'reading', 11, '{"passage": "Life is full of experiences. I have lived in three countries, I have recently changed jobs, and I have never regretted any of my decisions. So far, everything has been great, and I am excited about what comes next.", "translation": "A vida é cheia de experiências. Eu já morei em três países, mudei de emprego recentemente, e nunca me arrependi de nenhuma das minhas decisões. Até agora, tudo tem sido ótimo, e estou animado com o que vem a seguir.", "question": "How does the speaker feel about their decisions?", "options": ["They regret them", "They have never regretted them", "They are unsure"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000155', 'listening', 12, '{"audio_text": "Have you traveled much lately? I have recently visited two new countries, and I have already planned my next trip.", "question": "What has the speaker recently done?", "options": ["Stayed home", "Visited two new countries", "Changed jobs"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000155', 'dictation', 13, '{"audio_text": "So far, I have lived in three countries and I have recently started a new job.", "expected": "So far, I have lived in three countries and I have recently started a new job."}'),
('20000000-0000-0000-0000-000000000155', 'typing', 14, '{"prompt_pt": "Traduza: ''Até agora, tudo tem sido ótimo.''", "expected": "So far, everything has been great.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000155', 'typing', 15, '{"prompt_pt": "Traduza: ''Ela já esteve em cinco países.''", "expected": "She has been to five countries.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 1 (PRESENT PERFECT)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

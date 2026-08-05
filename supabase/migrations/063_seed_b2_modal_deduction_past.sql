-- ============================================================
-- Migration 063: Conteúdo B2 — Módulo 2 "Modal Verbs of Deduction (Passado)"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos anteriores (042-062)
-- Tema: investigação/mistério (must have, can''t have, might have)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001531', 'deduction', '/dɪˈdʌkʃən/', 'noun', 'dedução', 'The detective made a brilliant deduction.', 'O detetive fez uma dedução brilhante.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001532', 'clue', '/kluː/', 'noun', 'pista', 'They found an important clue at the scene.', 'Eles encontraram uma pista importante na cena.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001533', 'suspect', '/ˈsʌspekt/', 'noun', 'suspeito', 'The police questioned the main suspect.', 'A polícia interrogou o principal suspeito.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001534', 'likely', '/ˈlaɪkli/', 'adjective', 'provável', 'It is likely that he left before midnight.', 'É provável que ele tenha saído antes da meia-noite.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001535', 'unlikely', '/ʌnˈlaɪkli/', 'adjective', 'improvável', 'It is unlikely that she knew about the plan.', 'É improvável que ela soubesse do plano.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001536', 'impossible', '/ɪmˈpɒsəbəl/', 'adjective', 'impossível', 'It is impossible for him to have been there.', 'É impossível que ele tenha estado lá.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001537', 'possible', '/ˈpɒsəbəl/', 'adjective', 'possível', 'It is possible that she saw something.', 'É possível que ela tenha visto algo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001538', 'certainly', '/ˈsɜːrtənli/', 'adverb', 'certamente', 'He certainly knew more than he said.', 'Ele certamente sabia mais do que disse.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001539', 'obviously', '/ˈɒbviəsli/', 'adverb', 'obviamente', 'She was obviously hiding something.', 'Ela obviamente estava escondendo algo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001540', 'undoubtedly', '/ʌnˈdaʊtɪdli/', 'adverb', 'sem dúvida', 'It was undoubtedly a difficult case.', 'Foi sem dúvida um caso difícil.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001541', 'seemingly', '/ˈsiːmɪŋli/', 'adverb', 'aparentemente', 'It was a seemingly perfect crime.', 'Foi um crime aparentemente perfeito.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001542', 'mistaken', '/mɪˈsteɪkən/', 'adjective', 'enganado', 'The witness might have been mistaken.', 'A testemunha pode ter se enganado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001543', 'accurate', '/ˈækjərət/', 'adjective', 'preciso, exato', 'Her description was very accurate.', 'A descrição dela foi muito precisa.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001544', 'inaccurate', '/ɪnˈækjərət/', 'adjective', 'impreciso', 'The first report was inaccurate.', 'O primeiro relatório foi impreciso.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001545', 'reasoning', '/ˈriːzənɪŋ/', 'noun', 'raciocínio', 'Her reasoning was clear and logical.', 'O raciocínio dela foi claro e lógico.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001546', 'verdict', '/ˈvɜːrdɪkt/', 'noun', 'veredito', 'The jury announced its verdict.', 'O júri anunciou seu veredito.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001547', 'proof', '/pruːf/', 'noun', 'prova', 'They needed more proof before arresting him.', 'Eles precisavam de mais provas antes de prendê-lo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001548', 'testimony', '/ˈtestɪmoʊni/', 'noun', 'testemunho', 'Her testimony changed the whole case.', 'O testemunho dela mudou todo o caso.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001549', 'witness', '/ˈwɪtnəs/', 'noun', 'testemunha', 'A witness saw the car leaving quickly.', 'Uma testemunha viu o carro saindo rapidamente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001550', 'alibi', '/ˈælɪbaɪ/', 'noun', 'álibi', 'He had a solid alibi for that night.', 'Ele tinha um álibi sólido para aquela noite.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001551', 'investigate', '/ɪnˈvestɪɡeɪt/', 'verb', 'investigar', 'The team started to investigate immediately.', 'A equipe começou a investigar imediatamente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001552', 'detective', '/dɪˈtektɪv/', 'noun', 'detetive', 'The detective examined every detail.', 'O detetive examinou cada detalhe.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001553', 'crime scene', '/kraɪm siːn/', 'noun', 'cena do crime', 'They isolated the crime scene quickly.', 'Eles isolaram a cena do crime rapidamente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001554', 'motive', '/ˈmoʊtɪv/', 'noun', 'motivo (de um crime)', 'The detective still couldn''t find a motive.', 'O detetive ainda não conseguia encontrar um motivo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001555', 'culprit', '/ˈkʌlprɪt/', 'noun', 'culpado (autor do crime)', 'The real culprit was never found.', 'O verdadeiro culpado nunca foi encontrado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001556', 'innocent', '/ˈɪnəsənt/', 'adjective', 'inocente', 'He always claimed to be innocent.', 'Ele sempre alegou ser inocente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001557', 'confess', '/kənˈfes/', 'verb', 'confessar', 'She finally decided to confess everything.', 'Ela finalmente decidiu confessar tudo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001558', 'deny', '/dɪˈnaɪ/', 'verb', 'negar', 'He continued to deny any involvement.', 'Ele continuou a negar qualquer envolvimento.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001559', 'guilty', '/ˈɡɪlti/', 'adjective', 'culpado', 'The jury found him guilty.', 'O júri o considerou culpado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001560', 'solve', '/sɒlv/', 'verb', 'resolver', 'It took months to solve the case.', 'Levou meses para resolver o caso.', 'B2', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000052', 'B2', 'Modal Verbs of Deduction (Passado)', 'Aprenda a fazer deduções sobre o passado com must have, can''t have e might have, num tema de investigação e mistério.', 2, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000256', '10000000-0000-0000-0000-000000000052', 'Dedução no passado — introdução', 1, 20),
('20000000-0000-0000-0000-000000000257', '10000000-0000-0000-0000-000000000052', 'Grau de certeza', 2, 20),
('20000000-0000-0000-0000-000000000258', '10000000-0000-0000-0000-000000000052', 'Provas e evidências', 3, 20),
('20000000-0000-0000-0000-000000000259', '10000000-0000-0000-0000-000000000052', 'Investigando um caso', 4, 20),
('20000000-0000-0000-0000-000000000260', '10000000-0000-0000-0000-000000000052', 'Revisão: resolvendo o mistério', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 256: Dedução no passado — introdução (deduction, clue, suspect, likely, unlikely, impossible)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000256', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001531", "show_image": false}'),
('20000000-0000-0000-0000-000000000256', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001532", "show_image": false}'),
('20000000-0000-0000-0000-000000000256', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001533", "show_image": false}'),
('20000000-0000-0000-0000-000000000256', 'multiple_choice', 4, '{"question": "The lights were off, so he ___ have been home.", "audio_text": null, "options": ["can''t", "must", "might"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000256', 'multiple_choice', 5, '{"question": "Her car was in the garage, so she ___ have gone out.", "audio_text": null, "options": ["must not", "must", "should"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000256', 'matching', 6, '{"pairs": [{"left": "deduction", "right": "dedução"}, {"left": "clue", "right": "pista"}, {"left": "suspect", "right": "suspeito"}, {"left": "likely", "right": "provável"}, {"left": "unlikely", "right": "improvável"}, {"left": "impossible", "right": "impossível"}]}'),
('20000000-0000-0000-0000-000000000256', 'fill_blank', 7, '{"sentence": "They found an important ___ at the scene.", "options": ["clue", "verdict", "motive"], "correct": "clue", "translation": "Eles encontraram uma pista importante na cena."}'),
('20000000-0000-0000-0000-000000000256', 'fill_blank', 8, '{"sentence": "It is ___ that he left before midnight.", "options": ["likely", "impossible", "guilty"], "correct": "likely", "translation": "É provável que ele tenha saído antes da meia-noite."}'),
('20000000-0000-0000-0000-000000000256', 'word_order', 9, '{"words": ["The", "detective", "made", "a", "brilliant", "deduction"], "correct_sentence": "The detective made a brilliant deduction", "translation": "O detetive fez uma dedução brilhante"}'),
('20000000-0000-0000-0000-000000000256', 'word_order', 10, '{"words": ["The", "police", "questioned", "the", "main", "suspect"], "correct_sentence": "The police questioned the main suspect", "translation": "A polícia interrogou o principal suspeito"}'),
('20000000-0000-0000-0000-000000000256', 'reading', 11, '{"passage": "When we are not sure what happened in the past, we use modal verbs to make a deduction. ''He must have left early'' means we are almost certain. ''He can''t have done it'' means we are almost certain it is impossible. ''He might have seen something'' means it is only possible.", "translation": "Quando não temos certeza do que aconteceu no passado, usamos verbos modais para fazer uma dedução. ''He must have left early'' significa que temos quase certeza. ''He can''t have done it'' significa que temos quase certeza de que é impossível. ''He might have seen something'' significa que é apenas possível.", "question": "What does ''can''t have'' express, according to the text?", "options": ["Strong possibility", "Almost certain impossibility", "A future plan"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000256', 'listening', 12, '{"audio_text": "The detective made a brilliant deduction. They found an important clue at the scene. The police questioned the main suspect.", "question": "What did they find at the scene, according to the audio?", "options": ["A witness", "An important clue", "A verdict"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000256', 'dictation', 13, '{"audio_text": "The detective made a brilliant deduction.", "expected": "The detective made a brilliant deduction."}'),
('20000000-0000-0000-0000-000000000256', 'typing', 14, '{"prompt_pt": "Traduza usando dedução no passado: ''Ele deve ter saído antes da meia-noite.''", "expected": "He must have left before midnight.", "ai_review": true}'),

-- Lição 257: Grau de certeza (possible, certainly, obviously, undoubtedly, seemingly, mistaken)
('20000000-0000-0000-0000-000000000257', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001537", "show_image": false}'),
('20000000-0000-0000-0000-000000000257', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001539", "show_image": false}'),
('20000000-0000-0000-0000-000000000257', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001542", "show_image": false}'),
('20000000-0000-0000-0000-000000000257', 'multiple_choice', 4, '{"question": "She was ___ hiding something.", "audio_text": null, "options": ["obviously", "possible", "mistaken"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000257', 'multiple_choice', 5, '{"question": "What does ''undoubtedly'' mean?", "audio_text": null, "options": ["Sem dúvida", "Talvez", "Impossível"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000257', 'matching', 6, '{"pairs": [{"left": "possible", "right": "possível"}, {"left": "certainly", "right": "certamente"}, {"left": "obviously", "right": "obviamente"}, {"left": "undoubtedly", "right": "sem dúvida"}, {"left": "seemingly", "right": "aparentemente"}, {"left": "mistaken", "right": "enganado"}]}'),
('20000000-0000-0000-0000-000000000257', 'fill_blank', 7, '{"sentence": "It was ___ a difficult case.", "options": ["undoubtedly", "mistaken", "unlikely"], "correct": "undoubtedly", "translation": "Foi sem dúvida um caso difícil."}'),
('20000000-0000-0000-0000-000000000257', 'fill_blank', 8, '{"sentence": "The witness might have been ___.", "options": ["mistaken", "certainly", "obviously"], "correct": "mistaken", "translation": "A testemunha pode ter se enganado."}'),
('20000000-0000-0000-0000-000000000257', 'word_order', 9, '{"words": ["He", "certainly", "knew", "more", "than", "he", "said"], "correct_sentence": "He certainly knew more than he said", "translation": "Ele certamente sabia mais do que disse"}'),
('20000000-0000-0000-0000-000000000257', 'word_order', 10, '{"words": ["It", "was", "a", "seemingly", "perfect", "crime"], "correct_sentence": "It was a seemingly perfect crime", "translation": "Foi um crime aparentemente perfeito"}'),
('20000000-0000-0000-0000-000000000257', 'reading', 11, '{"passage": "At first, it seemed like a seemingly perfect crime. The suspect was obviously nervous during questioning, and undoubtedly, he knew more than he admitted. However, the witness might have been mistaken about some details.", "translation": "No início, parecia um crime aparentemente perfeito. O suspeito estava obviamente nervoso durante o interrogatório, e sem dúvida, ele sabia mais do que admitiu. No entanto, a testemunha pode ter se enganado em alguns detalhes.", "question": "How did the suspect seem during questioning, according to the text?", "options": ["Calm", "Nervous", "Confident"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000257', 'listening', 12, '{"audio_text": "She was obviously hiding something. It was undoubtedly a difficult case. The witness might have been mistaken.", "question": "What was undoubtedly true, according to the audio?", "options": ["The case was easy", "It was a difficult case", "The witness was right"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000257', 'dictation', 13, '{"audio_text": "She was obviously hiding something.", "expected": "She was obviously hiding something."}'),
('20000000-0000-0000-0000-000000000257', 'typing', 14, '{"prompt_pt": "Traduza: ''A testemunha pode ter se enganado, mas ele obviamente estava mentindo.''", "expected": "The witness might have been mistaken, but he was obviously lying.", "ai_review": true}'),

-- Lição 258: Provas e evidências (accurate, inaccurate, reasoning, verdict, proof, testimony)
('20000000-0000-0000-0000-000000000258', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001543", "show_image": false}'),
('20000000-0000-0000-0000-000000000258', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001546", "show_image": false}'),
('20000000-0000-0000-0000-000000000258', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001547", "show_image": false}'),
('20000000-0000-0000-0000-000000000258', 'multiple_choice', 4, '{"question": "They needed more ___ before arresting him.", "audio_text": null, "options": ["proof", "reasoning", "verdict"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000258', 'multiple_choice', 5, '{"question": "What does ''testimony'' mean?", "audio_text": null, "options": ["Testemunho", "Veredito", "Prova"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000258', 'matching', 6, '{"pairs": [{"left": "accurate", "right": "preciso"}, {"left": "inaccurate", "right": "impreciso"}, {"left": "reasoning", "right": "raciocínio"}, {"left": "verdict", "right": "veredito"}, {"left": "proof", "right": "prova"}, {"left": "testimony", "right": "testemunho"}]}'),
('20000000-0000-0000-0000-000000000258', 'fill_blank', 7, '{"sentence": "Her description was very ___.", "options": ["accurate", "inaccurate", "guilty"], "correct": "accurate", "translation": "A descrição dela foi muito precisa."}'),
('20000000-0000-0000-0000-000000000258', 'fill_blank', 8, '{"sentence": "Her ___ changed the whole case.", "options": ["testimony", "proof", "reasoning"], "correct": "testimony", "translation": "O testemunho dela mudou todo o caso."}'),
('20000000-0000-0000-0000-000000000258', 'word_order', 9, '{"words": ["The", "jury", "announced", "its", "verdict"], "correct_sentence": "The jury announced its verdict", "translation": "O júri anunciou seu veredito"}'),
('20000000-0000-0000-0000-000000000258', 'word_order', 10, '{"words": ["Her", "reasoning", "was", "clear", "and", "logical"], "correct_sentence": "Her reasoning was clear and logical", "translation": "O raciocínio dela foi claro e lógico"}'),
('20000000-0000-0000-0000-000000000258', 'reading', 11, '{"passage": "The first report was inaccurate, but a new witness gave testimony that was much more accurate. Based on this new proof, the detective''s reasoning changed completely, and the jury finally reached a verdict.", "translation": "O primeiro relatório foi impreciso, mas uma nova testemunha deu um testemunho muito mais preciso. Com base nessa nova prova, o raciocínio do detetive mudou completamente, e o júri finalmente chegou a um veredito.", "question": "What changed the detective''s reasoning, according to the text?", "options": ["An inaccurate report", "New proof from testimony", "The first witness"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000258', 'listening', 12, '{"audio_text": "They needed more proof before arresting him. Her testimony changed the whole case. The jury announced its verdict.", "question": "What changed the whole case, according to the audio?", "options": ["The proof", "Her testimony", "The verdict"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000258', 'dictation', 13, '{"audio_text": "They needed more proof before arresting him.", "expected": "They needed more proof before arresting him."}'),
('20000000-0000-0000-0000-000000000258', 'typing', 14, '{"prompt_pt": "Traduza: ''O testemunho dela deve ter sido preciso, porque o veredito mudou.''", "expected": "Her testimony must have been accurate, because the verdict changed.", "ai_review": true}'),

-- Lição 259: Investigando um caso (witness, alibi, investigate, detective, crime scene, motive)
('20000000-0000-0000-0000-000000000259', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001549", "show_image": false}'),
('20000000-0000-0000-0000-000000000259', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001550", "show_image": false}'),
('20000000-0000-0000-0000-000000000259', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001552", "show_image": false}'),
('20000000-0000-0000-0000-000000000259', 'multiple_choice', 4, '{"question": "He had a solid ___ for that night.", "audio_text": null, "options": ["alibi", "motive", "verdict"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000259', 'multiple_choice', 5, '{"question": "What does ''motive'' mean in this context?", "audio_text": null, "options": ["Motivo do crime", "Testemunha", "Prova"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000259', 'matching', 6, '{"pairs": [{"left": "witness", "right": "testemunha"}, {"left": "alibi", "right": "álibi"}, {"left": "investigate", "right": "investigar"}, {"left": "detective", "right": "detetive"}, {"left": "crime scene", "right": "cena do crime"}, {"left": "motive", "right": "motivo"}]}'),
('20000000-0000-0000-0000-000000000259', 'fill_blank', 7, '{"sentence": "A ___ saw the car leaving quickly.", "options": ["witness", "detective", "motive"], "correct": "witness", "translation": "Uma testemunha viu o carro saindo rapidamente."}'),
('20000000-0000-0000-0000-000000000259', 'fill_blank', 8, '{"sentence": "They isolated the ___ quickly.", "options": ["crime scene", "alibi", "verdict"], "correct": "crime scene", "translation": "Eles isolaram a cena do crime rapidamente."}'),
('20000000-0000-0000-0000-000000000259', 'word_order', 9, '{"words": ["The", "team", "started", "to", "investigate", "immediately"], "correct_sentence": "The team started to investigate immediately", "translation": "A equipe começou a investigar imediatamente"}'),
('20000000-0000-0000-0000-000000000259', 'word_order', 10, '{"words": ["The", "detective", "examined", "every", "detail"], "correct_sentence": "The detective examined every detail", "translation": "O detetive examinou cada detalhe"}'),
('20000000-0000-0000-0000-000000000259', 'reading', 11, '{"passage": "As soon as they arrived, the detective began to investigate the crime scene. A witness described a suspicious car, but the main suspect had a solid alibi. Without a clear motive, the case remained unsolved for weeks.", "translation": "Assim que chegaram, o detetive começou a investigar a cena do crime. Uma testemunha descreveu um carro suspeito, mas o principal suspeito tinha um álibi sólido. Sem um motivo claro, o caso permaneceu sem solução por semanas.", "question": "Why did the case remain unsolved, according to the text?", "options": ["There was no witness", "There was no clear motive", "There was no crime scene"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000259', 'listening', 12, '{"audio_text": "The team started to investigate immediately. A witness saw the car leaving quickly. He had a solid alibi for that night.", "question": "What did the witness see, according to the audio?", "options": ["A detective", "The car leaving quickly", "The crime scene"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000259', 'dictation', 13, '{"audio_text": "The team started to investigate immediately.", "expected": "The team started to investigate immediately."}'),
('20000000-0000-0000-0000-000000000259', 'typing', 14, '{"prompt_pt": "Traduza: ''O suspeito deve ter mentido, porque o álibi dele não pode ser verdade.''", "expected": "The suspect must have lied, because his alibi can''t be true.", "ai_review": true}'),

-- Lição 260: Revisão + resolvendo o mistério (culprit, innocent, confess, deny, guilty, solve)
('20000000-0000-0000-0000-000000000260', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001555", "show_image": false}'),
('20000000-0000-0000-0000-000000000260', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001557", "show_image": false}'),
('20000000-0000-0000-0000-000000000260', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001559", "show_image": false}'),
('20000000-0000-0000-0000-000000000260', 'multiple_choice', 4, '{"question": "He always claimed to be ___.", "audio_text": null, "options": ["innocent", "guilty", "culprit"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000260', 'multiple_choice', 5, '{"question": "What does ''deny'' mean?", "audio_text": null, "options": ["Negar", "Confessar", "Resolver"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000260', 'matching', 6, '{"pairs": [{"left": "culprit", "right": "culpado (autor)"}, {"left": "innocent", "right": "inocente"}, {"left": "confess", "right": "confessar"}, {"left": "deny", "right": "negar"}, {"left": "guilty", "right": "culpado"}, {"left": "solve", "right": "resolver"}]}'),
('20000000-0000-0000-0000-000000000260', 'fill_blank', 7, '{"sentence": "She finally decided to ___ everything.", "options": ["confess", "deny", "solve"], "correct": "confess", "translation": "Ela finalmente decidiu confessar tudo."}'),
('20000000-0000-0000-0000-000000000260', 'fill_blank', 8, '{"sentence": "It took months to ___ the case.", "options": ["solve", "confess", "deny"], "correct": "solve", "translation": "Levou meses para resolver o caso."}'),
('20000000-0000-0000-0000-000000000260', 'word_order', 9, '{"words": ["The", "jury", "found", "him", "guilty"], "correct_sentence": "The jury found him guilty", "translation": "O júri o considerou culpado"}'),
('20000000-0000-0000-0000-000000000260', 'word_order', 10, '{"words": ["He", "continued", "to", "deny", "any", "involvement"], "correct_sentence": "He continued to deny any involvement", "translation": "Ele continuou a negar qualquer envolvimento"}'),
('20000000-0000-0000-0000-000000000260', 'reading', 11, '{"passage": "For a long time, the real culprit continued to deny any involvement, insisting he was innocent. However, new proof and an honest testimony finally convinced him to confess. In the end, the jury found him guilty, and the detective was able to solve the case.", "translation": "Por muito tempo, o verdadeiro culpado continuou a negar qualquer envolvimento, insistindo que era inocente. No entanto, novas provas e um testemunho honesto finalmente o convenceram a confessar. No fim, o júri o considerou culpado, e o detetive conseguiu resolver o caso.", "question": "What finally convinced him to confess, according to the text?", "options": ["A witness leaving", "New proof and testimony", "The alibi"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000260', 'listening', 12, '{"audio_text": "He always claimed to be innocent. She finally decided to confess everything. It took months to solve the case.", "question": "What did he always claim, according to the audio?", "options": ["To be guilty", "To be innocent", "To be the culprit"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000260', 'dictation', 13, '{"audio_text": "It took months to solve the case.", "expected": "It took months to solve the case."}'),
('20000000-0000-0000-0000-000000000260', 'typing', 14, '{"prompt_pt": "Traduza usando dedução: ''Ele deve ter confessado, porque não podia negar as provas.''", "expected": "He must have confessed, because he couldn''t deny the proof.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000260', 'typing', 15, '{"prompt_pt": "Traduza: ''O verdadeiro culpado nunca poderia ter sido inocente.''", "expected": "The real culprit could never have been innocent.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

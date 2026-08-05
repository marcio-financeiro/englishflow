-- ============================================================
-- Migration 065: Conteúdo B2 — Módulo 4 "Ênfase e Inversão"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos anteriores (042-064)
-- Gramática: inversão com advérbios negativos, not only, no sooner, little did
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001591', 'rarely', '/ˈrerli/', 'adverb', 'raramente', 'Rarely have I seen such dedication.', 'Raramente eu vi tanta dedicação.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001592', 'seldom', '/ˈseldəm/', 'adverb', 'raramente, raras vezes', 'Seldom does he complain about anything.', 'Raras vezes ele reclama de algo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001593', 'hardly', '/ˈhɑːrdli/', 'adverb', 'mal, quase não', 'Hardly had she arrived when the phone rang.', 'Mal ela tinha chegado quando o telefone tocou.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001594', 'scarcely', '/ˈskersli/', 'adverb', 'mal, quase não', 'Scarcely had the movie started when he fell asleep.', 'Mal o filme tinha começado quando ele adormeceu.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001595', 'barely', '/ˈberli/', 'adverb', 'apenas, mal', 'Barely had we sat down when the waiter came.', 'Mal tínhamos sentado quando o garçom chegou.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001596', 'never before', '/ˈnevər bɪˈfɔːr/', 'phrase', 'nunca antes', 'Never before have I felt so proud.', 'Nunca antes eu me senti tão orgulhoso.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001597', 'not only', '/nɒt ˈoʊnli/', 'phrase', 'não só', 'Not only did she win, but she also set a record.', 'Ela não só venceu, como também estabeleceu um recorde.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001598', 'no sooner', '/noʊ ˈsuːnər/', 'phrase', 'mal (tinha acontecido) quando', 'No sooner had he left than it started to rain.', 'Mal ele tinha saído quando começou a chover.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001599', 'little did', '/ˈlɪtəl dɪd/', 'phrase', 'mal sabia', 'Little did I know that this would change everything.', 'Eu mal sabia que isso mudaria tudo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001600', 'such', '/sʌtʃ/', 'determiner', 'tal, tão', 'It was such a surprise that nobody spoke.', 'Foi uma surpresa tão grande que ninguém falou.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001601', 'emphasis', '/ˈemfəsɪs/', 'noun', 'ênfase', 'The speech put a lot of emphasis on teamwork.', 'O discurso deu muita ênfase ao trabalho em equipe.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001602', 'emphasize', '/ˈemfəsaɪz/', 'verb', 'enfatizar', 'She emphasized the importance of honesty.', 'Ela enfatizou a importância da honestidade.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001603', 'highlight', '/ˈhaɪlaɪt/', 'verb', 'destacar', 'The report highlighted several key issues.', 'O relatório destacou vários pontos importantes.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001604', 'stress', '/stres/', 'verb', 'dar ênfase a, enfatizar', 'The teacher stressed the need for practice.', 'O professor deu ênfase à necessidade de prática.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001605', 'underline', '/ˌʌndərˈlaɪn/', 'verb', 'sublinhar, ressaltar', 'This result underlines how serious the problem is.', 'Esse resultado ressalta o quanto o problema é sério.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001606', 'remarkable', '/rɪˈmɑːrkəbəl/', 'adjective', 'notável', 'It was a remarkable achievement for the whole team.', 'Foi uma conquista notável para a equipe toda.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001607', 'striking', '/ˈstraɪkɪŋ/', 'adjective', 'marcante, impressionante', 'The difference between the two results was striking.', 'A diferença entre os dois resultados foi marcante.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001608', 'astonishing', '/əˈstɒnɪʃɪŋ/', 'adjective', 'surpreendente', 'The speed of the change was astonishing.', 'A velocidade da mudança foi surpreendente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001609', 'unprecedented', '/ʌnˈpresɪdentɪd/', 'adjective', 'sem precedentes', 'The company faced unprecedented challenges this year.', 'A empresa enfrentou desafios sem precedentes esse ano.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001610', 'extraordinary', '/ɪkˈstrɔːrdəneri/', 'adjective', 'extraordinário', 'She showed extraordinary courage during the crisis.', 'Ela mostrou coragem extraordinária durante a crise.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001611', 'dramatic', '/drəˈmætɪk/', 'adjective', 'dramático', 'There was a dramatic increase in sales.', 'Houve um aumento dramático nas vendas.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001612', 'powerful', '/ˈpaʊərfəl/', 'adjective', 'poderoso, impactante', 'It was a powerful speech that moved everyone.', 'Foi um discurso poderoso que emocionou todo mundo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001613', 'forceful', '/ˈfɔːrsfəl/', 'adjective', 'enérgico, contundente', 'His forceful argument convinced the committee.', 'O argumento contundente dele convenceu o comitê.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001614', 'assertive', '/əˈsɜːrtɪv/', 'adjective', 'assertivo', 'She became more assertive after the training.', 'Ela ficou mais assertiva depois do treinamento.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001615', 'conviction', '/kənˈvɪkʃən/', 'noun', 'convicção', 'He spoke with real conviction about the project.', 'Ele falou com verdadeira convicção sobre o projeto.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001616', 'tone', '/toʊn/', 'noun', 'tom (de voz, discurso)', 'The tone of the email was unexpectedly formal.', 'O tom do e-mail foi inesperadamente formal.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001617', 'intensity', '/ɪnˈtensəti/', 'noun', 'intensidade', 'The intensity of the debate surprised everyone.', 'A intensidade do debate surpreendeu todo mundo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001618', 'contrast', '/ˈkɒntræst/', 'noun', 'contraste', 'The contrast between the two speeches was clear.', 'O contraste entre os dois discursos foi claro.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001619', 'rhetorical', '/rɪˈtɒrɪkəl/', 'adjective', 'retórico', 'She asked a rhetorical question to make her point.', 'Ela fez uma pergunta retórica para reforçar o argumento.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001620', 'so', '/soʊ/', 'adverb', 'tão', 'It was so impressive that the crowd stood up.', 'Foi tão impressionante que a plateia se levantou.', 'B2', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000054', 'B2', 'Ênfase e Inversão', 'Aprenda estruturas de inversão para dar ênfase em inglês (Rarely have I..., Not only did she..., No sooner had he...) e vocabulário para descrever discursos impactantes.', 4, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000266', '10000000-0000-0000-0000-000000000054', 'Advérbios negativos no início', 1, 20),
('20000000-0000-0000-0000-000000000267', '10000000-0000-0000-0000-000000000054', 'Inversão com not only e no sooner', 2, 20),
('20000000-0000-0000-0000-000000000268', '10000000-0000-0000-0000-000000000054', 'Verbos de ênfase', 3, 20),
('20000000-0000-0000-0000-000000000269', '10000000-0000-0000-0000-000000000054', 'Discurso impactante', 4, 20),
('20000000-0000-0000-0000-000000000270', '10000000-0000-0000-0000-000000000054', 'Revisão: falando com ênfase', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 266: Advérbios negativos no início (rarely, seldom, hardly, scarcely, barely, never before)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000266', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001591", "show_image": false}'),
('20000000-0000-0000-0000-000000000266', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001593", "show_image": false}'),
('20000000-0000-0000-0000-000000000266', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001596", "show_image": false}'),
('20000000-0000-0000-0000-000000000266', 'multiple_choice', 4, '{"question": "___ have I seen such dedication.", "audio_text": null, "options": ["Rarely", "I rarely", "Rarely I"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000266', 'multiple_choice', 5, '{"question": "Hardly had she arrived ___ the phone rang.", "audio_text": null, "options": ["when", "than", "and"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000266', 'matching', 6, '{"pairs": [{"left": "rarely", "right": "raramente"}, {"left": "seldom", "right": "raras vezes"}, {"left": "hardly", "right": "mal, quase não"}, {"left": "scarcely", "right": "mal, quase não"}, {"left": "barely", "right": "apenas, mal"}, {"left": "never before", "right": "nunca antes"}]}'),
('20000000-0000-0000-0000-000000000266', 'fill_blank', 7, '{"sentence": "___ does he complain about anything.", "options": ["Seldom", "Never before", "Barely"], "correct": "Seldom", "translation": "Raras vezes ele reclama de algo."}'),
('20000000-0000-0000-0000-000000000266', 'fill_blank', 8, '{"sentence": "___ have I felt so proud.", "options": ["Never before", "Hardly", "Scarcely"], "correct": "Never before", "translation": "Nunca antes eu me senti tão orgulhoso."}'),
('20000000-0000-0000-0000-000000000266', 'word_order', 9, '{"words": ["Scarcely", "had", "the", "movie", "started", "when", "he", "fell", "asleep"], "correct_sentence": "Scarcely had the movie started when he fell asleep", "translation": "Mal o filme tinha começado quando ele adormeceu"}'),
('20000000-0000-0000-0000-000000000266', 'word_order', 10, '{"words": ["Barely", "had", "we", "sat", "down", "when", "the", "waiter", "came"], "correct_sentence": "Barely had we sat down when the waiter came", "translation": "Mal tínhamos sentado quando o garçom chegou"}'),
('20000000-0000-0000-0000-000000000266', 'reading', 11, '{"passage": "When a sentence starts with a negative adverb like rarely, seldom, hardly, or scarcely, the subject and auxiliary verb are inverted, just like in a question. For example: ''Rarely have I seen such dedication'' instead of ''I have rarely seen such dedication''. This structure adds emphasis and sounds more formal.", "translation": "Quando uma frase começa com um advérbio negativo como rarely, seldom, hardly ou scarcely, o sujeito e o verbo auxiliar são invertidos, assim como em uma pergunta. Por exemplo: ''Rarely have I seen such dedication'' em vez de ''I have rarely seen such dedication''. Essa estrutura adiciona ênfase e soa mais formal.", "question": "What happens to word order after a negative adverb, according to the text?", "options": ["Nothing changes", "The subject and auxiliary verb are inverted", "The verb is removed"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000266', 'listening', 12, '{"audio_text": "Rarely have I seen such dedication. Seldom does he complain about anything. Never before have I felt so proud.", "question": "How does he usually behave, according to the audio?", "options": ["He complains often", "He seldom complains", "He is always proud"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000266', 'dictation', 13, '{"audio_text": "Rarely have I seen such dedication.", "expected": "Rarely have I seen such dedication."}'),
('20000000-0000-0000-0000-000000000266', 'typing', 14, '{"prompt_pt": "Traduza usando inversão: ''Nunca antes eu vi um discurso tão poderoso.''", "expected": "Never before have I seen such a powerful speech.", "ai_review": true}'),

-- Lição 267: Inversão com not only e no sooner (not only, no sooner, little did, such, so, emphasis)
('20000000-0000-0000-0000-000000000267', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001597", "show_image": false}'),
('20000000-0000-0000-0000-000000000267', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001598", "show_image": false}'),
('20000000-0000-0000-0000-000000000267', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001599", "show_image": false}'),
('20000000-0000-0000-0000-000000000267', 'multiple_choice', 4, '{"question": "Not only ___ she win, but she also set a record.", "audio_text": null, "options": ["did", "she did", "she"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000267', 'multiple_choice', 5, '{"question": "No sooner had he left ___ it started to rain.", "audio_text": null, "options": ["than", "when", "and"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000267', 'matching', 6, '{"pairs": [{"left": "not only", "right": "não só"}, {"left": "no sooner", "right": "mal... quando"}, {"left": "little did", "right": "mal sabia"}, {"left": "such", "right": "tal, tão"}, {"left": "so", "right": "tão"}, {"left": "emphasis", "right": "ênfase"}]}'),
('20000000-0000-0000-0000-000000000267', 'fill_blank', 7, '{"sentence": "___ I know that this would change everything.", "options": ["Little did", "Not only", "No sooner"], "correct": "Little did", "translation": "Eu mal sabia que isso mudaria tudo."}'),
('20000000-0000-0000-0000-000000000267', 'fill_blank', 8, '{"sentence": "It was ___ a surprise that nobody spoke.", "options": ["such", "so", "no sooner"], "correct": "such", "translation": "Foi uma surpresa tão grande que ninguém falou."}'),
('20000000-0000-0000-0000-000000000267', 'word_order', 9, '{"words": ["Not", "only", "did", "she", "win", "but", "she", "also", "set", "a", "record"], "correct_sentence": "Not only did she win but she also set a record", "translation": "Ela não só venceu, como também estabeleceu um recorde"}'),
('20000000-0000-0000-0000-000000000267', 'word_order', 10, '{"words": ["No", "sooner", "had", "he", "left", "than", "it", "started", "to", "rain"], "correct_sentence": "No sooner had he left than it started to rain", "translation": "Mal ele tinha saído quando começou a chover"}'),
('20000000-0000-0000-0000-000000000267', 'reading', 11, '{"passage": "Expressions like ''not only'', ''no sooner'', and ''little did'' also require inversion when placed at the start of a sentence, for extra emphasis. ''Not only did she win, but she also set a record'' sounds much stronger than the normal word order. Little did anyone know how important that moment would become.", "translation": "Expressões como ''not only'', ''no sooner'' e ''little did'' também exigem inversão quando colocadas no início de uma frase, para dar mais ênfase. ''Not only did she win, but she also set a record'' soa muito mais forte que a ordem normal. Mal alguém sabia o quão importante aquele momento se tornaria.", "question": "What did the expressions at the start of a sentence require, according to the text?", "options": ["No change", "Inversion", "A question mark"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000267', 'listening', 12, '{"audio_text": "Not only did she win, but she also set a record. No sooner had he left than it started to rain. Little did I know this would change everything.", "question": "What happened right after he left, according to the audio?", "options": ["It started to rain", "The record was set", "Nothing changed"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000267', 'dictation', 13, '{"audio_text": "Not only did she win, but she also set a record.", "expected": "Not only did she win, but she also set a record."}'),
('20000000-0000-0000-0000-000000000267', 'typing', 14, '{"prompt_pt": "Traduza usando inversão: ''Mal ele tinha saído quando o telefone tocou.''", "expected": "No sooner had he left than the phone rang.", "ai_review": true}'),

-- Lição 268: Verbos de ênfase (emphasize, highlight, stress, underline, remarkable, striking)
('20000000-0000-0000-0000-000000000268', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001602", "show_image": false}'),
('20000000-0000-0000-0000-000000000268', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001603", "show_image": false}'),
('20000000-0000-0000-0000-000000000268', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001606", "show_image": false}'),
('20000000-0000-0000-0000-000000000268', 'multiple_choice', 4, '{"question": "She ___ the importance of honesty.", "audio_text": null, "options": ["emphasized", "underline", "striking"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000268', 'multiple_choice', 5, '{"question": "What does ''striking'' mean?", "audio_text": null, "options": ["Marcante, impressionante", "Discreto", "Comum"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000268', 'matching', 6, '{"pairs": [{"left": "emphasize", "right": "enfatizar"}, {"left": "highlight", "right": "destacar"}, {"left": "stress", "right": "dar ênfase a"}, {"left": "underline", "right": "sublinhar"}, {"left": "remarkable", "right": "notável"}, {"left": "striking", "right": "marcante"}]}'),
('20000000-0000-0000-0000-000000000268', 'fill_blank', 7, '{"sentence": "The report ___ several key issues.", "options": ["highlighted", "underlined", "stressed"], "correct": "highlighted", "translation": "O relatório destacou vários pontos importantes."}'),
('20000000-0000-0000-0000-000000000268', 'fill_blank', 8, '{"sentence": "It was a ___ achievement for the whole team.", "options": ["remarkable", "striking", "forceful"], "correct": "remarkable", "translation": "Foi uma conquista notável para a equipe toda."}'),
('20000000-0000-0000-0000-000000000268', 'word_order', 9, '{"words": ["The", "teacher", "stressed", "the", "need", "for", "practice"], "correct_sentence": "The teacher stressed the need for practice", "translation": "O professor deu ênfase à necessidade de prática"}'),
('20000000-0000-0000-0000-000000000268', 'word_order', 10, '{"words": ["The", "difference", "between", "the", "results", "was", "striking"], "correct_sentence": "The difference between the results was striking", "translation": "A diferença entre os resultados foi marcante"}'),
('20000000-0000-0000-0000-000000000268', 'reading', 11, '{"passage": "Verbs like emphasize, highlight, stress, and underline all describe ways of drawing attention to something important. A remarkable achievement or a striking difference are both examples of things that naturally stand out and deserve extra emphasis in a conversation or a speech.", "translation": "Verbos como emphasize, highlight, stress e underline descrevem formas de chamar atenção para algo importante. Uma conquista notável ou uma diferença marcante são exemplos de coisas que naturalmente se destacam e merecem ênfase extra numa conversa ou discurso.", "question": "What do all four verbs describe, according to the text?", "options": ["Ways of hiding information", "Ways of drawing attention to something", "Ways of asking questions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000268', 'listening', 12, '{"audio_text": "She emphasized the importance of honesty. The report highlighted several key issues. It was a remarkable achievement.", "question": "What did she emphasize, according to the audio?", "options": ["Teamwork", "The importance of honesty", "The report"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000268', 'dictation', 13, '{"audio_text": "She emphasized the importance of honesty.", "expected": "She emphasized the importance of honesty."}'),
('20000000-0000-0000-0000-000000000268', 'typing', 14, '{"prompt_pt": "Traduza: ''O professor destacou um resultado notável.''", "expected": "The teacher highlighted a remarkable result.", "ai_review": true}'),

-- Lição 269: Discurso impactante (astonishing, unprecedented, extraordinary, dramatic, powerful, forceful)
('20000000-0000-0000-0000-000000000269', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001608", "show_image": false}'),
('20000000-0000-0000-0000-000000000269', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001610", "show_image": false}'),
('20000000-0000-0000-0000-000000000269', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001612", "show_image": false}'),
('20000000-0000-0000-0000-000000000269', 'multiple_choice', 4, '{"question": "The company faced ___ challenges this year.", "audio_text": null, "options": ["unprecedented", "astonishing", "forceful"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000269', 'multiple_choice', 5, '{"question": "What does ''forceful'' mean?", "audio_text": null, "options": ["Enérgico, contundente", "Fraco, hesitante", "Silencioso"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000269', 'matching', 6, '{"pairs": [{"left": "astonishing", "right": "surpreendente"}, {"left": "unprecedented", "right": "sem precedentes"}, {"left": "extraordinary", "right": "extraordinário"}, {"left": "dramatic", "right": "dramático"}, {"left": "powerful", "right": "poderoso"}, {"left": "forceful", "right": "enérgico"}]}'),
('20000000-0000-0000-0000-000000000269', 'fill_blank', 7, '{"sentence": "There was a ___ increase in sales.", "options": ["dramatic", "forceful", "astonishing"], "correct": "dramatic", "translation": "Houve um aumento dramático nas vendas."}'),
('20000000-0000-0000-0000-000000000269', 'fill_blank', 8, '{"sentence": "It was a ___ speech that moved everyone.", "options": ["powerful", "unprecedented", "extraordinary"], "correct": "powerful", "translation": "Foi um discurso poderoso que emocionou todo mundo."}'),
('20000000-0000-0000-0000-000000000269', 'word_order', 9, '{"words": ["The", "speed", "of", "the", "change", "was", "astonishing"], "correct_sentence": "The speed of the change was astonishing", "translation": "A velocidade da mudança foi surpreendente"}'),
('20000000-0000-0000-0000-000000000269', 'word_order', 10, '{"words": ["She", "showed", "extraordinary", "courage", "during", "the", "crisis"], "correct_sentence": "She showed extraordinary courage during the crisis", "translation": "Ela mostrou coragem extraordinária durante a crise"}'),
('20000000-0000-0000-0000-000000000269', 'reading', 11, '{"passage": "The company faced unprecedented challenges this year, but the results were astonishing. Sales grew at a dramatic pace, and the team showed extraordinary courage. His forceful and powerful leadership made a real difference during the crisis.", "translation": "A empresa enfrentou desafios sem precedentes esse ano, mas os resultados foram surpreendentes. As vendas cresceram num ritmo dramático, e a equipe mostrou coragem extraordinária. A liderança contundente e poderosa dele fez uma diferença real durante a crise.", "question": "What kind of challenges did the company face, according to the text?", "options": ["Common ones", "Unprecedented ones", "Small ones"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000269', 'listening', 12, '{"audio_text": "The company faced unprecedented challenges. Sales grew at a dramatic pace. His forceful and powerful leadership made a real difference.", "question": "How did sales grow, according to the audio?", "options": ["Slowly", "At a dramatic pace", "They did not grow"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000269', 'dictation', 13, '{"audio_text": "There was a dramatic increase in sales.", "expected": "There was a dramatic increase in sales."}'),
('20000000-0000-0000-0000-000000000269', 'typing', 14, '{"prompt_pt": "Traduza: ''Foi um discurso extraordinário, com uma mensagem poderosa.''", "expected": "It was an extraordinary speech, with a powerful message.", "ai_review": true}'),

-- Lição 270: Revisão + falando com ênfase (assertive, conviction, tone, intensity, contrast, rhetorical)
('20000000-0000-0000-0000-000000000270', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001614", "show_image": false}'),
('20000000-0000-0000-0000-000000000270', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001615", "show_image": false}'),
('20000000-0000-0000-0000-000000000270', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001619", "show_image": false}'),
('20000000-0000-0000-0000-000000000270', 'multiple_choice', 4, '{"question": "He spoke with real ___ about the project.", "audio_text": null, "options": ["conviction", "contrast", "tone"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000270', 'multiple_choice', 5, '{"question": "What does ''rhetorical question'' mean?", "audio_text": null, "options": ["A question not meant to be answered", "A question about facts", "A question in the past tense"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000270', 'matching', 6, '{"pairs": [{"left": "assertive", "right": "assertivo"}, {"left": "conviction", "right": "convicção"}, {"left": "tone", "right": "tom"}, {"left": "intensity", "right": "intensidade"}, {"left": "contrast", "right": "contraste"}, {"left": "rhetorical", "right": "retórico"}]}'),
('20000000-0000-0000-0000-000000000270', 'fill_blank', 7, '{"sentence": "The ___ of the debate surprised everyone.", "options": ["intensity", "tone", "contrast"], "correct": "intensity", "translation": "A intensidade do debate surpreendeu todo mundo."}'),
('20000000-0000-0000-0000-000000000270', 'fill_blank', 8, '{"sentence": "She became more ___ after the training.", "options": ["assertive", "rhetorical", "conviction"], "correct": "assertive", "translation": "Ela ficou mais assertiva depois do treinamento."}'),
('20000000-0000-0000-0000-000000000270', 'word_order', 9, '{"words": ["The", "tone", "of", "the", "email", "was", "unexpectedly", "formal"], "correct_sentence": "The tone of the email was unexpectedly formal", "translation": "O tom do e-mail foi inesperadamente formal"}'),
('20000000-0000-0000-0000-000000000270', 'word_order', 10, '{"words": ["The", "contrast", "between", "the", "two", "speeches", "was", "clear"], "correct_sentence": "The contrast between the two speeches was clear", "translation": "O contraste entre os dois discursos foi claro"}'),
('20000000-0000-0000-0000-000000000270', 'reading', 11, '{"passage": "A great speaker often uses an assertive tone, speaks with conviction, and asks rhetorical questions to make a point. Little did the audience know how the intensity of the speech would build, creating a striking contrast with the calm opening.", "translation": "Um bom orador costuma usar um tom assertivo, fala com convicção e faz perguntas retóricas para reforçar um argumento. A plateia mal sabia como a intensidade do discurso iria aumentar, criando um contraste marcante com a abertura calma.", "question": "What kind of questions does a great speaker often ask, according to the text?", "options": ["Personal questions", "Rhetorical questions", "Yes/no questions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000270', 'listening', 12, '{"audio_text": "He spoke with real conviction about the project. The tone of the email was unexpectedly formal. She asked a rhetorical question.", "question": "How did he speak about the project, according to the audio?", "options": ["With real conviction", "With hesitation", "Formally by email"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000270', 'dictation', 13, '{"audio_text": "He spoke with real conviction about the project.", "expected": "He spoke with real conviction about the project."}'),
('20000000-0000-0000-0000-000000000270', 'typing', 14, '{"prompt_pt": "Traduza usando inversão: ''Não só ela falou com convicção, como também impressionou a todos.''", "expected": "Not only did she speak with conviction, but she also impressed everyone.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000270', 'typing', 15, '{"prompt_pt": "Traduza: ''Raramente eu vi um tom tão assertivo e poderoso.''", "expected": "Rarely have I seen such an assertive and powerful tone.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

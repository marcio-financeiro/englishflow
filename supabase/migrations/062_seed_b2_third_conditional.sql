-- ============================================================
-- Migration 062: Conteúdo B2 — Módulo 1 "Third Conditional & Mixed Conditionals"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Abre o B2. Padrão idêntico aos módulos B1 (042-061)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001501', 'hypothetical', '/ˌhaɪpəˈθetɪkəl/', 'adjective', 'hipotético', 'It is just a hypothetical situation.', 'É apenas uma situação hipotética.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001502', 'scenario', '/səˈnærioʊ/', 'noun', 'cenário', 'Let''s imagine a different scenario.', 'Vamos imaginar um cenário diferente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001503', 'consequence', '/ˈkɒnsɪkwəns/', 'noun', 'consequência', 'Every decision has a consequence.', 'Toda decisão tem uma consequência.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001504', 'outcome', '/ˈaʊtkʌm/', 'noun', 'resultado', 'The outcome could have been different.', 'O resultado poderia ter sido diferente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001505', 'missed opportunity', '/mɪst ˌɒpərˈtjuːnəti/', 'noun', 'oportunidade perdida', 'Not applying was a missed opportunity.', 'Não se candidatar foi uma oportunidade perdida.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001506', 'otherwise', '/ˈʌðərwaɪz/', 'adverb', 'senão, de outra forma', 'Study hard, otherwise you will fail.', 'Estude bastante, senão você vai reprovar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001507', 'unless', '/ənˈles/', 'conjunction', 'a menos que', 'Unless we hurry, we will be late.', 'A menos que nos apressemos, vamos nos atrasar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001508', 'alternate', '/ˈɔːltərnət/', 'adjective', 'alternativo', 'They chose an alternate route.', 'Eles escolheram uma rota alternativa.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001509', 'reflect', '/rɪˈflekt/', 'verb', 'refletir', 'Take time to reflect on your choices.', 'Reserve um tempo para refletir sobre suas escolhas.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001510', 'lesson learned', '/ˈlesən lɜːrnd/', 'noun', 'lição aprendida', 'That failure was a valuable lesson learned.', 'Aquele fracasso foi uma lição aprendida valiosa.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001511', 'what if', '/wʌt ɪf/', 'phrase', 'e se', 'What if we had left earlier?', 'E se tivéssemos saído mais cedo?', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001512', 'turning point', '/ˈtɜːrnɪŋ pɔɪnt/', 'noun', 'ponto de virada', 'That meeting was a turning point in her career.', 'Aquela reunião foi um ponto de virada na carreira dela.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001513', 'decision', '/dɪˈsɪʒən/', 'noun', 'decisão', 'It was a difficult decision to make.', 'Foi uma decisão difícil de tomar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001514', 'path', '/pæθ/', 'noun', 'caminho', 'She chose a completely different path.', 'Ela escolheu um caminho completamente diferente.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001515', 'circumstance', '/ˈsɜːrkəmstæns/', 'noun', 'circunstância', 'Under different circumstances, he might have agreed.', 'Em circunstâncias diferentes, ele poderia ter concordado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001516', 'despite', '/dɪˈspaɪt/', 'preposition', 'apesar de', 'Despite the rain, they went out.', 'Apesar da chuva, eles saíram.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001517', 'nevertheless', '/ˌnevərðəˈles/', 'adverb', 'no entanto, mesmo assim', 'It was risky; nevertheless, she tried.', 'Era arriscado; no entanto, ela tentou.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001518', 'presumably', '/prɪˈzuːməbli/', 'adverb', 'presumivelmente', 'Presumably, he forgot about the meeting.', 'Presumivelmente, ele esqueceu da reunião.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001519', 'inevitable', '/ɪnˈevɪtəbəl/', 'adjective', 'inevitável', 'The outcome was inevitable.', 'O resultado foi inevitável.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001520', 'avoidable', '/əˈvɔɪdəbəl/', 'adjective', 'evitável', 'The accident was completely avoidable.', 'O acidente foi totalmente evitável.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001521', 'foresee', '/fɔːrˈsiː/', 'verb', 'prever', 'Nobody could foresee the crisis.', 'Ninguém podia prever a crise.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001522', 'anticipate', '/ænˈtɪsɪpeɪt/', 'verb', 'antecipar, prever', 'We should have anticipated this problem.', 'Deveríamos ter antecipado esse problema.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001523', 'hindsight', '/ˈhaɪndsaɪt/', 'noun', 'retrospecto', 'In hindsight, we made the wrong choice.', 'Em retrospecto, fizemos a escolha errada.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001524', 'wisdom', '/ˈwɪzdəm/', 'noun', 'sabedoria', 'With age comes wisdom.', 'Com a idade vem a sabedoria.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001525', 'mistake', '/mɪˈsteɪk/', 'noun', 'erro', 'If I hadn''t made that mistake, things would be different.', 'Se eu não tivesse cometido aquele erro, as coisas seriam diferentes.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001526', 'achievement', '/əˈtʃiːvmənt/', 'noun', 'conquista', 'Finishing the marathon was a great achievement.', 'Terminar a maratona foi uma grande conquista.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001527', 'failure', '/ˈfeɪljər/', 'noun', 'fracasso', 'The project ended in failure.', 'O projeto terminou em fracasso.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001528', 'success', '/səkˈses/', 'noun', 'sucesso', 'Hard work led to their success.', 'O trabalho duro levou ao sucesso deles.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001529', 'blame', '/bleɪm/', 'verb', 'culpar', 'Don''t blame yourself for what happened.', 'Não se culpe pelo que aconteceu.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001530', 'responsible', '/rɪˈspɒnsəbəl/', 'adjective', 'responsável', 'She felt responsible for the mistake.', 'Ela se sentiu responsável pelo erro.', 'B2', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000051', 'B2', 'Third Conditional & Mixed Conditionals', 'Aprenda a falar sobre situações hipotéticas no passado (if I had known...) e como o passado pode afetar o presente com conditionals mistos. Abre o nível B2.', 1, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000251', '10000000-0000-0000-0000-000000000051', 'Third Conditional — introdução', 1, 20),
('20000000-0000-0000-0000-000000000252', '10000000-0000-0000-0000-000000000051', 'Mixed Conditionals — passado afeta presente', 2, 20),
('20000000-0000-0000-0000-000000000253', '10000000-0000-0000-0000-000000000051', 'Conectivos para hipóteses', 3, 20),
('20000000-0000-0000-0000-000000000254', '10000000-0000-0000-0000-000000000051', 'Inevitável x evitável', 4, 20),
('20000000-0000-0000-0000-000000000255', '10000000-0000-0000-0000-000000000051', 'Revisão: aprendendo com o passado', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 251: Third Conditional — introdução (hypothetical, scenario, consequence, outcome, missed opportunity, otherwise)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000251', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001501", "show_image": false}'),
('20000000-0000-0000-0000-000000000251', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001503", "show_image": false}'),
('20000000-0000-0000-0000-000000000251', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001504", "show_image": false}'),
('20000000-0000-0000-0000-000000000251', 'multiple_choice', 4, '{"question": "If I had studied harder, I ___ the exam.", "audio_text": null, "options": ["would have passed", "would pass", "will pass"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000251', 'multiple_choice', 5, '{"question": "The Third Conditional talks about:", "audio_text": null, "options": ["An unreal situation in the past", "A real situation now", "A future possibility"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000251', 'matching', 6, '{"pairs": [{"left": "hypothetical", "right": "hipotético"}, {"left": "scenario", "right": "cenário"}, {"left": "consequence", "right": "consequência"}, {"left": "outcome", "right": "resultado"}, {"left": "missed opportunity", "right": "oportunidade perdida"}, {"left": "otherwise", "right": "senão"}]}'),
('20000000-0000-0000-0000-000000000251', 'fill_blank', 7, '{"sentence": "If she had left earlier, she ___ the train.", "options": ["would have caught", "would catch", "caught"], "correct": "would have caught", "translation": "Se ela tivesse saído mais cedo, teria pegado o trem."}'),
('20000000-0000-0000-0000-000000000251', 'fill_blank', 8, '{"sentence": "Not applying for that job was a ___.", "options": ["missed opportunity", "outcome", "scenario"], "correct": "missed opportunity", "translation": "Não se candidatar àquela vaga foi uma oportunidade perdida."}'),
('20000000-0000-0000-0000-000000000251', 'word_order', 9, '{"words": ["The", "outcome", "could", "have", "been", "different"], "correct_sentence": "The outcome could have been different", "translation": "O resultado poderia ter sido diferente"}'),
('20000000-0000-0000-0000-000000000251', 'word_order', 10, '{"words": ["Every", "decision", "has", "a", "consequence"], "correct_sentence": "Every decision has a consequence", "translation": "Toda decisão tem uma consequência"}'),
('20000000-0000-0000-0000-000000000251', 'reading', 11, '{"passage": "The Third Conditional describes a hypothetical situation in the past that did not happen. For example: ''If I had known about the traffic, I would have left earlier.'' This structure is often used to talk about regrets, missed opportunities, and different possible outcomes.", "translation": "O Third Conditional descreve uma situação hipotética no passado que não aconteceu. Por exemplo: ''If I had known about the traffic, I would have left earlier.''. Essa estrutura é frequentemente usada para falar sobre arrependimentos, oportunidades perdidas e resultados possíveis diferentes.", "question": "What does the Third Conditional describe, according to the text?", "options": ["A future plan", "A hypothetical past situation", "A present habit"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000251', 'listening', 12, '{"audio_text": "If I had known about the traffic, I would have left earlier. It is just a hypothetical scenario. The outcome could have been different.", "question": "What would the speaker have done if they had known about the traffic?", "options": ["Left earlier", "Taken a taxi", "Cancelled the trip"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000251', 'dictation', 13, '{"audio_text": "The outcome could have been different.", "expected": "The outcome could have been different."}'),
('20000000-0000-0000-0000-000000000251', 'typing', 14, '{"prompt_pt": "Traduza usando Third Conditional: ''Se eu tivesse estudado, eu teria passado.''", "expected": "If I had studied, I would have passed.", "ai_review": true}'),

-- Lição 252: Mixed Conditionals (unless, alternate, reflect, lesson learned, what if, turning point)
('20000000-0000-0000-0000-000000000252', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001509", "show_image": false}'),
('20000000-0000-0000-0000-000000000252', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001511", "show_image": false}'),
('20000000-0000-0000-0000-000000000252', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001512", "show_image": false}'),
('20000000-0000-0000-0000-000000000252', 'multiple_choice', 4, '{"question": "If I had taken that job, I ___ in New York now.", "audio_text": null, "options": ["would be living", "would have lived", "will live"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000252', 'multiple_choice', 5, '{"question": "A Mixed Conditional connects:", "audio_text": null, "options": ["A past condition with a present result", "Two future events", "Two present habits"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000252', 'matching', 6, '{"pairs": [{"left": "unless", "right": "a menos que"}, {"left": "alternate", "right": "alternativo"}, {"left": "reflect", "right": "refletir"}, {"left": "lesson learned", "right": "lição aprendida"}, {"left": "what if", "right": "e se"}, {"left": "turning point", "right": "ponto de virada"}]}'),
('20000000-0000-0000-0000-000000000252', 'fill_blank', 7, '{"sentence": "If she had studied medicine, she ___ a doctor today.", "options": ["would be", "would have been", "will be"], "correct": "would be", "translation": "Se ela tivesse estudado medicina, seria médica hoje."}'),
('20000000-0000-0000-0000-000000000252', 'fill_blank', 8, '{"sentence": "That failure was a valuable ___.", "options": ["lesson learned", "turning point", "scenario"], "correct": "lesson learned", "translation": "Aquele fracasso foi uma lição aprendida valiosa."}'),
('20000000-0000-0000-0000-000000000252', 'word_order', 9, '{"words": ["That", "meeting", "was", "a", "turning", "point", "in", "her", "career"], "correct_sentence": "That meeting was a turning point in her career", "translation": "Aquela reunião foi um ponto de virada na carreira dela"}'),
('20000000-0000-0000-0000-000000000252', 'word_order', 10, '{"words": ["Take", "time", "to", "reflect", "on", "your", "choices"], "correct_sentence": "Take time to reflect on your choices", "translation": "Reserve um tempo para refletir sobre suas escolhas"}'),
('20000000-0000-0000-0000-000000000252', 'reading', 11, '{"passage": "Mixed Conditionals combine a past condition with a present result, or a present condition with a past result. For example: ''If I had taken that job, I would be living in New York now.'' It is a way to reflect on how a past decision shaped who we are today.", "translation": "Mixed Conditionals combinam uma condição no passado com um resultado no presente, ou uma condição no presente com um resultado no passado. Por exemplo: ''If I had taken that job, I would be living in New York now.''. É uma forma de refletir sobre como uma decisão do passado moldou quem somos hoje.", "question": "What do Mixed Conditionals combine, according to the text?", "options": ["Two present situations", "A past condition and a present result (or vice versa)", "Two future plans"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000252', 'listening', 12, '{"audio_text": "If I had taken that job, I would be living in New York now. That meeting was a real turning point. Take time to reflect on your choices.", "question": "Where would the speaker be living now, according to the audio?", "options": ["London", "New York", "Paris"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000252', 'dictation', 13, '{"audio_text": "That meeting was a turning point in her career.", "expected": "That meeting was a turning point in her career."}'),
('20000000-0000-0000-0000-000000000252', 'typing', 14, '{"prompt_pt": "Traduza usando Mixed Conditional: ''Se eu tivesse aceitado o emprego, eu estaria morando lá agora.''", "expected": "If I had accepted the job, I would be living there now.", "ai_review": true}'),

-- Lição 253: Conectivos para hipóteses (decision, path, circumstance, despite, nevertheless, presumably)
('20000000-0000-0000-0000-000000000253', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001513", "show_image": false}'),
('20000000-0000-0000-0000-000000000253', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001516", "show_image": false}'),
('20000000-0000-0000-0000-000000000253', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001517", "show_image": false}'),
('20000000-0000-0000-0000-000000000253', 'multiple_choice', 4, '{"question": "___ the rain, they went out for a walk.", "audio_text": null, "options": ["Despite", "Unless", "Presumably"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000253', 'multiple_choice', 5, '{"question": "What does ''circumstance'' mean?", "audio_text": null, "options": ["Circunstância", "Decisão", "Caminho"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000253', 'matching', 6, '{"pairs": [{"left": "decision", "right": "decisão"}, {"left": "path", "right": "caminho"}, {"left": "circumstance", "right": "circunstância"}, {"left": "despite", "right": "apesar de"}, {"left": "nevertheless", "right": "no entanto"}, {"left": "presumably", "right": "presumivelmente"}]}'),
('20000000-0000-0000-0000-000000000253', 'fill_blank', 7, '{"sentence": "Under different ___, he might have agreed.", "options": ["circumstances", "decisions", "paths"], "correct": "circumstances", "translation": "Em circunstâncias diferentes, ele poderia ter concordado."}'),
('20000000-0000-0000-0000-000000000253', 'fill_blank', 8, '{"sentence": "It was risky; ___, she tried.", "options": ["nevertheless", "despite", "unless"], "correct": "nevertheless", "translation": "Era arriscado; no entanto, ela tentou."}'),
('20000000-0000-0000-0000-000000000253', 'word_order', 9, '{"words": ["It", "was", "a", "difficult", "decision", "to", "make"], "correct_sentence": "It was a difficult decision to make", "translation": "Foi uma decisão difícil de tomar"}'),
('20000000-0000-0000-0000-000000000253', 'word_order', 10, '{"words": ["She", "chose", "a", "completely", "different", "path"], "correct_sentence": "She chose a completely different path", "translation": "Ela escolheu um caminho completamente diferente"}'),
('20000000-0000-0000-0000-000000000253', 'reading', 11, '{"passage": "Every decision leads to a different path, and under different circumstances, the outcome could have been completely different. Despite the risks, some people choose to take chances anyway. Presumably, they believe the reward is worth it, and nevertheless, they move forward.", "translation": "Toda decisão leva a um caminho diferente, e em circunstâncias diferentes, o resultado poderia ter sido completamente diferente. Apesar dos riscos, algumas pessoas escolhem arriscar mesmo assim. Presumivelmente, elas acreditam que a recompensa vale a pena, e mesmo assim, seguem em frente.", "question": "What do some people do despite the risks, according to the text?", "options": ["They give up", "They take chances anyway", "They avoid all decisions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000253', 'listening', 12, '{"audio_text": "It was a difficult decision to make. Under different circumstances, he might have agreed. Despite the risks, she moved forward.", "question": "What was difficult, according to the audio?", "options": ["The circumstances", "The decision", "The path"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000253', 'dictation', 13, '{"audio_text": "It was a difficult decision to make.", "expected": "It was a difficult decision to make."}'),
('20000000-0000-0000-0000-000000000253', 'typing', 14, '{"prompt_pt": "Traduza: ''Apesar da decisão difícil, ela escolheu o caminho certo.''", "expected": "Despite the difficult decision, she chose the right path.", "ai_review": true}'),

-- Lição 254: Inevitável x evitável (inevitable, avoidable, foresee, anticipate, hindsight, wisdom)
('20000000-0000-0000-0000-000000000254', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001519", "show_image": false}'),
('20000000-0000-0000-0000-000000000254', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001520", "show_image": false}'),
('20000000-0000-0000-0000-000000000254', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001523", "show_image": false}'),
('20000000-0000-0000-0000-000000000254', 'multiple_choice', 4, '{"question": "The accident was completely ___.", "audio_text": null, "options": ["avoidable", "inevitable", "wisdom"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000254', 'multiple_choice', 5, '{"question": "What does ''foresee'' mean?", "audio_text": null, "options": ["Prever", "Ignorar", "Esquecer"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000254', 'matching', 6, '{"pairs": [{"left": "inevitable", "right": "inevitável"}, {"left": "avoidable", "right": "evitável"}, {"left": "foresee", "right": "prever"}, {"left": "anticipate", "right": "antecipar"}, {"left": "hindsight", "right": "retrospecto"}, {"left": "wisdom", "right": "sabedoria"}]}'),
('20000000-0000-0000-0000-000000000254', 'fill_blank', 7, '{"sentence": "Nobody could ___ the crisis.", "options": ["foresee", "avoid", "blame"], "correct": "foresee", "translation": "Ninguém podia prever a crise."}'),
('20000000-0000-0000-0000-000000000254', 'fill_blank', 8, '{"sentence": "In ___, we made the wrong choice.", "options": ["hindsight", "wisdom", "circumstance"], "correct": "hindsight", "translation": "Em retrospecto, fizemos a escolha errada."}'),
('20000000-0000-0000-0000-000000000254', 'word_order', 9, '{"words": ["We", "should", "have", "anticipated", "this", "problem"], "correct_sentence": "We should have anticipated this problem", "translation": "Deveríamos ter antecipado esse problema"}'),
('20000000-0000-0000-0000-000000000254', 'word_order', 10, '{"words": ["With", "age", "comes", "wisdom"], "correct_sentence": "With age comes wisdom", "translation": "Com a idade vem a sabedoria"}'),
('20000000-0000-0000-0000-000000000254', 'reading', 11, '{"passage": "Some problems are truly inevitable, but many others are avoidable if we anticipate them early. In hindsight, most mistakes seem obvious, but foreseeing them in the moment requires real wisdom and experience.", "translation": "Alguns problemas são realmente inevitáveis, mas muitos outros são evitáveis se os antecipamos cedo. Em retrospecto, a maioria dos erros parece óbvia, mas prevê-los no momento exige sabedoria e experiência de verdade.", "question": "What do most mistakes seem like in hindsight, according to the text?", "options": ["Impossible to predict", "Obvious", "Completely inevitable"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000254', 'listening', 12, '{"audio_text": "Nobody could foresee the crisis. In hindsight, we made the wrong choice. We should have anticipated this problem.", "question": "What should have been anticipated, according to the audio?", "options": ["The crisis", "This problem", "The choice"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000254', 'dictation', 13, '{"audio_text": "Nobody could foresee the crisis.", "expected": "Nobody could foresee the crisis."}'),
('20000000-0000-0000-0000-000000000254', 'typing', 14, '{"prompt_pt": "Traduza: ''Se tivéssemos previsto o problema, ele teria sido evitável.''", "expected": "If we had foreseen the problem, it would have been avoidable.", "ai_review": true}'),

-- Lição 255: Revisão + aprendendo com o passado (mistake, achievement, failure, success, blame, responsible)
('20000000-0000-0000-0000-000000000255', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001525", "show_image": false}'),
('20000000-0000-0000-0000-000000000255', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001528", "show_image": false}'),
('20000000-0000-0000-0000-000000000255', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001530", "show_image": false}'),
('20000000-0000-0000-0000-000000000255', 'multiple_choice', 4, '{"question": "If I hadn''t made that ___, things would be different.", "audio_text": null, "options": ["mistake", "achievement", "success"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000255', 'multiple_choice', 5, '{"question": "What does ''blame'' mean?", "audio_text": null, "options": ["Culpar", "Agradecer", "Perdoar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000255', 'matching', 6, '{"pairs": [{"left": "mistake", "right": "erro"}, {"left": "achievement", "right": "conquista"}, {"left": "failure", "right": "fracasso"}, {"left": "success", "right": "sucesso"}, {"left": "blame", "right": "culpar"}, {"left": "responsible", "right": "responsável"}]}'),
('20000000-0000-0000-0000-000000000255', 'fill_blank', 7, '{"sentence": "The project ended in ___.", "options": ["failure", "success", "achievement"], "correct": "failure", "translation": "O projeto terminou em fracasso."}'),
('20000000-0000-0000-0000-000000000255', 'fill_blank', 8, '{"sentence": "She felt ___ for the mistake.", "options": ["responsible", "blame", "wisdom"], "correct": "responsible", "translation": "Ela se sentiu responsável pelo erro."}'),
('20000000-0000-0000-0000-000000000255', 'word_order', 9, '{"words": ["Finishing", "the", "marathon", "was", "a", "great", "achievement"], "correct_sentence": "Finishing the marathon was a great achievement", "translation": "Terminar a maratona foi uma grande conquista"}'),
('20000000-0000-0000-0000-000000000255', 'word_order', 10, '{"words": ["Don''t", "blame", "yourself", "for", "what", "happened"], "correct_sentence": "Don''t blame yourself for what happened", "translation": "Não se culpe pelo que aconteceu"}'),
('20000000-0000-0000-0000-000000000255', 'reading', 11, '{"passage": "If we had never made mistakes, we would never have learned from failure. Every success is often built on lessons from the past. It is important not to blame yourself forever, but it is healthy to feel responsible enough to grow from the experience.", "translation": "Se nunca tivéssemos cometido erros, nunca teríamos aprendido com o fracasso. Todo sucesso muitas vezes é construído sobre lições do passado. É importante não se culpar para sempre, mas é saudável se sentir responsável o suficiente para crescer com a experiência.", "question": "What is often built on lessons from the past, according to the text?", "options": ["Every failure", "Every success", "Every mistake"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000255', 'listening', 12, '{"audio_text": "The project ended in failure. She felt responsible for the mistake. Finishing the marathon was a great achievement.", "question": "How did the project end, according to the audio?", "options": ["In success", "In failure", "In an achievement"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000255', 'dictation', 13, '{"audio_text": "Don''t blame yourself for what happened.", "expected": "Don''t blame yourself for what happened."}'),
('20000000-0000-0000-0000-000000000255', 'typing', 14, '{"prompt_pt": "Traduza usando Third Conditional: ''Se ela não tivesse cometido aquele erro, teria tido sucesso.''", "expected": "If she hadn''t made that mistake, she would have succeeded.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000255', 'typing', 15, '{"prompt_pt": "Traduza usando Mixed Conditional: ''Se eu tivesse trabalhado mais, eu seria responsável por esse sucesso hoje.''", "expected": "If I had worked harder, I would be responsible for this success today.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

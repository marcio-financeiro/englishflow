-- ============================================================
-- Migration 057: Conteúdo B1 — Módulo 16 "Gerúndios e Infinitivos"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-056)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001351', 'enjoy', '/ɪnˈdʒɔɪ/', 'verb', 'apreciar, gostar de', 'I enjoy reading before bed.', 'Eu gosto de ler antes de dormir.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001352', 'avoid', '/əˈvɔɪd/', 'verb', 'evitar', 'She avoids eating late at night.', 'Ela evita comer tarde da noite.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001353', 'suggest', '/səˈdʒest/', 'verb', 'sugerir', 'He suggested taking a shorter route.', 'Ele sugeriu pegar um caminho mais curto.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001354', 'mind', '/maɪnd/', 'verb', 'importar-se com', 'Do you mind waiting a few minutes?', 'Você se importa de esperar alguns minutos?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001355', 'finish', '/ˈfɪnɪʃ/', 'verb', 'terminar', 'I finished writing the report at noon.', 'Eu terminei de escrever o relatório ao meio-dia.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001356', 'keep', '/kiːp/', 'verb', 'continuar', 'They kept talking during the movie.', 'Eles continuaram conversando durante o filme.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001357', 'imagine', '/ɪˈmædʒɪn/', 'verb', 'imaginar', 'Imagine living on a beach every day.', 'Imagine morar numa praia todo dia.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001358', 'consider', '/kənˈsɪdər/', 'verb', 'considerar', 'We are considering moving to another city.', 'Estamos considerando nos mudar para outra cidade.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001359', 'practice', '/ˈpræktɪs/', 'verb', 'praticar', 'She practices speaking English every day.', 'Ela pratica falar inglês todos os dias.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001360', 'quit', '/kwɪt/', 'verb', 'parar, largar', 'He quit smoking last year.', 'Ele parou de fumar no ano passado.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001361', 'want', '/wɒnt/', 'verb', 'querer', 'I want to travel next summer.', 'Eu quero viajar no próximo verão.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001362', 'decide', '/dɪˈsaɪd/', 'verb', 'decidir', 'They decided to sell the house.', 'Eles decidiram vender a casa.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001363', 'hope', '/hoʊp/', 'verb', 'esperar (desejar)', 'I hope to finish the project soon.', 'Espero terminar o projeto em breve.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001364', 'plan', '/plæn/', 'verb', 'planejar', 'We plan to visit Portugal next year.', 'Planejamos visitar Portugal no ano que vem.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001365', 'promise', '/ˈprɒmɪs/', 'verb', 'prometer', 'She promised to call me back.', 'Ela prometeu me ligar de volta.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001366', 'refuse', '/rɪˈfjuːz/', 'verb', 'recusar', 'He refused to sign the contract.', 'Ele se recusou a assinar o contrato.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001367', 'manage', '/ˈmænɪdʒ/', 'verb', 'conseguir', 'She managed to finish on time.', 'Ela conseguiu terminar a tempo.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001368', 'afford', '/əˈfɔːrd/', 'verb', 'ter condições de', 'We can''t afford to buy a new car now.', 'Não temos condições de comprar um carro novo agora.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001369', 'expect', '/ɪkˈspekt/', 'verb', 'esperar, contar com', 'I expect to arrive before six.', 'Espero chegar antes das seis.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001370', 'offer', '/ˈɒfər/', 'verb', 'oferecer-se', 'He offered to help with the boxes.', 'Ele se ofereceu para ajudar com as caixas.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001371', 'deserve', '/dɪˈzɜːrv/', 'verb', 'merecer', 'You deserve to rest after that.', 'Você merece descansar depois disso.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001372', 'seem', '/siːm/', 'verb', 'parecer', 'She seems to know the answer.', 'Ela parece saber a resposta.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001373', 'stop', '/stɒp/', 'verb', 'parar', 'We stopped to rest for ten minutes.', 'Paramos para descansar por dez minutos.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001374', 'remember', '/rɪˈmembər/', 'verb', 'lembrar', 'Remember to lock the door tonight.', 'Lembre-se de trancar a porta hoje à noite.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001375', 'regret', '/rɪˈɡret/', 'verb', 'arrepender-se, lamentar', 'I regret to inform you that the flight is cancelled.', 'Lamento informar que o voo foi cancelado.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001376', 'try', '/traɪ/', 'verb', 'tentar', 'Try turning it off and on again.', 'Tente desligar e ligar de novo.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001377', 'love', '/lʌv/', 'verb', 'amar, adorar', 'She loves cooking on weekends.', 'Ela adora cozinhar nos fins de semana.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001378', 'like', '/laɪk/', 'verb', 'gostar', 'I like walking in the park.', 'Eu gosto de caminhar no parque.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001379', 'prefer', '/prɪˈfɜːr/', 'verb', 'preferir', 'I prefer working in the morning.', 'Eu prefiro trabalhar de manhã.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001380', 'start', '/stɑːrt/', 'verb', 'começar', 'It started raining during the match.', 'Começou a chover durante a partida.', 'B1', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000046', 'B1', 'Gerúndios e Infinitivos', 'Aprenda quais verbos são seguidos por gerúndio (-ing), quais são seguidos por infinitivo (to + verbo) e quais mudam de sentido conforme a forma usada.', 16, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000226', '10000000-0000-0000-0000-000000000046', 'Verbos + -ing', 1, 20),
('20000000-0000-0000-0000-000000000227', '10000000-0000-0000-0000-000000000046', 'Mais verbos + -ing', 2, 20),
('20000000-0000-0000-0000-000000000228', '10000000-0000-0000-0000-000000000046', 'Verbos + infinitivo', 3, 20),
('20000000-0000-0000-0000-000000000229', '10000000-0000-0000-0000-000000000046', 'Mais verbos + infinitivo', 4, 20),
('20000000-0000-0000-0000-000000000230', '10000000-0000-0000-0000-000000000046', 'Revisão: verbos que mudam de sentido', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 226: Verbos + -ing (enjoy, avoid, suggest, mind, finish, keep)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000226', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001351", "show_image": false}'),
('20000000-0000-0000-0000-000000000226', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001352", "show_image": false}'),
('20000000-0000-0000-0000-000000000226', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001353", "show_image": false}'),
('20000000-0000-0000-0000-000000000226', 'multiple_choice', 4, '{"question": "I enjoy ___ before bed.", "audio_text": null, "options": ["reading", "to read", "read"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000226', 'multiple_choice', 5, '{"question": "Do you mind ___ a few minutes?", "audio_text": null, "options": ["waiting", "to wait", "wait"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000226', 'matching', 6, '{"pairs": [{"left": "enjoy", "right": "apreciar"}, {"left": "avoid", "right": "evitar"}, {"left": "suggest", "right": "sugerir"}, {"left": "mind", "right": "importar-se"}, {"left": "finish", "right": "terminar"}, {"left": "keep", "right": "continuar"}]}'),
('20000000-0000-0000-0000-000000000226', 'fill_blank', 7, '{"sentence": "She avoids ___ late at night.", "options": ["eating", "to eat", "eat"], "correct": "eating", "translation": "Ela evita comer tarde da noite."}'),
('20000000-0000-0000-0000-000000000226', 'fill_blank', 8, '{"sentence": "He suggested ___ a shorter route.", "options": ["taking", "to take", "take"], "correct": "taking", "translation": "Ele sugeriu pegar um caminho mais curto."}'),
('20000000-0000-0000-0000-000000000226', 'word_order', 9, '{"words": ["I", "finished", "writing", "the", "report", "at", "noon"], "correct_sentence": "I finished writing the report at noon", "translation": "Eu terminei de escrever o relatório ao meio-dia"}'),
('20000000-0000-0000-0000-000000000226', 'word_order', 10, '{"words": ["They", "kept", "talking", "during", "the", "movie"], "correct_sentence": "They kept talking during the movie", "translation": "Eles continuaram conversando durante o filme"}'),
('20000000-0000-0000-0000-000000000226', 'reading', 11, '{"passage": "Many verbs in English are followed by the -ing form. We enjoy doing things we like, we avoid doing things that are bad for us, and we often suggest doing something new. If you finish doing a task, you can keep doing the next one.", "translation": "Muitos verbos em inglês são seguidos pela forma -ing. Nós apreciamos fazer coisas que gostamos, evitamos fazer coisas que são ruins para nós, e frequentemente sugerimos fazer algo novo. Se você termina de fazer uma tarefa, pode continuar fazendo a próxima.", "question": "According to the text, what do we often do with new things?", "options": ["Avoid them", "Suggest doing them", "Finish them"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000226', 'listening', 12, '{"audio_text": "I enjoy reading before bed. She avoids eating late. He suggested taking a shorter route.", "question": "What does the speaker enjoy doing?", "options": ["Eating late", "Reading before bed", "Taking a shorter route"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000226', 'dictation', 13, '{"audio_text": "I enjoy reading before bed.", "expected": "I enjoy reading before bed."}'),
('20000000-0000-0000-0000-000000000226', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela evita comer tarde e continua praticando todos os dias.''", "expected": "She avoids eating late and keeps practicing every day.", "ai_review": true}'),

-- Lição 227: Mais verbos + -ing (imagine, consider, practice, quit, want, decide)
('20000000-0000-0000-0000-000000000227', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001357", "show_image": false}'),
('20000000-0000-0000-0000-000000000227', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001358", "show_image": false}'),
('20000000-0000-0000-0000-000000000227', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001360", "show_image": false}'),
('20000000-0000-0000-0000-000000000227', 'multiple_choice', 4, '{"question": "We are considering ___ to another city.", "audio_text": null, "options": ["moving", "to move", "move"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000227', 'multiple_choice', 5, '{"question": "Which verb is usually followed by ''to'' + verb, not -ing?", "audio_text": null, "options": ["want", "avoid", "enjoy"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000227', 'matching', 6, '{"pairs": [{"left": "imagine", "right": "imaginar"}, {"left": "consider", "right": "considerar"}, {"left": "practice", "right": "praticar"}, {"left": "quit", "right": "parar, largar"}, {"left": "want", "right": "querer"}, {"left": "decide", "right": "decidir"}]}'),
('20000000-0000-0000-0000-000000000227', 'fill_blank', 7, '{"sentence": "She practices ___ English every day.", "options": ["speaking", "to speak", "speak"], "correct": "speaking", "translation": "Ela pratica falar inglês todos os dias."}'),
('20000000-0000-0000-0000-000000000227', 'fill_blank', 8, '{"sentence": "I want ___ next summer.", "options": ["to travel", "traveling", "travel"], "correct": "to travel", "translation": "Eu quero viajar no próximo verão."}'),
('20000000-0000-0000-0000-000000000227', 'word_order', 9, '{"words": ["He", "quit", "smoking", "last", "year"], "correct_sentence": "He quit smoking last year", "translation": "Ele parou de fumar no ano passado"}'),
('20000000-0000-0000-0000-000000000227', 'word_order', 10, '{"words": ["They", "decided", "to", "sell", "the", "house"], "correct_sentence": "They decided to sell the house", "translation": "Eles decidiram vender a casa"}'),
('20000000-0000-0000-0000-000000000227', 'reading', 11, '{"passage": "Some verbs, like imagine and consider, are followed by the -ing form. Other verbs, like want and decide, are followed by to + verb. He quit smoking last year and now practices running instead.", "translation": "Alguns verbos, como imagine e consider, são seguidos pela forma -ing. Outros verbos, como want e decide, são seguidos por to + verbo. Ele parou de fumar no ano passado e agora pratica corrida no lugar.", "question": "What does he practice now instead of smoking?", "options": ["Reading", "Running", "Cooking"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000227', 'listening', 12, '{"audio_text": "We are considering moving to another city. She practices speaking English every day. He quit smoking last year.", "question": "What is the speaker considering doing?", "options": ["Quitting a hobby", "Moving to another city", "Learning Spanish"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000227', 'dictation', 13, '{"audio_text": "We are considering moving to another city.", "expected": "We are considering moving to another city."}'),
('20000000-0000-0000-0000-000000000227', 'typing', 14, '{"prompt_pt": "Traduza: ''Eles decidiram parar de fumar e querem começar a correr.''", "expected": "They decided to quit smoking and want to start running.", "ai_review": true}'),

-- Lição 228: Verbos + infinitivo (hope, plan, promise, refuse, manage, afford)
('20000000-0000-0000-0000-000000000228', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001363", "show_image": false}'),
('20000000-0000-0000-0000-000000000228', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001364", "show_image": false}'),
('20000000-0000-0000-0000-000000000228', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001366", "show_image": false}'),
('20000000-0000-0000-0000-000000000228', 'multiple_choice', 4, '{"question": "I hope ___ the project soon.", "audio_text": null, "options": ["to finish", "finishing", "finish"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000228', 'multiple_choice', 5, '{"question": "He refused ___ the contract.", "audio_text": null, "options": ["to sign", "signing", "sign"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000228', 'matching', 6, '{"pairs": [{"left": "hope", "right": "esperar"}, {"left": "plan", "right": "planejar"}, {"left": "promise", "right": "prometer"}, {"left": "refuse", "right": "recusar"}, {"left": "manage", "right": "conseguir"}, {"left": "afford", "right": "ter condições de"}]}'),
('20000000-0000-0000-0000-000000000228', 'fill_blank', 7, '{"sentence": "We plan ___ Portugal next year.", "options": ["to visit", "visiting", "visit"], "correct": "to visit", "translation": "Planejamos visitar Portugal no ano que vem."}'),
('20000000-0000-0000-0000-000000000228', 'fill_blank', 8, '{"sentence": "She promised ___ me back.", "options": ["to call", "calling", "call"], "correct": "to call", "translation": "Ela prometeu me ligar de volta."}'),
('20000000-0000-0000-0000-000000000228', 'word_order', 9, '{"words": ["She", "managed", "to", "finish", "on", "time"], "correct_sentence": "She managed to finish on time", "translation": "Ela conseguiu terminar a tempo"}'),
('20000000-0000-0000-0000-000000000228', 'word_order', 10, '{"words": ["We", "can", "not", "afford", "to", "buy", "a", "car"], "correct_sentence": "We can not afford to buy a car", "translation": "Não temos condições de comprar um carro"}'),
('20000000-0000-0000-0000-000000000228', 'reading', 11, '{"passage": "Verbs like hope, plan, promise, and refuse are always followed by to + verb. She managed to finish the project even though the team could not afford to hire more people.", "translation": "Verbos como hope, plan, promise e refuse são sempre seguidos por to + verbo. Ela conseguiu terminar o projeto mesmo que a equipe não tivesse condições de contratar mais pessoas.", "question": "Why could the team not hire more people?", "options": ["They refused to", "They could not afford it", "They did not plan to"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000228', 'listening', 12, '{"audio_text": "I hope to finish the project soon. We plan to visit Portugal next year. She promised to call me back.", "question": "What does the speaker plan to do next year?", "options": ["Finish a project", "Visit Portugal", "Call someone"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000228', 'dictation', 13, '{"audio_text": "I hope to finish the project soon.", "expected": "I hope to finish the project soon."}'),
('20000000-0000-0000-0000-000000000228', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela prometeu ligar, mas se recusou a esperar.''", "expected": "She promised to call, but she refused to wait.", "ai_review": true}'),

-- Lição 229: Mais verbos + infinitivo (expect, offer, deserve, seem, stop, remember)
('20000000-0000-0000-0000-000000000229', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001369", "show_image": false}'),
('20000000-0000-0000-0000-000000000229', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001370", "show_image": false}'),
('20000000-0000-0000-0000-000000000229', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001372", "show_image": false}'),
('20000000-0000-0000-0000-000000000229', 'multiple_choice', 4, '{"question": "He offered ___ with the boxes.", "audio_text": null, "options": ["to help", "helping", "help"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000229', 'multiple_choice', 5, '{"question": "She seems ___ the answer.", "audio_text": null, "options": ["to know", "knowing", "know"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000229', 'matching', 6, '{"pairs": [{"left": "expect", "right": "esperar, contar com"}, {"left": "offer", "right": "oferecer-se"}, {"left": "deserve", "right": "merecer"}, {"left": "seem", "right": "parecer"}, {"left": "stop", "right": "parar"}, {"left": "remember", "right": "lembrar"}]}'),
('20000000-0000-0000-0000-000000000229', 'fill_blank', 7, '{"sentence": "I expect ___ before six.", "options": ["to arrive", "arriving", "arrive"], "correct": "to arrive", "translation": "Espero chegar antes das seis."}'),
('20000000-0000-0000-0000-000000000229', 'fill_blank', 8, '{"sentence": "You deserve ___ after that.", "options": ["to rest", "resting", "rest"], "correct": "to rest", "translation": "Você merece descansar depois disso."}'),
('20000000-0000-0000-0000-000000000229', 'word_order', 9, '{"words": ["We", "stopped", "to", "rest", "for", "ten", "minutes"], "correct_sentence": "We stopped to rest for ten minutes", "translation": "Paramos para descansar por dez minutos"}'),
('20000000-0000-0000-0000-000000000229', 'word_order', 10, '{"words": ["Remember", "to", "lock", "the", "door", "tonight"], "correct_sentence": "Remember to lock the door tonight", "translation": "Lembre-se de trancar a porta hoje à noite"}'),
('20000000-0000-0000-0000-000000000229', 'reading', 11, '{"passage": "We stopped to rest for ten minutes, and I remembered to lock the door before leaving. She seems to know exactly what to do, and she deserves to be recognized for her hard work.", "translation": "Paramos para descansar por dez minutos, e eu lembrei de trancar a porta antes de sair. Ela parece saber exatamente o que fazer, e ela merece ser reconhecida pelo trabalho duro.", "question": "What did the speaker remember to do?", "options": ["Lock the door", "Call a friend", "Buy food"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000229', 'listening', 12, '{"audio_text": "He offered to help with the boxes. She seems to know the answer. Remember to lock the door tonight.", "question": "What did he offer to do?", "options": ["Cook dinner", "Help with the boxes", "Lock the door"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000229', 'dictation', 13, '{"audio_text": "Remember to lock the door tonight.", "expected": "Remember to lock the door tonight."}'),
('20000000-0000-0000-0000-000000000229', 'typing', 14, '{"prompt_pt": "Traduza: ''Ele se ofereceu para ajudar e parou para descansar depois.''", "expected": "He offered to help and stopped to rest afterwards.", "ai_review": true}'),

-- Lição 230: Revisão + verbos que mudam de sentido (regret, try, love, like, prefer, start)
('20000000-0000-0000-0000-000000000230', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001375", "show_image": false}'),
('20000000-0000-0000-0000-000000000230', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001376", "show_image": false}'),
('20000000-0000-0000-0000-000000000230', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001379", "show_image": false}'),
('20000000-0000-0000-0000-000000000230', 'multiple_choice', 4, '{"question": "Try ___ it off and on again — that usually fixes it.", "audio_text": null, "options": ["turning", "to turn (only)", "turned"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000230', 'multiple_choice', 5, '{"question": "I regret ___ you that the flight is cancelled.", "audio_text": null, "options": ["to inform", "informing", "inform"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000230', 'matching', 6, '{"pairs": [{"left": "regret", "right": "arrepender-se, lamentar"}, {"left": "try", "right": "tentar"}, {"left": "love", "right": "amar, adorar"}, {"left": "like", "right": "gostar"}, {"left": "prefer", "right": "preferir"}, {"left": "start", "right": "começar"}]}'),
('20000000-0000-0000-0000-000000000230', 'fill_blank', 7, '{"sentence": "She loves ___ on weekends.", "options": ["cooking", "cooked", "cook"], "correct": "cooking", "translation": "Ela adora cozinhar nos fins de semana."}'),
('20000000-0000-0000-0000-000000000230', 'fill_blank', 8, '{"sentence": "I prefer ___ in the morning.", "options": ["working", "worked", "works"], "correct": "working", "translation": "Eu prefiro trabalhar de manhã."}'),
('20000000-0000-0000-0000-000000000230', 'word_order', 9, '{"words": ["It", "started", "raining", "during", "the", "match"], "correct_sentence": "It started raining during the match", "translation": "Começou a chover durante a partida"}'),
('20000000-0000-0000-0000-000000000230', 'word_order', 10, '{"words": ["I", "like", "walking", "in", "the", "park"], "correct_sentence": "I like walking in the park", "translation": "Eu gosto de caminhar no parque"}'),
('20000000-0000-0000-0000-000000000230', 'reading', 11, '{"passage": "Some verbs, like try, remember, and stop, can change meaning depending on whether they are followed by -ing or to + verb. For example, ''try turning it off'' means testing a solution, while ''try to turn it off'' means making an effort. Verbs like love, like, prefer, and start usually work with both forms, with little change in meaning.", "translation": "Alguns verbos, como try, remember e stop, podem mudar de sentido dependendo se são seguidos por -ing ou to + verbo. Por exemplo, ''try turning it off'' significa testar uma solução, enquanto ''try to turn it off'' significa fazer um esforço. Verbos como love, like, prefer e start geralmente funcionam com as duas formas, com pouca mudança de sentido.", "question": "What does ''try turning it off'' mean, according to the text?", "options": ["Making a big effort", "Testing a solution", "Refusing to do it"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000230', 'listening', 12, '{"audio_text": "Try turning it off and on again. I regret to inform you the flight is cancelled. She loves cooking on weekends.", "question": "What does the speaker regret?", "options": ["Cooking on weekends", "Informing about the cancelled flight", "Turning off the device"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000230', 'dictation', 13, '{"audio_text": "Try turning it off and on again.", "expected": "Try turning it off and on again."}'),
('20000000-0000-0000-0000-000000000230', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu prefiro tentar de novo antes de desistir.''", "expected": "I prefer trying again before giving up.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000230', 'typing', 15, '{"prompt_pt": "Traduza: ''Ela gosta de cozinhar, mas prefere comer fora.''", "expected": "She likes cooking, but she prefers eating out.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

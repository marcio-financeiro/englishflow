-- ============================================================
-- Migration 056: Conteúdo B1 — Módulo 15 "Past Perfect & Narrative Tenses"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-055)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001321', 'suddenly', '/ˈsʌdənli/', 'adverb', 'de repente', 'Suddenly, the lights went out.', 'De repente, as luzes se apagaram.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001322', 'meanwhile', '/ˈmiːnwaɪl/', 'adverb', 'enquanto isso', 'Meanwhile, the rest of the team kept working.', 'Enquanto isso, o resto da equipe continuou trabalhando.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001323', 'eventually', '/ɪˈventʃuəli/', 'adverb', 'finalmente, eventualmente', 'Eventually, they found a solution.', 'Finalmente, eles encontraram uma solução.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001324', 'finally', '/ˈfaɪnəli/', 'adverb', 'finalmente', 'Finally, the plane landed safely.', 'Finalmente, o avião pousou em segurança.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001325', 'previously', '/ˈpriːviəsli/', 'adverb', 'anteriormente', 'She had previously worked in another city.', 'Ela tinha trabalhado anteriormente em outra cidade.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001326', 'afterwards', '/ˈæftərwərdz/', 'adverb', 'depois, posteriormente', 'We had dinner and went for a walk afterwards.', 'Nós jantamos e fomos passear depois.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001327', 'earlier', '/ˈɜːrliər/', 'adverb', 'mais cedo, anteriormente', 'He had left earlier that day.', 'Ele tinha saído mais cedo naquele dia.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001328', 'once', '/wʌns/', 'adverb', 'uma vez, quando', 'Once she arrived, the meeting started.', 'Assim que ela chegou, a reunião começou.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001329', 'arrive', '/əˈraɪv/', 'verb', 'chegar', 'By the time we arrived, the train had left.', 'Quando chegamos, o trem já tinha partido.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001330', 'leave', '/liːv/', 'verb', 'partir, sair', 'She had already left when I called.', 'Ela já tinha saído quando eu liguei.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001331', 'realize', '/ˈriːəlaɪz/', 'verb', 'perceber', 'He realized he had forgotten his passport.', 'Ele percebeu que tinha esquecido o passaporte.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001332', 'discover', '/dɪˈskʌvər/', 'verb', 'descobrir', 'They discovered the door had been left open.', 'Eles descobriram que a porta tinha ficado aberta.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001333', 'remember', '/rɪˈmembər/', 'verb', 'lembrar', 'I remembered I had left my keys at home.', 'Eu lembrei que tinha deixado as chaves em casa.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001334', 'forget', '/fərˈɡet/', 'verb', 'esquecer', 'She forgot she had already sent the email.', 'Ela esqueceu que já tinha enviado o e-mail.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001335', 'happen', '/ˈhæpən/', 'verb', 'acontecer', 'Nobody knew what had happened before we arrived.', 'Ninguém sabia o que tinha acontecido antes de chegarmos.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001336', 'occur', '/əˈkɜːr/', 'verb', 'ocorrer', 'The accident had occurred an hour earlier.', 'O acidente tinha ocorrido uma hora antes.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001337', 'event', '/ɪˈvent/', 'noun', 'evento', 'It was the most important event of the year.', 'Foi o evento mais importante do ano.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001338', 'incident', '/ˈɪnsɪdənt/', 'noun', 'incidente', 'The whole story started with a strange incident.', 'Toda a história começou com um incidente estranho.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001339', 'memory', '/ˈmeməri/', 'noun', 'memória, lembrança', 'That trip is still a vivid memory for me.', 'Aquela viagem ainda é uma lembrança vívida para mim.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001340', 'experience', '/ɪkˈspɪriəns/', 'noun', 'experiência', 'It was an experience I will never forget.', 'Foi uma experiência que eu nunca vou esquecer.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001341', 'journey', '/ˈdʒɜːrni/', 'noun', 'jornada, viagem', 'The journey had already taken three days.', 'A jornada já tinha durado três dias.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001342', 'adventure', '/ədˈventʃər/', 'noun', 'aventura', 'It became the biggest adventure of our lives.', 'Tornou-se a maior aventura das nossas vidas.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001343', 'by the time', '/baɪ ðə taɪm/', 'phrase', 'quando, até que', 'By the time we got there, the show had ended.', 'Quando chegamos lá, o show já tinha terminado.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001344', 'before', '/bɪˈfɔːr/', 'conjunction', 'antes', 'She had checked the map before leaving.', 'Ela tinha verificado o mapa antes de sair.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001345', 'after', '/ˈæftər/', 'conjunction', 'depois', 'They went home after the movie had finished.', 'Eles foram para casa depois que o filme tinha terminado.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001346', 'while', '/waɪl/', 'conjunction', 'enquanto', 'While she was cooking, the phone rang.', 'Enquanto ela cozinhava, o telefone tocou.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001347', 'during', '/ˈdʊrɪŋ/', 'preposition', 'durante', 'A lot had changed during the trip.', 'Muita coisa tinha mudado durante a viagem.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001348', 'already', '/ɔːlˈredi/', 'adverb', 'já', 'By six o''clock, they had already left.', 'Às seis horas, eles já tinham saído.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001349', 'just', '/dʒʌst/', 'adverb', 'apenas, acabou de', 'She had just arrived when the phone rang.', 'Ela tinha acabado de chegar quando o telefone tocou.', 'B1', array['narrative']),
('30000000-0000-0000-0000-000000001350', 'yet', '/jet/', 'adverb', 'ainda, já', 'They had not finished the journey yet.', 'Eles ainda não tinham terminado a jornada.', 'B1', array['narrative']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000045', 'B1', 'Past Perfect & Narrative Tenses', 'Aprenda a usar o Past Perfect (had + particípio) para contar histórias, mostrar a ordem dos eventos e narrar experiências no passado.', 15, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000221', '10000000-0000-0000-0000-000000000045', 'Past Perfect — Introdução', 1, 20),
('20000000-0000-0000-0000-000000000222', '10000000-0000-0000-0000-000000000045', 'Past Perfect x Past Simple', 2, 20),
('20000000-0000-0000-0000-000000000223', '10000000-0000-0000-0000-000000000045', 'Advérbios de sequência narrativa', 3, 20),
('20000000-0000-0000-0000-000000000224', '10000000-0000-0000-0000-000000000045', 'Contando uma história', 4, 20),
('20000000-0000-0000-0000-000000000225', '10000000-0000-0000-0000-000000000045', 'Revisão: narrativa completa', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 221: Past Perfect — Introdução (suddenly, meanwhile, eventually, finally, previously, afterwards)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000221', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001321", "show_image": false}'),
('20000000-0000-0000-0000-000000000221', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001323", "show_image": false}'),
('20000000-0000-0000-0000-000000000221', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001325", "show_image": false}'),
('20000000-0000-0000-0000-000000000221', 'multiple_choice', 4, '{"question": "She ___ worked in another city before this job.", "audio_text": null, "options": ["had previously", "previously has", "was previously"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000221', 'multiple_choice', 5, '{"question": "What does ''suddenly'' mean?", "audio_text": null, "options": ["De repente", "Enquanto isso", "Finalmente"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000221', 'matching', 6, '{"pairs": [{"left": "suddenly", "right": "de repente"}, {"left": "meanwhile", "right": "enquanto isso"}, {"left": "eventually", "right": "finalmente"}, {"left": "finally", "right": "finalmente"}, {"left": "previously", "right": "anteriormente"}, {"left": "afterwards", "right": "depois"}]}'),
('20000000-0000-0000-0000-000000000221', 'fill_blank', 7, '{"sentence": "___, the lights went out during the storm.", "options": ["Suddenly", "Previously", "Afterwards"], "correct": "Suddenly", "translation": "De repente, as luzes se apagaram durante a tempestade."}'),
('20000000-0000-0000-0000-000000000221', 'fill_blank', 8, '{"sentence": "We had dinner and went for a walk ___.", "options": ["afterwards", "meanwhile", "previously"], "correct": "afterwards", "translation": "Nós jantamos e fomos passear depois."}'),
('20000000-0000-0000-0000-000000000221', 'word_order', 9, '{"words": ["Eventually", "they", "found", "a", "solution"], "correct_sentence": "Eventually they found a solution", "translation": "Finalmente eles encontraram uma solução"}'),
('20000000-0000-0000-0000-000000000221', 'word_order', 10, '{"words": ["She", "had", "previously", "worked", "in", "Paris"], "correct_sentence": "She had previously worked in Paris", "translation": "Ela tinha trabalhado anteriormente em Paris"}'),
('20000000-0000-0000-0000-000000000221', 'reading', 11, '{"passage": "The trip had already started when the storm began. Suddenly, the wind grew strong. Meanwhile, the guide tried to find shelter. Eventually, everyone was safe, and finally, the sun came out again.", "translation": "A viagem já tinha começado quando a tempestade chegou. De repente, o vento ficou forte. Enquanto isso, o guia tentou encontrar abrigo. Finalmente, todos ficaram a salvo, e por fim, o sol voltou a aparecer.", "question": "What did the guide try to do during the storm?", "options": ["Find shelter", "Leave the group", "Call for help"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000221', 'listening', 12, '{"audio_text": "The trip had already started when suddenly the storm began. Meanwhile, the guide looked for shelter. Eventually, everyone was safe.", "question": "What happened suddenly during the trip?", "options": ["A storm began", "The guide left", "The trip ended"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000221', 'dictation', 13, '{"audio_text": "Suddenly, the lights went out.", "expected": "Suddenly, the lights went out."}'),
('20000000-0000-0000-0000-000000000221', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela tinha trabalhado anteriormente em outra cidade.''", "expected": "She had previously worked in another city.", "ai_review": true}'),

-- Lição 222: Past Perfect x Past Simple (earlier, once, arrive, leave, realize, discover)
('20000000-0000-0000-0000-000000000222', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001329", "show_image": false}'),
('20000000-0000-0000-0000-000000000222', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001330", "show_image": false}'),
('20000000-0000-0000-0000-000000000222', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001332", "show_image": false}'),
('20000000-0000-0000-0000-000000000222', 'multiple_choice', 4, '{"question": "By the time we arrived, the train ___.", "audio_text": null, "options": ["had left", "left", "was leaving"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000222', 'multiple_choice', 5, '{"question": "Which sentence uses the Past Perfect correctly?", "audio_text": null, "options": ["She had already left when I called.", "She has already left when I called.", "She already leaves when I called."], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000222', 'matching', 6, '{"pairs": [{"left": "earlier", "right": "mais cedo"}, {"left": "once", "right": "assim que"}, {"left": "arrive", "right": "chegar"}, {"left": "leave", "right": "partir"}, {"left": "realize", "right": "perceber"}, {"left": "discover", "right": "descobrir"}]}'),
('20000000-0000-0000-0000-000000000222', 'fill_blank', 7, '{"sentence": "He ___ he had forgotten his passport.", "options": ["realized", "realizes", "had realize"], "correct": "realized", "translation": "Ele percebeu que tinha esquecido o passaporte."}'),
('20000000-0000-0000-0000-000000000222', 'fill_blank', 8, '{"sentence": "They ___ the door had been left open.", "options": ["discovered", "discover", "had discovering"], "correct": "discovered", "translation": "Eles descobriram que a porta tinha ficado aberta."}'),
('20000000-0000-0000-0000-000000000222', 'word_order', 9, '{"words": ["Once", "she", "arrived", "the", "meeting", "started"], "correct_sentence": "Once she arrived the meeting started", "translation": "Assim que ela chegou a reunião começou"}'),
('20000000-0000-0000-0000-000000000222', 'word_order', 10, '{"words": ["He", "had", "left", "earlier", "that", "day"], "correct_sentence": "He had left earlier that day", "translation": "Ele tinha saído mais cedo naquele dia"}'),
('20000000-0000-0000-0000-000000000222', 'reading', 11, '{"passage": "When we arrived at the station, we realized the train had already left. We had missed it by five minutes. Once we discovered this, we decided to wait for the next one, which came an hour earlier than expected.", "translation": "Quando chegamos à estação, percebemos que o trem já tinha partido. Tínhamos perdido por cinco minutos. Assim que descobrimos isso, decidimos esperar pelo próximo, que chegou uma hora mais cedo do que esperávamos.", "question": "What had happened by the time they arrived at the station?", "options": ["The train had left", "The train had not arrived yet", "The station was closed"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000222', 'listening', 12, '{"audio_text": "When we arrived, we realized the train had already left. We had missed it by five minutes.", "question": "By how many minutes did they miss the train?", "options": ["Five", "Ten", "Fifteen"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000222', 'dictation', 13, '{"audio_text": "By the time we arrived, the train had left.", "expected": "By the time we arrived, the train had left."}'),
('20000000-0000-0000-0000-000000000222', 'typing', 14, '{"prompt_pt": "Traduza: ''Quando chegamos, o filme já tinha começado.''", "expected": "By the time we arrived, the movie had already started.", "ai_review": true}'),

-- Lição 223: Advérbios de sequência narrativa (happen, occur, event, incident, memory, experience)
('20000000-0000-0000-0000-000000000223', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001335", "show_image": false}'),
('20000000-0000-0000-0000-000000000223', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001337", "show_image": false}'),
('20000000-0000-0000-0000-000000000223', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001340", "show_image": false}'),
('20000000-0000-0000-0000-000000000223', 'multiple_choice', 4, '{"question": "The accident had ___ an hour earlier.", "audio_text": null, "options": ["occurred", "occur", "occurring"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000223', 'multiple_choice', 5, '{"question": "What does ''incident'' mean?", "audio_text": null, "options": ["Incidente", "Memória", "Aventura"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000223', 'matching', 6, '{"pairs": [{"left": "happen", "right": "acontecer"}, {"left": "occur", "right": "ocorrer"}, {"left": "event", "right": "evento"}, {"left": "incident", "right": "incidente"}, {"left": "memory", "right": "memória"}, {"left": "experience", "right": "experiência"}]}'),
('20000000-0000-0000-0000-000000000223', 'fill_blank', 7, '{"sentence": "Nobody knew what had ___ before we arrived.", "options": ["happened", "happen", "happens"], "correct": "happened", "translation": "Ninguém sabia o que tinha acontecido antes de chegarmos."}'),
('20000000-0000-0000-0000-000000000223', 'fill_blank', 8, '{"sentence": "It was an ___ I will never forget.", "options": ["experience", "incident", "event"], "correct": "experience", "translation": "Foi uma experiência que eu nunca vou esquecer."}'),
('20000000-0000-0000-0000-000000000223', 'word_order', 9, '{"words": ["It", "was", "the", "most", "important", "event", "of", "the", "year"], "correct_sentence": "It was the most important event of the year", "translation": "Foi o evento mais importante do ano"}'),
('20000000-0000-0000-0000-000000000223', 'word_order', 10, '{"words": ["That", "trip", "is", "still", "a", "vivid", "memory"], "correct_sentence": "That trip is still a vivid memory", "translation": "Aquela viagem ainda é uma lembrança vívida"}'),
('20000000-0000-0000-0000-000000000223', 'reading', 11, '{"passage": "The strange incident had happened years before, but it was still a vivid memory. Nobody understood why the event had occurred, but for everyone involved, it became an unforgettable experience.", "translation": "O incidente estranho tinha acontecido anos antes, mas ainda era uma memória vívida. Ninguém entendia por que o evento tinha ocorrido, mas para todos os envolvidos, tornou-se uma experiência inesquecível.", "question": "How long before was the incident, according to the text?", "options": ["Years before", "One day before", "It just happened"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000223', 'listening', 12, '{"audio_text": "The strange incident had happened years before. Nobody understood why it had occurred, but it became an unforgettable experience.", "question": "What became unforgettable, according to the audio?", "options": ["The location", "The experience", "The weather"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000223', 'dictation', 13, '{"audio_text": "It was an experience I will never forget.", "expected": "It was an experience I will never forget."}'),
('20000000-0000-0000-0000-000000000223', 'typing', 14, '{"prompt_pt": "Traduza: ''Ninguém sabia o que tinha acontecido antes do evento.''", "expected": "Nobody knew what had happened before the event.", "ai_review": true}'),

-- Lição 224: Contando uma história (journey, adventure, by the time, before, after, while, during)
('20000000-0000-0000-0000-000000000224', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001341", "show_image": false}'),
('20000000-0000-0000-0000-000000000224', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001342", "show_image": false}'),
('20000000-0000-0000-0000-000000000224', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001343", "show_image": false}'),
('20000000-0000-0000-0000-000000000224', 'multiple_choice', 4, '{"question": "___ she was cooking, the phone rang.", "audio_text": null, "options": ["While", "During", "By the time"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000224', 'multiple_choice', 5, '{"question": "What does ''journey'' mean?", "audio_text": null, "options": ["Jornada, viagem", "Incidente", "Memória"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000224', 'matching', 6, '{"pairs": [{"left": "journey", "right": "jornada"}, {"left": "adventure", "right": "aventura"}, {"left": "by the time", "right": "quando, até que"}, {"left": "before", "right": "antes"}, {"left": "after", "right": "depois"}, {"left": "during", "right": "durante"}]}'),
('20000000-0000-0000-0000-000000000224', 'fill_blank', 7, '{"sentence": "A lot had changed ___ the trip.", "options": ["during", "while", "before"], "correct": "during", "translation": "Muita coisa tinha mudado durante a viagem."}'),
('20000000-0000-0000-0000-000000000224', 'fill_blank', 8, '{"sentence": "She had checked the map ___ leaving.", "options": ["before", "after", "during"], "correct": "before", "translation": "Ela tinha verificado o mapa antes de sair."}'),
('20000000-0000-0000-0000-000000000224', 'word_order', 9, '{"words": ["It", "became", "the", "biggest", "adventure", "of", "our", "lives"], "correct_sentence": "It became the biggest adventure of our lives", "translation": "Tornou-se a maior aventura das nossas vidas"}'),
('20000000-0000-0000-0000-000000000224', 'word_order', 10, '{"words": ["By", "the", "time", "we", "got", "there", "the", "show", "had", "ended"], "correct_sentence": "By the time we got there the show had ended", "translation": "Quando chegamos lá o show já tinha terminado"}'),
('20000000-0000-0000-0000-000000000224', 'reading', 11, '{"passage": "The journey had already taken three days before we reached the mountains. During the trip, we faced strong winds, and while we were crossing a river, the boat almost turned over. By the time we arrived at the camp, it had become the biggest adventure of our lives.", "translation": "A jornada já tinha durado três dias antes de chegarmos às montanhas. Durante a viagem, enfrentamos ventos fortes, e enquanto atravessávamos um rio, o barco quase virou. Quando chegamos ao acampamento, tinha se tornado a maior aventura das nossas vidas.", "question": "What almost happened while crossing the river?", "options": ["The boat turned over", "They got lost", "It started raining"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000224', 'listening', 12, '{"audio_text": "The journey had already taken three days. During the trip, we faced strong winds. By the time we arrived, it had become a real adventure.", "question": "What did they face during the trip?", "options": ["Strong winds", "Heavy traffic", "A storm at sea"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000224', 'dictation', 13, '{"audio_text": "The journey had already taken three days.", "expected": "The journey had already taken three days."}'),
('20000000-0000-0000-0000-000000000224', 'typing', 14, '{"prompt_pt": "Traduza: ''Quando chegamos, a aventura já tinha começado.''", "expected": "By the time we arrived, the adventure had already started.", "ai_review": true}'),

-- Lição 225: Revisão + narrativa completa (already, just, yet + revisão geral)
('20000000-0000-0000-0000-000000000225', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001348", "show_image": false}'),
('20000000-0000-0000-0000-000000000225', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001349", "show_image": false}'),
('20000000-0000-0000-0000-000000000225', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001350", "show_image": false}'),
('20000000-0000-0000-0000-000000000225', 'multiple_choice', 4, '{"question": "By six o''clock, they had ___ left.", "audio_text": null, "options": ["already", "yet", "just now"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000225', 'multiple_choice', 5, '{"question": "She had ___ arrived when the phone rang.", "audio_text": null, "options": ["just", "yet", "already had"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000225', 'matching', 6, '{"pairs": [{"left": "already", "right": "já"}, {"left": "just", "right": "apenas, acabou de"}, {"left": "yet", "right": "ainda, já"}, {"left": "suddenly", "right": "de repente"}, {"left": "eventually", "right": "finalmente"}, {"left": "meanwhile", "right": "enquanto isso"}]}'),
('20000000-0000-0000-0000-000000000225', 'fill_blank', 7, '{"sentence": "They had not finished the journey ___.", "options": ["yet", "already", "just"], "correct": "yet", "translation": "Eles ainda não tinham terminado a jornada."}'),
('20000000-0000-0000-0000-000000000225', 'fill_blank', 8, '{"sentence": "She had ___ arrived when the phone rang.", "options": ["just", "yet", "already had"], "correct": "just", "translation": "Ela tinha acabado de chegar quando o telefone tocou."}'),
('20000000-0000-0000-0000-000000000225', 'word_order', 9, '{"words": ["By", "six", "o''clock", "they", "had", "already", "left"], "correct_sentence": "By six o''clock they had already left", "translation": "Às seis horas eles já tinham saído"}'),
('20000000-0000-0000-0000-000000000225', 'word_order', 10, '{"words": ["She", "had", "just", "arrived", "when", "the", "phone", "rang"], "correct_sentence": "She had just arrived when the phone rang", "translation": "Ela tinha acabado de chegar quando o telefone tocou"}'),
('20000000-0000-0000-0000-000000000225', 'reading', 11, '{"passage": "By the time the sun rose, the travelers had already walked ten kilometers. They had just crossed the last river, but they had not reached the village yet. Eventually, tired but happy, they arrived, and the whole journey became an unforgettable memory.", "translation": "Quando o sol nasceu, os viajantes já tinham caminhado dez quilômetros. Eles tinham acabado de atravessar o último rio, mas ainda não tinham chegado à vila. Finalmente, cansados mas felizes, eles chegaram, e toda a jornada se tornou uma lembrança inesquecível.", "question": "What had the travelers just done when the sun rose?", "options": ["Reached the village", "Crossed the last river", "Started the journey"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000225', 'listening', 12, '{"audio_text": "By the time the sun rose, the travelers had already walked ten kilometers. They had just crossed the river, but had not reached the village yet.", "question": "What had they not done yet?", "options": ["Cross the river", "Reach the village", "Walk ten kilometers"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000225', 'dictation', 13, '{"audio_text": "They had not finished the journey yet.", "expected": "They had not finished the journey yet."}'),
('20000000-0000-0000-0000-000000000225', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela já tinha saído quando eu cheguei.''", "expected": "She had already left when I arrived.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000225', 'typing', 15, '{"prompt_pt": "Traduza: ''Eles ainda não tinham chegado, mas finalmente chegaram à noite.''", "expected": "They had not arrived yet, but they finally arrived at night.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

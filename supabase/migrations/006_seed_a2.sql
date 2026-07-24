-- ============================================================================
-- EnglishFlow — Seed de conteúdo A2
-- 2 módulos, 10 lições, 60 palavras de vocabulário, ~70 exercícios
-- Continua a numeração dos IDs do seed A1 (002_seed_a1.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (MCP desta sessão é somente-leitura).
-- 3. Este arquivo só funciona DEPOIS da migration 001_initial_schema.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (60 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 3: Daily Routines (rotina + presente simples)
('30000000-0000-0000-0000-000000000061', 'wake up', 'weɪk ʌp', 'verb', 'acordar', 'I wake up at seven every day.', 'Eu acordo às sete todo dia.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000062', 'get up', 'ɡet ʌp', 'verb', 'levantar-se', 'She gets up early on weekdays.', 'Ela levanta cedo nos dias de semana.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000063', 'brush your teeth', 'brʌʃ jɔːr tiːθ', 'phrase', 'escovar os dentes', 'He brushes his teeth twice a day.', 'Ele escova os dentes duas vezes por dia.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000064', 'take a shower', 'teɪk ə ˈʃaʊər', 'phrase', 'tomar banho', 'I take a shower every morning.', 'Eu tomo banho toda manhã.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000065', 'get dressed', 'ɡet drest', 'phrase', 'vestir-se', 'The kids get dressed quickly.', 'As crianças se vestem rápido.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000066', 'have breakfast', 'hæv ˈbrekfəst', 'phrase', 'tomar café da manhã', 'We have breakfast together.', 'Nós tomamos café da manhã juntos.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000067', 'go to work', 'ɡoʊ tuː wɜːrk', 'phrase', 'ir trabalhar', 'My father goes to work by car.', 'Meu pai vai trabalhar de carro.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000068', 'have lunch', 'hæv lʌntʃ', 'phrase', 'almoçar', 'They have lunch at noon.', 'Eles almoçam ao meio-dia.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000069', 'finish work', 'ˈfɪnɪʃ wɜːrk', 'phrase', 'terminar o trabalho', 'I finish work at six.', 'Eu termino o trabalho às seis.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000070', 'go home', 'ɡoʊ hoʊm', 'phrase', 'ir para casa', 'She goes home after work.', 'Ela vai para casa depois do trabalho.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000071', 'have dinner', 'hæv ˈdɪnər', 'phrase', 'jantar', 'We have dinner at eight.', 'Nós jantamos às oito.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000072', 'go to bed', 'ɡoʊ tuː bed', 'phrase', 'ir dormir', 'He goes to bed at eleven.', 'Ele vai dormir às onze.', 'A2', array['routine']),
('30000000-0000-0000-0000-000000000073', 'every day', 'ˈevri deɪ', 'phrase', 'todo dia', 'I study English every day.', 'Eu estudo inglês todo dia.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000074', 'usually', 'ˈjuːʒuəli', 'adverb', 'geralmente', 'I usually wake up at six.', 'Eu geralmente acordo às seis.', 'A2', array['frequency']),
('30000000-0000-0000-0000-000000000075', 'always', 'ˈɔːlweɪz', 'adverb', 'sempre', 'She always has breakfast at home.', 'Ela sempre toma café da manhã em casa.', 'A2', array['frequency']),
('30000000-0000-0000-0000-000000000076', 'sometimes', 'ˈsʌmtaɪmz', 'adverb', 'às vezes', 'We sometimes have dinner late.', 'Nós às vezes jantamos tarde.', 'A2', array['frequency']),
('30000000-0000-0000-0000-000000000077', 'never', 'ˈnevər', 'adverb', 'nunca', 'He never wakes up early.', 'Ele nunca acorda cedo.', 'A2', array['frequency']),
('30000000-0000-0000-0000-000000000078', 'often', 'ˈɔːfən', 'adverb', 'frequentemente', 'They often go to work by bus.', 'Eles frequentemente vão trabalhar de ônibus.', 'A2', array['frequency']),
('30000000-0000-0000-0000-000000000079', 'Monday', 'ˈmʌndeɪ', 'noun', 'segunda-feira', 'I start work on Monday.', 'Eu começo a trabalhar na segunda-feira.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000080', 'Tuesday', 'ˈtuːzdeɪ', 'noun', 'terça-feira', 'The class is on Tuesday.', 'A aula é na terça-feira.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000081', 'Wednesday', 'ˈwenzdeɪ', 'noun', 'quarta-feira', 'We meet every Wednesday.', 'Nós nos encontramos toda quarta-feira.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000082', 'Thursday', 'ˈθɜːrzdeɪ', 'noun', 'quinta-feira', 'She works late on Thursday.', 'Ela trabalha até tarde na quinta-feira.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000083', 'Friday', 'ˈfraɪdeɪ', 'noun', 'sexta-feira', 'I love Friday!', 'Eu amo sexta-feira!', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000084', 'Saturday', 'ˈsætərdeɪ', 'noun', 'sábado', 'We travel on Saturday.', 'Nós viajamos no sábado.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000085', 'Sunday', 'ˈsʌndeɪ', 'noun', 'domingo', 'I rest on Sunday.', 'Eu descanso no domingo.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000086', 'weekday', 'ˈwiːkdeɪ', 'noun', 'dia de semana', 'I work every weekday.', 'Eu trabalho todo dia de semana.', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000087', 'weekend', 'ˈwiːkend', 'noun', 'fim de semana', 'What do you do on the weekend?', 'O que você faz no fim de semana?', 'A2', array['weekdays']),
('30000000-0000-0000-0000-000000000088', 'morning', 'ˈmɔːrnɪŋ', 'noun', 'manhã', 'I feel great in the morning.', 'Eu me sinto ótimo de manhã.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000089', 'afternoon', 'ˌæftərˈnuːn', 'noun', 'tarde', 'I study in the afternoon.', 'Eu estudo à tarde.', 'A2', array['time']),
('30000000-0000-0000-0000-000000000090', 'evening', 'ˈiːvnɪŋ', 'noun', 'noite (início)', 'We relax in the evening.', 'Nós relaxamos à noite.', 'A2', array['time']),
-- Módulo 4: Past Experiences (passado simples)
('30000000-0000-0000-0000-000000000091', 'yesterday', 'ˈjestərdeɪ', 'adverb', 'ontem', 'I worked yesterday.', 'Eu trabalhei ontem.', 'A2', array['time-past']),
('30000000-0000-0000-0000-000000000092', 'last night', 'læst naɪt', 'phrase', 'ontem à noite', 'We had dinner late last night.', 'Nós jantamos tarde ontem à noite.', 'A2', array['time-past']),
('30000000-0000-0000-0000-000000000093', 'last week', 'læst wiːk', 'phrase', 'semana passada', 'I visited my family last week.', 'Eu visitei minha família semana passada.', 'A2', array['time-past']),
('30000000-0000-0000-0000-000000000094', 'last year', 'læst jɪr', 'phrase', 'ano passado', 'They traveled to Brazil last year.', 'Eles viajaram para o Brasil ano passado.', 'A2', array['time-past']),
('30000000-0000-0000-0000-000000000095', 'ago', 'əˈɡoʊ', 'adverb', 'atrás (tempo)', 'She arrived two days ago.', 'Ela chegou há dois dias.', 'A2', array['time-past']),
('30000000-0000-0000-0000-000000000096', 'went', 'went', 'verb', 'foi (passado de go)', 'I went to the beach yesterday.', 'Eu fui à praia ontem.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000097', 'saw', 'sɔː', 'verb', 'viu (passado de see)', 'We saw a beautiful sunset.', 'Nós vimos um pôr do sol lindo.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000098', 'ate', 'eɪt', 'verb', 'comeu (passado de eat)', 'He ate breakfast at the hotel.', 'Ele comeu café da manhã no hotel.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000099', 'had', 'hæd', 'verb', 'teve (passado de have)', 'They had a great vacation.', 'Eles tiveram férias ótimas.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000100', 'did', 'dɪd', 'verb', 'fez (passado de do)', 'What did you do last weekend?', 'O que você fez no último fim de semana?', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000101', 'made', 'meɪd', 'verb', 'fez / criou (passado de make)', 'She made a lot of new friends.', 'Ela fez muitos amigos novos.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000102', 'bought', 'bɔːt', 'verb', 'comprou (passado de buy)', 'I bought a ticket online.', 'Eu comprei uma passagem online.', 'A2', array['past-verbs','irregular']),
('30000000-0000-0000-0000-000000000103', 'visited', 'ˈvɪzɪtɪd', 'verb', 'visitou (passado de visit)', 'We visited a small town.', 'Nós visitamos uma cidade pequena.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000104', 'traveled', 'ˈtrævəld', 'verb', 'viajou (passado de travel)', 'They traveled by plane.', 'Eles viajaram de avião.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000105', 'worked', 'wɜːrkt', 'verb', 'trabalhou (passado de work)', 'He worked offshore last year.', 'Ele trabalhou offshore ano passado.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000106', 'watched', 'wɑːtʃt', 'verb', 'assistiu (passado de watch)', 'We watched the sunset.', 'Nós assistimos ao pôr do sol.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000107', 'played', 'pleɪd', 'verb', 'jogou / tocou (passado de play)', 'The kids played on the beach.', 'As crianças brincaram na praia.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000108', 'studied', 'ˈstʌdiːd', 'verb', 'estudou (passado de study)', 'I studied English for two hours.', 'Eu estudei inglês por duas horas.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000109', 'arrived', 'əˈraɪvd', 'verb', 'chegou (passado de arrive)', 'We arrived at the hotel at noon.', 'Nós chegamos no hotel ao meio-dia.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000110', 'stayed', 'steɪd', 'verb', 'ficou (passado de stay)', 'They stayed at a nice hotel.', 'Eles ficaram em um hotel legal.', 'A2', array['past-verbs','regular']),
('30000000-0000-0000-0000-000000000111', 'trip', 'trɪp', 'noun', 'viagem', 'Our trip was amazing.', 'Nossa viagem foi incrível.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000112', 'vacation', 'veɪˈkeɪʃən', 'noun', 'férias', 'I need a vacation.', 'Eu preciso de férias.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000113', 'weather', 'ˈweðər', 'noun', 'clima', 'The weather was perfect.', 'O clima estava perfeito.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000114', 'beach', 'biːtʃ', 'noun', 'praia', 'We went to the beach every day.', 'Nós fomos à praia todo dia.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000115', 'mountain', 'ˈmaʊntən', 'noun', 'montanha', 'They climbed a mountain.', 'Eles subiram uma montanha.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000116', 'hotel', 'hoʊˈtel', 'noun', 'hotel', 'The hotel was very comfortable.', 'O hotel era muito confortável.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000117', 'airport', 'ˈeərpɔːrt', 'noun', 'aeroporto', 'We arrived at the airport early.', 'Nós chegamos no aeroporto cedo.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000118', 'ticket', 'ˈtɪkɪt', 'noun', 'passagem / ingresso', 'I bought two tickets.', 'Eu comprei duas passagens.', 'A2', array['travel']),
('30000000-0000-0000-0000-000000000119', 'amazing', 'əˈmeɪzɪŋ', 'adjective', 'incrível', 'The view was amazing.', 'A vista era incrível.', 'A2', array['descriptions']),
('30000000-0000-0000-0000-000000000120', 'boring', 'ˈbɔːrɪŋ', 'adjective', 'chato / entediante', 'The flight was long and boring.', 'O voo foi longo e chato.', 'A2', array['descriptions']);


-- ============================================================================
-- PARTE 2 — MÓDULOS
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000003', 'A2', 'Daily Routines', 'Fale sobre sua rotina diária usando o presente simples.', 1, true),
('10000000-0000-0000-0000-000000000004', 'A2', 'Past Experiences', 'Conte o que você fez usando o passado simples.', 2, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5 por módulo)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
-- Módulo 3
('20000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000003', 'Morning Routine', 1, 10),
('20000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000003', 'Going to Work', 2, 10),
('20000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000003', 'Evening Routine', 3, 10),
('20000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000003', 'Days of the Week', 4, 10),
('20000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000003', 'How Often? (Revisão)', 5, 15),
-- Módulo 4
('20000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000004', 'Yesterday', 1, 10),
('20000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000004', 'What Did You Do?', 2, 10),
('20000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000004', 'My Trip', 3, 10),
('20000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000004', 'Last Vacation', 4, 10),
('20000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000004', 'Tell Me About It (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 3.1: Morning Routine ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000011', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000061", "show_image": false}'),
('20000000-0000-0000-0000-000000000011', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000064", "show_image": false}'),
('20000000-0000-0000-0000-000000000011', 'multiple_choice', 3, '{"question": "Complete: She ___ up at six every day.", "audio_text": null, "options": ["wake", "wakes", "waking"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000011', 'matching', 4, '{"pairs": [{"left": "wake up", "right": "acordar"}, {"left": "get dressed", "right": "vestir-se"}, {"left": "take a shower", "right": "tomar banho"}, {"left": "have breakfast", "right": "tomar café da manhã"}]}'),
('20000000-0000-0000-0000-000000000011', 'fill_blank', 5, '{"sentence": "He ___ his teeth every morning.", "options": ["brush", "brushes", "brushing"], "correct": "brushes", "translation": "Ele escova os dentes toda manhã."}'),
('20000000-0000-0000-0000-000000000011', 'word_order', 6, '{"words": ["at", "up", "seven", "wake", "I"], "correct_sentence": "I wake up at seven", "translation": "Eu acordo às sete"}'),
('20000000-0000-0000-0000-000000000011', 'listening', 7, '{"audio_text": "I wake up at six, take a shower, and have breakfast at seven.", "question": "What time does the speaker wake up?", "options": ["Six", "Seven", "Eight"], "correct_index": 0}');

-- ---------- Lição 3.2: Going to Work ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000012', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000067", "show_image": false}'),
('20000000-0000-0000-0000-000000000012', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000069", "show_image": false}'),
('20000000-0000-0000-0000-000000000012', 'multiple_choice', 3, '{"question": "Complete: My father ___ to work by car.", "audio_text": null, "options": ["go", "goes", "going"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000012', 'matching', 4, '{"pairs": [{"left": "go to work", "right": "ir trabalhar"}, {"left": "have lunch", "right": "almoçar"}, {"left": "finish work", "right": "terminar o trabalho"}, {"left": "go home", "right": "ir para casa"}]}'),
('20000000-0000-0000-0000-000000000012', 'fill_blank', 5, '{"sentence": "They ___ lunch at noon.", "options": ["has", "have", "having"], "correct": "have", "translation": "Eles almoçam ao meio-dia."}'),
('20000000-0000-0000-0000-000000000012', 'word_order', 6, '{"words": ["at", "work", "six", "finish", "I"], "correct_sentence": "I finish work at six", "translation": "Eu termino o trabalho às seis"}'),
('20000000-0000-0000-0000-000000000012', 'typing', 7, '{"prompt_pt": "Traduza: ''Ela vai para casa depois do trabalho.''", "expected": "She goes home after work.", "ai_review": true}');

-- ---------- Lição 3.3: Evening Routine ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000013', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000071", "show_image": false}'),
('20000000-0000-0000-0000-000000000013', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000072", "show_image": false}'),
('20000000-0000-0000-0000-000000000013', 'multiple_choice', 3, '{"question": "Complete: We ___ dinner at eight.", "audio_text": null, "options": ["has", "have", "having"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000013', 'fill_blank', 4, '{"sentence": "He ___ to bed at eleven.", "options": ["go", "goes", "going"], "correct": "goes", "translation": "Ele vai dormir às onze."}'),
('20000000-0000-0000-0000-000000000013', 'matching', 5, '{"pairs": [{"left": "have dinner", "right": "jantar"}, {"left": "go to bed", "right": "ir dormir"}, {"left": "evening", "right": "noite (início)"}, {"left": "morning", "right": "manhã"}]}'),
('20000000-0000-0000-0000-000000000013', 'word_order', 6, '{"words": ["dinner", "eight", "We", "have", "at"], "correct_sentence": "We have dinner at eight", "translation": "Nós jantamos às oito"}'),
('20000000-0000-0000-0000-000000000013', 'dictation', 7, '{"audio_text": "We have dinner at eight and go to bed at eleven.", "expected": "We have dinner at eight and go to bed at eleven."}');

-- ---------- Lição 3.4: Days of the Week ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000014', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000079", "show_image": false}'),
('20000000-0000-0000-0000-000000000014', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000087", "show_image": false}'),
('20000000-0000-0000-0000-000000000014', 'multiple_choice', 3, '{"question": "What day comes after Friday?", "audio_text": null, "options": ["Sunday", "Saturday", "Monday"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000014', 'matching', 4, '{"pairs": [{"left": "Monday", "right": "segunda-feira"}, {"left": "Wednesday", "right": "quarta-feira"}, {"left": "Friday", "right": "sexta-feira"}, {"left": "Sunday", "right": "domingo"}]}'),
('20000000-0000-0000-0000-000000000014', 'fill_blank', 5, '{"sentence": "I rest on ___. It is my favorite day.", "options": ["Sunday", "Monday", "Tuesday"], "correct": "Sunday", "translation": "Eu descanso no domingo. É meu dia favorito."}'),
('20000000-0000-0000-0000-000000000014', 'word_order', 6, '{"words": ["work", "every", "I", "weekday"], "correct_sentence": "I work every weekday", "translation": "Eu trabalho todo dia de semana"}'),
('20000000-0000-0000-0000-000000000014', 'listening', 7, '{"audio_text": "I work from Monday to Friday and I rest on the weekend.", "question": "When does the speaker rest?", "options": ["Monday to Friday", "The weekend", "Every day"], "correct_index": 1}');

-- ---------- Lição 3.5: How Often? (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000015', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000075", "show_image": false}'),
('20000000-0000-0000-0000-000000000015', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000077", "show_image": false}'),
('20000000-0000-0000-0000-000000000015', 'multiple_choice', 3, '{"question": "Complete: She ___ wakes up late. She is very organized.", "audio_text": null, "options": ["always", "never", "sometimes"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000015', 'matching', 4, '{"pairs": [{"left": "always", "right": "sempre"}, {"left": "usually", "right": "geralmente"}, {"left": "sometimes", "right": "às vezes"}, {"left": "never", "right": "nunca"}]}'),
('20000000-0000-0000-0000-000000000015', 'fill_blank', 5, '{"sentence": "We ___ have dinner late, but not every day.", "options": ["sometimes", "always", "never"], "correct": "sometimes", "translation": "Nós às vezes jantamos tarde, mas não todo dia."}'),
('20000000-0000-0000-0000-000000000015', 'word_order', 6, '{"words": ["work", "often", "bus", "by", "go", "They", "to"], "correct_sentence": "They often go to work by bus", "translation": "Eles frequentemente vão trabalhar de ônibus"}'),
('20000000-0000-0000-0000-000000000015', 'dictation', 7, '{"audio_text": "I usually wake up at six and I always have breakfast at home.", "expected": "I usually wake up at six and I always have breakfast at home."}'),
('20000000-0000-0000-0000-000000000015', 'typing', 8, '{"prompt_pt": "Traduza: ''Eu geralmente termino o trabalho às seis.''", "expected": "I usually finish work at six.", "ai_review": true}');

-- ---------- Lição 4.1: Yesterday ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000016', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000091", "show_image": false}'),
('20000000-0000-0000-0000-000000000016', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000096", "show_image": false}'),
('20000000-0000-0000-0000-000000000016', 'multiple_choice', 3, '{"question": "Complete: I ___ to the beach yesterday.", "audio_text": null, "options": ["go", "went", "goes"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000016', 'matching', 4, '{"pairs": [{"left": "went", "right": "foi"}, {"left": "saw", "right": "viu"}, {"left": "ate", "right": "comeu"}, {"left": "had", "right": "teve"}]}'),
('20000000-0000-0000-0000-000000000016', 'fill_blank', 5, '{"sentence": "We ___ a beautiful sunset last night.", "options": ["see", "saw", "seeing"], "correct": "saw", "translation": "Nós vimos um pôr do sol lindo ontem à noite."}'),
('20000000-0000-0000-0000-000000000016', 'word_order', 6, '{"words": ["hotel", "breakfast", "at", "the", "He", "ate"], "correct_sentence": "He ate breakfast at the hotel", "translation": "Ele comeu café da manhã no hotel"}'),
('20000000-0000-0000-0000-000000000016', 'listening', 7, '{"audio_text": "Yesterday I went to the beach and saw a beautiful sunset.", "question": "Where did the speaker go yesterday?", "options": ["The mountain", "The beach", "The airport"], "correct_index": 1}');

-- ---------- Lição 4.2: What Did You Do? ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000017', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000100", "show_image": false}'),
('20000000-0000-0000-0000-000000000017', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000102", "show_image": false}'),
('20000000-0000-0000-0000-000000000017', 'multiple_choice', 3, '{"question": "Complete: What ___ you do last weekend?", "audio_text": null, "options": ["did", "does", "do"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000017', 'matching', 4, '{"pairs": [{"left": "did", "right": "fez (auxiliar)"}, {"left": "made", "right": "fez / criou"}, {"left": "bought", "right": "comprou"}, {"left": "studied", "right": "estudou"}]}'),
('20000000-0000-0000-0000-000000000017', 'fill_blank', 5, '{"sentence": "I ___ a ticket online.", "options": ["buy", "bought", "buying"], "correct": "bought", "translation": "Eu comprei uma passagem online."}'),
('20000000-0000-0000-0000-000000000017', 'word_order', 6, '{"words": ["friends", "made", "a", "lot", "of", "new", "She"], "correct_sentence": "She made a lot of new friends", "translation": "Ela fez muitos amigos novos"}'),
('20000000-0000-0000-0000-000000000017', 'typing', 7, '{"prompt_pt": "Traduza: ''Eu estudei inglês por duas horas.''", "expected": "I studied English for two hours.", "ai_review": true}');

-- ---------- Lição 4.3: My Trip ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000018', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000111", "show_image": false}'),
('20000000-0000-0000-0000-000000000018', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000116", "show_image": false}'),
('20000000-0000-0000-0000-000000000018', 'multiple_choice', 3, '{"question": "Complete: We ___ at the hotel at noon.", "audio_text": null, "options": ["arrive", "arrived", "arriving"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000018', 'matching', 4, '{"pairs": [{"left": "trip", "right": "viagem"}, {"left": "hotel", "right": "hotel"}, {"left": "airport", "right": "aeroporto"}, {"left": "ticket", "right": "passagem"}]}'),
('20000000-0000-0000-0000-000000000018', 'fill_blank', 5, '{"sentence": "They ___ at a nice hotel.", "options": ["stay", "stayed", "staying"], "correct": "stayed", "translation": "Eles ficaram em um hotel legal."}'),
('20000000-0000-0000-0000-000000000018', 'word_order', 6, '{"words": ["a", "town", "small", "visited", "We"], "correct_sentence": "We visited a small town", "translation": "Nós visitamos uma cidade pequena"}'),
('20000000-0000-0000-0000-000000000018', 'dictation', 7, '{"audio_text": "We visited a small town and stayed at a nice hotel.", "expected": "We visited a small town and stayed at a nice hotel."}');

-- ---------- Lição 4.4: Last Vacation ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000019', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000112", "show_image": false}'),
('20000000-0000-0000-0000-000000000019', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000119", "show_image": false}'),
('20000000-0000-0000-0000-000000000019', 'multiple_choice', 3, '{"question": "Complete: The weather ___ perfect during our trip.", "audio_text": null, "options": ["is", "was", "were"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000019', 'matching', 4, '{"pairs": [{"left": "beach", "right": "praia"}, {"left": "mountain", "right": "montanha"}, {"left": "weather", "right": "clima"}, {"left": "amazing", "right": "incrível"}]}'),
('20000000-0000-0000-0000-000000000019', 'fill_blank', 5, '{"sentence": "We went to the beach ___ .", "options": ["last week", "next week", "every week"], "correct": "last week", "translation": "Nós fomos à praia semana passada."}'),
('20000000-0000-0000-0000-000000000019', 'word_order', 6, '{"words": ["a", "mountain", "They", "climbed"], "correct_sentence": "They climbed a mountain", "translation": "Eles subiram uma montanha"}'),
('20000000-0000-0000-0000-000000000019', 'listening', 7, '{"audio_text": "Our vacation was amazing. The weather was perfect and we went to the beach every day.", "question": "How was the weather?", "options": ["Boring", "Perfect", "Cold"], "correct_index": 1}');

-- ---------- Lição 4.5: Tell Me About It (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000020', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000093", "show_image": false}'),
('20000000-0000-0000-0000-000000000020', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000120", "show_image": false}'),
('20000000-0000-0000-0000-000000000020', 'multiple_choice', 3, '{"question": "Complete: The flight was long and ___ .", "audio_text": null, "options": ["amazing", "boring", "young"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000020', 'matching', 4, '{"pairs": [{"left": "last week", "right": "semana passada"}, {"left": "last year", "right": "ano passado"}, {"left": "ago", "right": "atrás"}, {"left": "yesterday", "right": "ontem"}]}'),
('20000000-0000-0000-0000-000000000020', 'fill_blank', 5, '{"sentence": "She arrived two days ___ .", "options": ["ago", "last", "next"], "correct": "ago", "translation": "Ela chegou há dois dias."}'),
('20000000-0000-0000-0000-000000000020', 'word_order', 6, '{"words": ["Brazil", "traveled", "to", "year", "last", "They"], "correct_sentence": "They traveled to Brazil last year", "translation": "Eles viajaram para o Brasil ano passado"}'),
('20000000-0000-0000-0000-000000000020', 'dictation', 7, '{"audio_text": "Last year I traveled to Brazil and visited my family.", "expected": "Last year I traveled to Brazil and visited my family."}'),
('20000000-0000-0000-0000-000000000020', 'typing', 8, '{"prompt_pt": "Traduza: ''Nossas férias foram incríveis.''", "expected": "Our vacation was amazing.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED A2
-- Total: 60 vocabulário | 2 módulos | 10 lições | 71 exercícios
-- ============================================================================

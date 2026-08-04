-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 10: Idioms
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 9 (050_seed_b1_relative_clauses.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 050_seed_b1_relative_clauses.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 idioms)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 40: Idioms
('30000000-0000-0000-0000-000000001171', 'piece of cake', 'piːs ʌv keɪk', 'idiom', 'moleza / muito fácil', 'The test was a piece of cake.', 'A prova foi moleza.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001172', 'under the weather', 'ˈʌndər ðə ˈweðər', 'idiom', 'meio doente / mal disposto', 'I feel a bit under the weather today.', 'Eu estou meio mal disposto hoje.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001173', 'break the ice', 'breɪk ði aɪs', 'idiom', 'quebrar o gelo', 'He told a joke to break the ice.', 'Ele contou uma piada para quebrar o gelo.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001174', 'time flies', 'taɪm flaɪz', 'idiom', 'o tempo voa', 'Time flies when you are having fun.', 'O tempo voa quando você está se divertindo.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001175', 'once in a blue moon', 'wʌns ɪn ə bluː muːn', 'idiom', 'raramente', 'We only meet once in a blue moon.', 'Nós só nos encontramos raramente.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001176', 'better late than never', 'ˈbetər leɪt ðæn ˈnevər', 'idiom', 'antes tarde do que nunca', 'She arrived late, but better late than never.', 'Ela chegou atrasada, mas antes tarde do que nunca.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001177', 'cost an arm and a leg', 'kɔːst æn ɑːrm ænd ə leɡ', 'idiom', 'custar os olhos da cara', 'This car cost an arm and a leg.', 'Esse carro custou os olhos da cara.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001178', 'make ends meet', 'meɪk endz miːt', 'idiom', 'conseguir pagar as contas', 'It is hard to make ends meet these days.', 'É difícil pagar as contas hoje em dia.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001179', 'get the ball rolling', 'ɡet ðə bɔːl ˈroʊlɪŋ', 'idiom', 'dar o pontapé inicial', 'Let us get the ball rolling on this project.', 'Vamos dar o pontapé inicial nesse projeto.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001180', 'burn the midnight oil', 'bɜːrn ðə ˈmɪdnaɪt ɔɪl', 'idiom', 'trabalhar até tarde da noite', 'I had to burn the midnight oil to finish the report.', 'Eu tive que trabalhar até tarde para terminar o relatório.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001181', 'call it a day', 'kɔːl ɪt ə deɪ', 'idiom', 'parar de trabalhar por hoje', 'Let us call it a day and go home.', 'Vamos parar por hoje e ir para casa.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001182', 'learn the ropes', 'lɜːrn ðə roʊps', 'idiom', 'aprender como as coisas funcionam', 'It took me a month to learn the ropes.', 'Levei um mês para aprender como as coisas funcionam.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001183', 'over the moon', 'ˈoʊvər ðə muːn', 'idiom', 'muito feliz', 'She was over the moon about the news.', 'Ela ficou muito feliz com a notícia.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001184', 'feel blue', 'fiːl bluː', 'idiom', 'sentir-se triste', 'He has been feeling blue lately.', 'Ele tem se sentido triste ultimamente.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001185', 'on cloud nine', 'ɑːn klaʊd naɪn', 'idiom', 'nas nuvens / extremamente feliz', 'I was on cloud nine after the interview.', 'Eu fiquei nas nuvens depois da entrevista.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001186', 'give someone a piece of your mind', 'ɡɪv ˈsʌmwʌn ə piːs ʌv jʊr maɪnd', 'idiom', 'dizer o que pensa (geralmente com raiva)', 'I gave him a piece of my mind.', 'Eu disse a ele o que eu pensava.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001187', 'get along with', 'ɡet əˈlɔːŋ wɪð', 'idiom', 'se dar bem com', 'I get along with my colleagues very well.', 'Eu me dou muito bem com meus colegas.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001188', 'break someone''s heart', 'breɪk ˈsʌmwʌnz hɑːrt', 'idiom', 'partir o coração de alguém', 'The sad ending broke my heart.', 'O final triste partiu meu coração.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001189', 'hit the sack', 'hɪt ðə sæk', 'idiom', 'ir dormir', 'I am tired, I am going to hit the sack.', 'Estou cansado, vou dormir.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001190', 'spill the beans', 'spɪl ðə biːnz', 'idiom', 'contar um segredo', 'Please do not spill the beans about the party.', 'Por favor, não conte o segredo sobre a festa.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001191', 'under the table', 'ˈʌndər ðə ˈteɪbəl', 'idiom', 'por baixo dos panos', 'They paid him under the table.', 'Eles pagaram ele por baixo dos panos.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001192', 'see eye to eye', 'siː aɪ tuː aɪ', 'idiom', 'concordar plenamente', 'We do not always see eye to eye.', 'Nós nem sempre concordamos.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001193', 'keep an eye on', 'kiːp æn aɪ ɑːn', 'idiom', 'ficar de olho em', 'Can you keep an eye on my bag?', 'Você pode ficar de olho na minha bolsa?', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001194', 'hang in there', 'hæŋ ɪn ðer', 'idiom', 'aguentar firme', 'Hang in there, the shift is almost over.', 'Aguenta firme, o turno já está quase acabando.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001195', 'a blessing in disguise', 'ə ˈblesɪŋ ɪn dɪsˈɡaɪz', 'idiom', 'uma bênção disfarçada', 'Losing that job was a blessing in disguise.', 'Perder aquele emprego foi uma bênção disfarçada.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001196', 'bite the bullet', 'baɪt ðə ˈbʊlɪt', 'idiom', 'encarar algo difícil', 'I had to bite the bullet and tell the truth.', 'Eu tive que encarar e contar a verdade.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001197', 'speak of the devil', 'spiːk ʌv ðə ˈdevəl', 'idiom', 'falando no diabo', 'Speak of the devil, here he comes.', 'Falando no diabo, lá vem ele.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001198', 'the ball is in your court', 'ðə bɔːl ɪz ɪn jʊr kɔːrt', 'idiom', 'a decisão é sua', 'I made my offer, the ball is in your court now.', 'Eu fiz minha oferta, agora a decisão é sua.', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001199', 'when pigs fly', 'wen pɪɡz flaɪ', 'idiom', 'nunca (quando os porcos voarem)', 'He will apologize when pigs fly.', 'Ele vai pedir desculpas quando os porcos voarem (nunca).', 'B1', array['idioms']),
('30000000-0000-0000-0000-000000001200', 'easy come, easy go', 'ˈiːzi kʌm ˈiːzi ɡoʊ', 'idiom', 'fácil de ganhar, fácil de perder', 'He spent all his prize money quickly; easy come, easy go.', 'Ele gastou todo o dinheiro do prêmio rápido; fácil de ganhar, fácil de perder.', 'B1', array['idioms']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000040', 'B1', 'Idioms', 'Aprenda expressões idiomáticas comuns do inglês do dia a dia, sobre tempo, trabalho, sentimentos e situações.', 10, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000196', '10000000-0000-0000-0000-000000000040', 'Idioms — Time & Effort', 1, 10),
('20000000-0000-0000-0000-000000000197', '10000000-0000-0000-0000-000000000040', 'Idioms — Money & Work', 2, 10),
('20000000-0000-0000-0000-000000000198', '10000000-0000-0000-0000-000000000040', 'Idioms — Feelings & People', 3, 10),
('20000000-0000-0000-0000-000000000199', '10000000-0000-0000-0000-000000000040', 'Idioms — Everyday Situations', 4, 10),
('20000000-0000-0000-0000-000000000200', '10000000-0000-0000-0000-000000000040', 'Idioms (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 40.1: Idioms — Time & Effort ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000196', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001171", "show_image": false}'),
('20000000-0000-0000-0000-000000000196', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001173", "show_image": false}'),
('20000000-0000-0000-0000-000000000196', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001176", "show_image": false}'),
('20000000-0000-0000-0000-000000000196', 'multiple_choice', 4, '{"question": "Complete: The test was a ___.", "audio_text": null, "options": ["piece of cake", "under the weather", "blue moon"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000196', 'multiple_choice', 5, '{"question": "Complete: He told a joke to ___.", "audio_text": null, "options": ["break the ice", "hit the sack", "spill the beans"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000196', 'matching', 6, '{"pairs": [{"left": "piece of cake", "right": "moleza"}, {"left": "under the weather", "right": "mal disposto"}, {"left": "break the ice", "right": "quebrar o gelo"}, {"left": "time flies", "right": "o tempo voa"}, {"left": "once in a blue moon", "right": "raramente"}, {"left": "better late than never", "right": "antes tarde do que nunca"}]}'),
('20000000-0000-0000-0000-000000000196', 'fill_blank', 7, '{"sentence": "I feel a bit ___ today.", "options": ["under the weather", "over the moon", "on cloud nine"], "correct": "under the weather", "translation": "Eu estou meio mal disposto hoje."}'),
('20000000-0000-0000-0000-000000000196', 'fill_blank', 8, '{"sentence": "We only meet ___.", "options": ["once in a blue moon", "time flies", "piece of cake"], "correct": "once in a blue moon", "translation": "Nós só nos encontramos raramente."}'),
('20000000-0000-0000-0000-000000000196', 'word_order', 9, '{"words": ["Time", "flies", "when", "you", "are", "having", "fun"], "correct_sentence": "Time flies when you are having fun", "translation": "O tempo voa quando você está se divertindo"}'),
('20000000-0000-0000-0000-000000000196', 'word_order', 10, '{"words": ["She", "arrived", "late", "but", "better", "late", "than", "never"], "correct_sentence": "She arrived late but better late than never", "translation": "Ela chegou atrasada, mas antes tarde do que nunca"}'),
('20000000-0000-0000-0000-000000000196', 'reading', 11, '{"passage": "Idioms make English sound more natural. If something is very easy, we say it is a piece of cake. If you feel a little sick, you are under the weather. When people meet for the first time, someone might break the ice with a joke. And we all know that time flies when we are having fun.", "translation": "Os idioms deixam o inglês mais natural. Se algo é muito fácil, dizemos que é a piece of cake. Se você está meio doente, você está under the weather. Quando pessoas se conhecem pela primeira vez, alguém pode break the ice com uma piada. E todos sabemos que o time flies quando estamos nos divertindo.", "question": "What does ''a piece of cake'' mean?", "options": ["Something difficult", "Something very easy", "A dessert"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000196', 'listening', 12, '{"audio_text": "The test was a piece of cake, but I still feel a bit under the weather today.", "question": "How does the speaker feel today?", "options": ["Great", "A bit sick", "Very happy"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000196', 'dictation', 13, '{"audio_text": "The test was a piece of cake, and time flies when you are having fun.", "expected": "The test was a piece of cake, and time flies when you are having fun."}'),
('20000000-0000-0000-0000-000000000196', 'typing', 14, '{"prompt_pt": "Traduza: ''A prova foi moleza.''", "expected": "The test was a piece of cake.", "ai_review": true}');

-- ---------- Lição 40.2: Idioms — Money & Work ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000197', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001177", "show_image": false}'),
('20000000-0000-0000-0000-000000000197', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001180", "show_image": false}'),
('20000000-0000-0000-0000-000000000197', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001182", "show_image": false}'),
('20000000-0000-0000-0000-000000000197', 'multiple_choice', 4, '{"question": "Complete: This car ___.", "audio_text": null, "options": ["cost an arm and a leg", "made ends meet", "called it a day"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000197', 'multiple_choice', 5, '{"question": "Complete: Let us ___ on this project.", "audio_text": null, "options": ["get the ball rolling", "burn the midnight oil", "call it a day"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000197', 'matching', 6, '{"pairs": [{"left": "cost an arm and a leg", "right": "custar os olhos da cara"}, {"left": "make ends meet", "right": "pagar as contas"}, {"left": "get the ball rolling", "right": "dar o pontapé inicial"}, {"left": "burn the midnight oil", "right": "trabalhar até tarde"}, {"left": "call it a day", "right": "parar por hoje"}, {"left": "learn the ropes", "right": "aprender como funciona"}]}'),
('20000000-0000-0000-0000-000000000197', 'fill_blank', 7, '{"sentence": "It is hard to ___ these days.", "options": ["make ends meet", "cost an arm and a leg", "call it a day"], "correct": "make ends meet", "translation": "É difícil pagar as contas hoje em dia."}'),
('20000000-0000-0000-0000-000000000197', 'fill_blank', 8, '{"sentence": "It took me a month to ___.", "options": ["learn the ropes", "burn the midnight oil", "get the ball rolling"], "correct": "learn the ropes", "translation": "Levei um mês para aprender como as coisas funcionam."}'),
('20000000-0000-0000-0000-000000000197', 'word_order', 9, '{"words": ["I", "had", "to", "burn", "the", "midnight", "oil", "to", "finish", "the", "report"], "correct_sentence": "I had to burn the midnight oil to finish the report", "translation": "Eu tive que trabalhar até tarde para terminar o relatório"}'),
('20000000-0000-0000-0000-000000000197', 'word_order', 10, '{"words": ["Let", "us", "call", "it", "a", "day", "and", "go", "home"], "correct_sentence": "Let us call it a day and go home", "translation": "Vamos parar por hoje e ir para casa"}'),
('20000000-0000-0000-0000-000000000197', 'reading', 11, '{"passage": "Starting a new job is not always easy. In the beginning, you need time to learn the ropes. Sometimes you have to burn the midnight oil to finish an important project, especially when you are trying to get the ball rolling on something new. At the end of a long day, it feels good to call it a day and go home.", "translation": "Começar um emprego novo nem sempre é fácil. No início, você precisa de tempo para learn the ropes. Às vezes você precisa burn the midnight oil para terminar um projeto importante, especialmente quando está tentando get the ball rolling em algo novo. No fim de um dia longo, é bom call it a day e ir para casa.", "question": "What do you need time to do when starting a new job?", "options": ["Burn the midnight oil", "Learn the ropes", "Cost an arm and a leg"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000197', 'listening', 12, '{"audio_text": "This apartment cost an arm and a leg, so now it is hard to make ends meet every month.", "question": "Why is it hard to make ends meet?", "options": ["The apartment was cheap", "The apartment cost a lot", "They lost their job"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000197', 'dictation', 13, '{"audio_text": "It took me a month to learn the ropes, and I had to burn the midnight oil.", "expected": "It took me a month to learn the ropes, and I had to burn the midnight oil."}'),
('20000000-0000-0000-0000-000000000197', 'typing', 14, '{"prompt_pt": "Traduza: ''Levei um mês para aprender como as coisas funcionam.''", "expected": "It took me a month to learn the ropes.", "ai_review": true}');

-- ---------- Lição 40.3: Idioms — Feelings & People ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000198', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001183", "show_image": false}'),
('20000000-0000-0000-0000-000000000198', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001185", "show_image": false}'),
('20000000-0000-0000-0000-000000000198', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001187", "show_image": false}'),
('20000000-0000-0000-0000-000000000198', 'multiple_choice', 4, '{"question": "Complete: She was ___ about the news.", "audio_text": null, "options": ["over the moon", "feeling blue", "under the weather"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000198', 'multiple_choice', 5, '{"question": "Complete: I ___ my colleagues very well.", "audio_text": null, "options": ["get along with", "break the heart of", "give a piece of mind"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000198', 'matching', 6, '{"pairs": [{"left": "over the moon", "right": "muito feliz"}, {"left": "feel blue", "right": "sentir-se triste"}, {"left": "on cloud nine", "right": "nas nuvens"}, {"left": "give someone a piece of your mind", "right": "dizer o que pensa"}, {"left": "get along with", "right": "se dar bem com"}, {"left": "break someone''s heart", "right": "partir o coração"}]}'),
('20000000-0000-0000-0000-000000000198', 'fill_blank', 7, '{"sentence": "He has been ___ lately.", "options": ["feeling blue", "over the moon", "on cloud nine"], "correct": "feeling blue", "translation": "Ele tem se sentido triste ultimamente."}'),
('20000000-0000-0000-0000-000000000198', 'fill_blank', 8, '{"sentence": "I was ___ after the interview.", "options": ["on cloud nine", "feeling blue", "under the weather"], "correct": "on cloud nine", "translation": "Eu fiquei nas nuvens depois da entrevista."}'),
('20000000-0000-0000-0000-000000000198', 'word_order', 9, '{"words": ["I", "gave", "him", "a", "piece", "of", "my", "mind"], "correct_sentence": "I gave him a piece of my mind", "translation": "Eu disse a ele o que eu pensava"}'),
('20000000-0000-0000-0000-000000000198', 'word_order', 10, '{"words": ["The", "sad", "ending", "broke", "my", "heart"], "correct_sentence": "The sad ending broke my heart", "translation": "O final triste partiu meu coração"}'),
('20000000-0000-0000-0000-000000000198', 'reading', 11, '{"passage": "Idioms about feelings are very common in English. If you are extremely happy, you can say you are over the moon or on cloud nine. If you are sad, you feel blue. When someone is angry, they might give someone a piece of their mind. And most of us try to get along with our colleagues at work.", "translation": "Idioms sobre sentimentos são muito comuns em inglês. Se você está extremamente feliz, pode dizer que está over the moon ou on cloud nine. Se está triste, você feel blue. Quando alguém está com raiva, pode give someone a piece of their mind. E a maioria de nós tenta get along with os colegas de trabalho.", "question": "What idiom means extremely happy?", "options": ["Feel blue", "Over the moon", "Break someone''s heart"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000198', 'listening', 12, '{"audio_text": "I get along with my colleagues very well, but yesterday one of them gave me a piece of her mind about a mistake.", "question": "What happened yesterday?", "options": ["The speaker felt blue", "A colleague gave the speaker a piece of her mind", "The speaker was on cloud nine"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000198', 'dictation', 13, '{"audio_text": "She was over the moon about the news, and I get along with my colleagues well.", "expected": "She was over the moon about the news, and I get along with my colleagues well."}'),
('20000000-0000-0000-0000-000000000198', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela ficou muito feliz com a notícia.''", "expected": "She was over the moon about the news.", "ai_review": true}');

-- ---------- Lição 40.4: Idioms — Everyday Situations ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000199', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001189", "show_image": false}'),
('20000000-0000-0000-0000-000000000199', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001190", "show_image": false}'),
('20000000-0000-0000-0000-000000000199', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001193", "show_image": false}'),
('20000000-0000-0000-0000-000000000199', 'multiple_choice', 4, '{"question": "Complete: I am tired, I am going to ___.", "audio_text": null, "options": ["hit the sack", "spill the beans", "see eye to eye"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000199', 'multiple_choice', 5, '{"question": "Complete: Please do not ___ about the party.", "audio_text": null, "options": ["spill the beans", "hit the sack", "hang in there"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000199', 'matching', 6, '{"pairs": [{"left": "hit the sack", "right": "ir dormir"}, {"left": "spill the beans", "right": "contar um segredo"}, {"left": "under the table", "right": "por baixo dos panos"}, {"left": "see eye to eye", "right": "concordar"}, {"left": "keep an eye on", "right": "ficar de olho em"}, {"left": "hang in there", "right": "aguentar firme"}]}'),
('20000000-0000-0000-0000-000000000199', 'fill_blank', 7, '{"sentence": "Can you ___ my bag?", "options": ["keep an eye on", "spill the beans on", "hit the sack on"], "correct": "keep an eye on", "translation": "Você pode ficar de olho na minha bolsa?"}'),
('20000000-0000-0000-0000-000000000199', 'fill_blank', 8, '{"sentence": "We do not always ___.", "options": ["see eye to eye", "hit the sack", "spill the beans"], "correct": "see eye to eye", "translation": "Nós nem sempre concordamos."}'),
('20000000-0000-0000-0000-000000000199', 'word_order', 9, '{"words": ["They", "paid", "him", "under", "the", "table"], "correct_sentence": "They paid him under the table", "translation": "Eles pagaram ele por baixo dos panos"}'),
('20000000-0000-0000-0000-000000000199', 'word_order', 10, '{"words": ["Hang", "in", "there", "the", "shift", "is", "almost", "over"], "correct_sentence": "Hang in there the shift is almost over", "translation": "Aguenta firme, o turno já está quase acabando"}'),
('20000000-0000-0000-0000-000000000199', 'reading', 11, '{"passage": "Some idioms describe everyday situations at work or at home. If you are tired, you might hit the sack early. A good friend does not spill the beans about your secrets. Sometimes coworkers do not see eye to eye, but a good manager will keep an eye on the team and tell them to hang in there during busy weeks.", "translation": "Alguns idioms descrevem situações do dia a dia no trabalho ou em casa. Se você está cansado, pode hit the sack cedo. Um bom amigo não spill the beans sobre seus segredos. Às vezes colegas de trabalho não see eye to eye, mas um bom gerente vai keep an eye on a equipe e dizer para eles hang in there em semanas cheias.", "question": "What does a good friend not do with your secrets?", "options": ["Keep an eye on them", "Spill the beans", "Hit the sack"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000199', 'listening', 12, '{"audio_text": "Hang in there, the shift is almost over. Can you keep an eye on the equipment until then?", "question": "What does the speaker ask the listener to do?", "options": ["Hit the sack", "Keep an eye on the equipment", "Spill the beans"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000199', 'dictation', 13, '{"audio_text": "Hang in there, and can you keep an eye on my bag?", "expected": "Hang in there, and can you keep an eye on my bag?"}'),
('20000000-0000-0000-0000-000000000199', 'typing', 14, '{"prompt_pt": "Traduza: ''Estou cansado, vou dormir.''", "expected": "I am tired, I am going to hit the sack.", "ai_review": true}');

-- ---------- Lição 40.5: Idioms (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000200', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001195", "show_image": false}'),
('20000000-0000-0000-0000-000000000200', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001196", "show_image": false}'),
('20000000-0000-0000-0000-000000000200', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001198", "show_image": false}'),
('20000000-0000-0000-0000-000000000200', 'multiple_choice', 4, '{"question": "Complete: Losing that job was a ___.", "audio_text": null, "options": ["blessing in disguise", "piece of cake", "cost an arm and a leg"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000200', 'multiple_choice', 5, '{"question": "Complete: I had to ___ and tell the truth.", "audio_text": null, "options": ["bite the bullet", "spill the beans", "hit the sack"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000200', 'matching', 6, '{"pairs": [{"left": "a blessing in disguise", "right": "bênção disfarçada"}, {"left": "bite the bullet", "right": "encarar algo difícil"}, {"left": "speak of the devil", "right": "falando no diabo"}, {"left": "the ball is in your court", "right": "a decisão é sua"}, {"left": "when pigs fly", "right": "nunca"}, {"left": "easy come, easy go", "right": "fácil de ganhar, fácil de perder"}]}'),
('20000000-0000-0000-0000-000000000200', 'fill_blank', 7, '{"sentence": "___, here he comes.", "options": ["Speak of the devil", "Bite the bullet", "Hang in there"], "correct": "Speak of the devil", "translation": "Falando no diabo, lá vem ele."}'),
('20000000-0000-0000-0000-000000000200', 'fill_blank', 8, '{"sentence": "He will apologize ___.", "options": ["when pigs fly", "on cloud nine", "over the moon"], "correct": "when pigs fly", "translation": "Ele vai pedir desculpas quando os porcos voarem (nunca)."}'),
('20000000-0000-0000-0000-000000000200', 'word_order', 9, '{"words": ["I", "made", "my", "offer", "the", "ball", "is", "in", "your", "court", "now"], "correct_sentence": "I made my offer the ball is in your court now", "translation": "Eu fiz minha oferta, agora a decisão é sua"}'),
('20000000-0000-0000-0000-000000000200', 'word_order', 10, '{"words": ["Easy", "come", "easy", "go"], "correct_sentence": "Easy come easy go", "translation": "Fácil de ganhar, fácil de perder"}'),
('20000000-0000-0000-0000-000000000200', 'reading', 11, '{"passage": "Idioms are everywhere in everyday English. Sometimes a bad situation turns out to be a blessing in disguise. Other times, you just have to bite the bullet and deal with something difficult. If you mention someone and they suddenly appear, you say ''speak of the devil.'' After making a decision, you might say the ball is in your court. And some things will only happen when pigs fly — in other words, never.", "translation": "Idioms estão em todo lugar no inglês do dia a dia. Às vezes uma situação ruim se transforma em a blessing in disguise. Outras vezes, você só precisa bite the bullet e lidar com algo difícil. Se você menciona alguém e essa pessoa aparece de repente, você diz ''speak of the devil.'' Depois de tomar uma decisão, você pode dizer que the ball is in your court. E algumas coisas só vão acontecer when pigs fly — ou seja, nunca.", "question": "What does ''the ball is in your court'' mean?", "options": ["It is your turn to decide", "It will never happen", "Something bad happened"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000200', 'listening', 12, '{"audio_text": "I made my offer already, so the ball is in your court now. Just do not wait until pigs fly to decide.", "question": "What is the speaker waiting for?", "options": ["A decision", "A gift", "An apology"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000200', 'dictation', 13, '{"audio_text": "The ball is in your court now, so do not wait forever to decide.", "expected": "The ball is in your court now, so do not wait forever to decide."}'),
('20000000-0000-0000-0000-000000000200', 'typing', 14, '{"prompt_pt": "Traduza: ''Perder aquele emprego foi uma bênção disfarçada.''", "expected": "Losing that job was a blessing in disguise.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000200', 'typing', 15, '{"prompt_pt": "Traduza: ''Falando no diabo, lá vem ele.''", "expected": "Speak of the devil, here he comes.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 10 (IDIOMS)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

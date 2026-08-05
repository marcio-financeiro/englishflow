-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 13: Passive Avançada
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 12 (053_seed_b1_reported_speech_advanced.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 053_seed_b1_reported_speech_advanced.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 43: Passive Avançada
('30000000-0000-0000-0000-000000001261', 'has been done', 'hæz bɪn dʌn', 'phrase', 'foi feito (present perfect passivo)', 'The work has been done.', 'O trabalho foi feito.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001262', 'is being done', 'ɪz ˈbiːɪŋ dʌn', 'phrase', 'está sendo feito', 'The report is being done right now.', 'O relatório está sendo feito agora.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001263', 'was being done', 'wʌz ˈbiːɪŋ dʌn', 'phrase', 'estava sendo feito', 'The kitchen was being cleaned when I arrived.', 'A cozinha estava sendo limpa quando eu cheguei.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001264', 'have been given', 'hæv bɪn ˈɡɪvən', 'phrase', 'foram dados / receberam', 'They have been given new instructions.', 'Eles receberam novas instruções.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001265', 'had been', 'hæd bɪn', 'phrase', 'tinha sido (past perfect passivo)', 'The room had been cleaned before we arrived.', 'O quarto tinha sido limpo antes de chegarmos.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001266', 'will have been', 'wɪl hæv bɪn', 'phrase', 'terá sido (future perfect passivo)', 'The project will have been finished by June.', 'O projeto terá sido terminado até junho.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001267', 'give', 'ɡɪv', 'verb', 'dar', 'She was given a promotion.', 'Ela recebeu uma promoção.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001268', 'award', 'əˈwɔːrd', 'verb', 'premiar / conceder', 'He was awarded a medal.', 'Ele recebeu uma medalha.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001269', 'send', 'send', 'verb', 'enviar', 'I was sent a confirmation email.', 'Eu recebi um e-mail de confirmação.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001270', 'show', 'ʃoʊ', 'verb', 'mostrar', 'We were shown the new office.', 'Fomos mostrados o escritório novo.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001271', 'teach', 'tiːtʃ', 'verb', 'ensinar', 'The students were taught a new method.', 'Os alunos foram ensinados um novo método.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001272', 'grant', 'ɡrænt', 'verb', 'conceder', 'She was granted permission to leave.', 'Ela recebeu permissão para sair.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001273', 'have something done', 'hæv ˈsʌmθɪŋ dʌn', 'phrase', 'mandar fazer algo', 'I had my car repaired yesterday.', 'Eu mandei consertar meu carro ontem.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001274', 'get something done', 'ɡet ˈsʌmθɪŋ dʌn', 'phrase', 'mandar fazer algo (informal)', 'I need to get my hair cut.', 'Eu preciso cortar o cabelo (mandar cortar).', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001275', 'haircut', 'ˈherkʌt', 'noun', 'corte de cabelo', 'I got a haircut last week.', 'Eu cortei o cabelo semana passada.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001276', 'repair', 'rɪˈper', 'verb', 'consertar', 'We had the roof repaired.', 'Nós mandamos consertar o telhado.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001277', 'clean', 'kliːn', 'verb', 'limpar', 'They had the carpets cleaned.', 'Eles mandaram limpar os tapetes.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001278', 'fix', 'fɪks', 'verb', 'consertar / arrumar', 'I got my phone fixed.', 'Eu mandei arrumar meu celular.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001279', 'it needs to be done', 'ɪt niːdz tuː biː dʌn', 'phrase', 'precisa ser feito', 'This needs to be finished today.', 'Isso precisa ser terminado hoje.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001280', 'to be considered', 'tuː biː kənˈsɪdərd', 'phrase', 'a ser considerado', 'There are several factors to be considered.', 'Há vários fatores a serem considerados.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001281', 'worth doing', 'wɜːrθ ˈduːɪŋ', 'phrase', 'vale a pena fazer', 'This project is worth doing.', 'Esse projeto vale a pena.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001282', 'used to being', 'juːst tuː ˈbiːɪŋ', 'phrase', 'acostumado a ser', 'She is used to being praised.', 'Ela está acostumada a ser elogiada.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001283', 'avoid being', 'əˈvɔɪd ˈbiːɪŋ', 'phrase', 'evitar ser', 'He tried to avoid being seen.', 'Ele tentou evitar ser visto.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001284', 'end up being', 'end ʌp ˈbiːɪŋ', 'phrase', 'acabar sendo', 'The plan ended up being canceled.', 'O plano acabou sendo cancelado.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001285', 'process', 'ˈprɑːses', 'noun', 'processo', 'The process is being reviewed.', 'O processo está sendo revisado.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001286', 'inspect', 'ɪnˈspekt', 'verb', 'inspecionar', 'The factory is inspected every month.', 'A fábrica é inspecionada todo mês.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001287', 'review', 'rɪˈvjuː', 'verb', 'revisar', 'The contract will be reviewed tomorrow.', 'O contrato será revisado amanhã.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001288', 'complete', 'kəmˈpliːt', 'verb', 'completar', 'The form must be completed in full.', 'O formulário deve ser completado por inteiro.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001289', 'renovate', 'ˈrenəveɪt', 'verb', 'reformar', 'The building is being renovated.', 'O prédio está sendo reformado.', 'B1', array['passive-advanced']),
('30000000-0000-0000-0000-000000001290', 'submit', 'səbˈmɪt', 'verb', 'enviar / submeter', 'The report was submitted on time.', 'O relatório foi enviado a tempo.', 'B1', array['passive-advanced']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000043', 'B1', 'Passive Avançada', 'Use formas avançadas da voz passiva: perfeito e contínuo, causativa (have/get something done) e infinitivo/gerúndio passivos.', 13, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000211', '10000000-0000-0000-0000-000000000043', 'Passive Perfect & Continuous', 1, 10),
('20000000-0000-0000-0000-000000000212', '10000000-0000-0000-0000-000000000043', 'Two-Object Passive', 2, 10),
('20000000-0000-0000-0000-000000000213', '10000000-0000-0000-0000-000000000043', 'Causative — Have/Get Something Done', 3, 10),
('20000000-0000-0000-0000-000000000214', '10000000-0000-0000-0000-000000000043', 'Passive Infinitive & Gerund', 4, 10),
('20000000-0000-0000-0000-000000000215', '10000000-0000-0000-0000-000000000043', 'Passive Avançada (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 43.1: Passive Perfect & Continuous ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000211', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001261", "show_image": false}'),
('20000000-0000-0000-0000-000000000211', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001262", "show_image": false}'),
('20000000-0000-0000-0000-000000000211', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001264", "show_image": false}'),
('20000000-0000-0000-0000-000000000211', 'multiple_choice', 4, '{"question": "Complete: The work ___.", "audio_text": null, "options": ["has been done", "is doing", "did"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000211', 'multiple_choice', 5, '{"question": "Complete: The report ___ right now.", "audio_text": null, "options": ["is being done", "has done", "was done"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000211', 'matching', 6, '{"pairs": [{"left": "has been done", "right": "foi feito"}, {"left": "is being done", "right": "está sendo feito"}, {"left": "was being done", "right": "estava sendo feito"}, {"left": "have been given", "right": "receberam"}, {"left": "had been", "right": "tinha sido"}, {"left": "will have been", "right": "terá sido"}]}'),
('20000000-0000-0000-0000-000000000211', 'fill_blank', 7, '{"sentence": "The kitchen ___ cleaned when I arrived.", "options": ["was being", "has been", "will be"], "correct": "was being", "translation": "A cozinha estava sendo limpa quando eu cheguei."}'),
('20000000-0000-0000-0000-000000000211', 'fill_blank', 8, '{"sentence": "They ___ new instructions.", "options": ["have been given", "are giving", "gave"], "correct": "have been given", "translation": "Eles receberam novas instruções."}'),
('20000000-0000-0000-0000-000000000211', 'word_order', 9, '{"words": ["The", "room", "had", "been", "cleaned", "before", "we", "arrived"], "correct_sentence": "The room had been cleaned before we arrived", "translation": "O quarto tinha sido limpo antes de chegarmos"}'),
('20000000-0000-0000-0000-000000000211', 'word_order', 10, '{"words": ["The", "project", "will", "have", "been", "finished", "by", "June"], "correct_sentence": "The project will have been finished by June", "translation": "O projeto terá sido terminado até junho"}'),
('20000000-0000-0000-0000-000000000211', 'reading', 11, '{"passage": "Advanced passive forms let us talk about actions in progress or completed at a specific time. ''Is being done'' describes something happening now, like ''The report is being done right now.'' ''Has been done'' describes something completed, and ''had been'' describes something completed before another past action. ''Will have been'' describes something that will be finished by a future time.", "translation": "Formas avançadas da passiva nos permitem falar sobre ações em progresso ou completadas em um momento específico. ''Is being done'' descreve algo acontecendo agora, como ''O relatório está sendo feito agora.'' ''Has been done'' descreve algo completado, e ''had been'' descreve algo completado antes de outra ação no passado. ''Will have been'' descreve algo que estará terminado até um momento futuro.", "question": "What does ''is being done'' describe?", "options": ["A finished action", "An action happening now", "A future action"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000211', 'listening', 12, '{"audio_text": "The room had been cleaned before we arrived, but the kitchen was still being painted.", "question": "What was still happening when they arrived?", "options": ["Cleaning the room", "Painting the kitchen", "Finishing the project"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000211', 'dictation', 13, '{"audio_text": "The room had been cleaned before we arrived, and the report is being done right now.", "expected": "The room had been cleaned before we arrived, and the report is being done right now."}'),
('20000000-0000-0000-0000-000000000211', 'typing', 14, '{"prompt_pt": "Traduza: ''O relatório está sendo feito agora.''", "expected": "The report is being done right now.", "ai_review": true}');

-- ---------- Lição 43.2: Two-Object Passive ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000212', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001267", "show_image": false}'),
('20000000-0000-0000-0000-000000000212', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001269", "show_image": false}'),
('20000000-0000-0000-0000-000000000212', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001270", "show_image": false}'),
('20000000-0000-0000-0000-000000000212', 'multiple_choice', 4, '{"question": "Complete: She ___ a promotion.", "audio_text": null, "options": ["was given", "gave", "is giving"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000212', 'multiple_choice', 5, '{"question": "Complete: We ___ the new office.", "audio_text": null, "options": ["were shown", "showed", "are showing"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000212', 'matching', 6, '{"pairs": [{"left": "give", "right": "dar"}, {"left": "award", "right": "premiar"}, {"left": "send", "right": "enviar"}, {"left": "show", "right": "mostrar"}, {"left": "teach", "right": "ensinar"}, {"left": "grant", "right": "conceder"}]}'),
('20000000-0000-0000-0000-000000000212', 'fill_blank', 7, '{"sentence": "I was ___ a confirmation email.", "options": ["sent", "send", "sending"], "correct": "sent", "translation": "Eu recebi um e-mail de confirmação."}'),
('20000000-0000-0000-0000-000000000212', 'fill_blank', 8, '{"sentence": "She was ___ permission to leave.", "options": ["granted", "grant", "granting"], "correct": "granted", "translation": "Ela recebeu permissão para sair."}'),
('20000000-0000-0000-0000-000000000212', 'word_order', 9, '{"words": ["He", "was", "awarded", "a", "medal"], "correct_sentence": "He was awarded a medal", "translation": "Ele recebeu uma medalha"}'),
('20000000-0000-0000-0000-000000000212', 'word_order', 10, '{"words": ["The", "students", "were", "taught", "a", "new", "method"], "correct_sentence": "The students were taught a new method", "translation": "Os alunos foram ensinados um novo método"}'),
('20000000-0000-0000-0000-000000000212', 'reading', 11, '{"passage": "When a verb has two objects, like ''give someone something,'' we can make the person the subject of the passive sentence: ''She was given a promotion.'' This is very common with verbs like ''send,'' ''show,'' ''teach,'' and ''grant.'' It sounds more natural than focusing on the object: ''A promotion was given to her.''", "translation": "Quando um verbo tem dois objetos, como ''dar algo a alguém,'' podemos tornar a pessoa o sujeito da frase passiva: ''Ela recebeu uma promoção.'' Isso é muito comum com verbos como ''send,'' ''show,'' ''teach'' e ''grant.'' Soa mais natural do que focar no objeto: ''Uma promoção foi dada a ela.''", "question": "Which sentence sounds more natural in English?", "options": ["A promotion was given to her", "She was given a promotion", "Both sound equally natural"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000212', 'listening', 12, '{"audio_text": "We were shown the new office yesterday, and I was given a new badge.", "question": "What was the speaker given?", "options": ["A new office", "A new badge", "A medal"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000212', 'dictation', 13, '{"audio_text": "She was given a promotion, and he was awarded a medal.", "expected": "She was given a promotion, and he was awarded a medal."}'),
('20000000-0000-0000-0000-000000000212', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela recebeu uma promoção.''", "expected": "She was given a promotion.", "ai_review": true}');

-- ---------- Lição 43.3: Causative — Have/Get Something Done ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000213', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001273", "show_image": false}'),
('20000000-0000-0000-0000-000000000213', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001275", "show_image": false}'),
('20000000-0000-0000-0000-000000000213', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001276", "show_image": false}'),
('20000000-0000-0000-0000-000000000213', 'multiple_choice', 4, '{"question": "Complete: I had my car ___ yesterday.", "audio_text": null, "options": ["repaired", "repair", "repairing"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000213', 'multiple_choice', 5, '{"question": "Complete: I need to get my hair ___.", "audio_text": null, "options": ["cut", "cutting", "cuts"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000213', 'matching', 6, '{"pairs": [{"left": "have something done", "right": "mandar fazer"}, {"left": "get something done", "right": "mandar fazer (informal)"}, {"left": "haircut", "right": "corte de cabelo"}, {"left": "repair", "right": "consertar"}, {"left": "clean", "right": "limpar"}, {"left": "fix", "right": "consertar / arrumar"}]}'),
('20000000-0000-0000-0000-000000000213', 'fill_blank', 7, '{"sentence": "We had the carpets ___.", "options": ["cleaned", "clean", "cleaning"], "correct": "cleaned", "translation": "Nós mandamos limpar os tapetes."}'),
('20000000-0000-0000-0000-000000000213', 'fill_blank', 8, '{"sentence": "I got my phone ___.", "options": ["fixed", "fix", "fixing"], "correct": "fixed", "translation": "Eu mandei arrumar meu celular."}'),
('20000000-0000-0000-0000-000000000213', 'word_order', 9, '{"words": ["I", "had", "my", "car", "repaired", "yesterday"], "correct_sentence": "I had my car repaired yesterday", "translation": "Eu mandei consertar meu carro ontem"}'),
('20000000-0000-0000-0000-000000000213', 'word_order', 10, '{"words": ["We", "had", "the", "roof", "repaired"], "correct_sentence": "We had the roof repaired", "translation": "Nós mandamos consertar o telhado"}'),
('20000000-0000-0000-0000-000000000213', 'reading', 11, '{"passage": "We use ''have something done'' or ''get something done'' when someone else does something for us, instead of doing it ourselves. For example, ''I had my car repaired'' means a mechanic repaired it, not me. ''Get'' is more informal than ''have,'' but both are used the same way: subject + have/get + object + past participle.", "translation": "Usamos ''have something done'' ou ''get something done'' quando outra pessoa faz algo por nós, em vez de fazermos nós mesmos. Por exemplo, ''Eu mandei consertar meu carro'' significa que um mecânico o consertou, não eu. ''Get'' é mais informal que ''have,'' mas ambos são usados da mesma forma: sujeito + have/get + objeto + particípio passado.", "question": "What does ''I had my car repaired'' mean?", "options": ["I repaired the car myself", "Someone else repaired the car for me", "The car was never repaired"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000213', 'listening', 12, '{"audio_text": "I had my car repaired yesterday, and I also got a haircut in the afternoon.", "question": "What did the speaker do in the afternoon?", "options": ["Repaired the car", "Got a haircut", "Cleaned the carpets"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000213', 'dictation', 13, '{"audio_text": "I had my car repaired, and we had the carpets cleaned.", "expected": "I had my car repaired, and we had the carpets cleaned."}'),
('20000000-0000-0000-0000-000000000213', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu cortei o cabelo semana passada.''", "expected": "I got a haircut last week.", "ai_review": true}');

-- ---------- Lição 43.4: Passive Infinitive & Gerund ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000214', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001279", "show_image": false}'),
('20000000-0000-0000-0000-000000000214', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001281", "show_image": false}'),
('20000000-0000-0000-0000-000000000214', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001283", "show_image": false}'),
('20000000-0000-0000-0000-000000000214', 'multiple_choice', 4, '{"question": "Complete: This ___ finished today.", "audio_text": null, "options": ["needs to be", "need to be", "needs being"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000214', 'multiple_choice', 5, '{"question": "Complete: This project is ___.", "audio_text": null, "options": ["worth doing", "worth to do", "worth done"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000214', 'matching', 6, '{"pairs": [{"left": "it needs to be done", "right": "precisa ser feito"}, {"left": "to be considered", "right": "a ser considerado"}, {"left": "worth doing", "right": "vale a pena"}, {"left": "used to being", "right": "acostumado a ser"}, {"left": "avoid being", "right": "evitar ser"}, {"left": "end up being", "right": "acabar sendo"}]}'),
('20000000-0000-0000-0000-000000000214', 'fill_blank', 7, '{"sentence": "She is used to ___ praised.", "options": ["being", "be", "been"], "correct": "being", "translation": "Ela está acostumada a ser elogiada."}'),
('20000000-0000-0000-0000-000000000214', 'fill_blank', 8, '{"sentence": "He tried to ___ seen.", "options": ["avoid being", "avoid be", "avoiding being"], "correct": "avoid being", "translation": "Ele tentou evitar ser visto."}'),
('20000000-0000-0000-0000-000000000214', 'word_order', 9, '{"words": ["There", "are", "several", "factors", "to", "be", "considered"], "correct_sentence": "There are several factors to be considered", "translation": "Há vários fatores a serem considerados"}'),
('20000000-0000-0000-0000-000000000214', 'word_order', 10, '{"words": ["The", "plan", "ended", "up", "being", "canceled"], "correct_sentence": "The plan ended up being canceled", "translation": "O plano acabou sendo cancelado"}'),
('20000000-0000-0000-0000-000000000214', 'reading', 11, '{"passage": "After some expressions, we use the passive infinitive (to be + past participle) or the passive gerund (being + past participle). ''There are several factors to be considered'' uses the passive infinitive. ''She is used to being praised'' uses the passive gerund after ''used to.'' Sometimes plans ''end up being canceled'' when things do not go as expected.", "translation": "Depois de algumas expressões, usamos o infinitivo passivo (to be + particípio) ou o gerúndio passivo (being + particípio). ''Há vários fatores a serem considerados'' usa o infinitivo passivo. ''Ela está acostumada a ser elogiada'' usa o gerúndio passivo depois de ''used to.'' Às vezes planos ''acabam sendo cancelados'' quando as coisas não saem como esperado.", "question": "What form follows ''used to'' in the passive?", "options": ["Infinitive", "Gerund", "Past simple"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000214', 'listening', 12, '{"audio_text": "This needs to be finished today, but honestly, I am not sure it is worth doing at all.", "question": "What does the speaker doubt?", "options": ["Whether it needs to be finished", "Whether it is worth doing", "Whether it is being considered"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000214', 'dictation', 13, '{"audio_text": "This needs to be finished today, and there are several factors to be considered.", "expected": "This needs to be finished today, and there are several factors to be considered."}'),
('20000000-0000-0000-0000-000000000214', 'typing', 14, '{"prompt_pt": "Traduza: ''Esse projeto vale a pena.''", "expected": "This project is worth doing.", "ai_review": true}');

-- ---------- Lição 43.5: Passive Avançada (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000215', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001285", "show_image": false}'),
('20000000-0000-0000-0000-000000000215', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001287", "show_image": false}'),
('20000000-0000-0000-0000-000000000215', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001289", "show_image": false}'),
('20000000-0000-0000-0000-000000000215', 'multiple_choice', 4, '{"question": "Complete: The process is being ___.", "audio_text": null, "options": ["reviewed", "review", "reviews"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000215', 'multiple_choice', 5, '{"question": "Complete: The building is being ___.", "audio_text": null, "options": ["renovated", "renovate", "renovation"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000215', 'matching', 6, '{"pairs": [{"left": "process", "right": "processo"}, {"left": "inspect", "right": "inspecionar"}, {"left": "review", "right": "revisar"}, {"left": "complete", "right": "completar"}, {"left": "renovate", "right": "reformar"}, {"left": "submit", "right": "enviar"}]}'),
('20000000-0000-0000-0000-000000000215', 'fill_blank', 7, '{"sentence": "The factory is ___ every month.", "options": ["inspected", "inspect", "inspecting"], "correct": "inspected", "translation": "A fábrica é inspecionada todo mês."}'),
('20000000-0000-0000-0000-000000000215', 'fill_blank', 8, '{"sentence": "The form must be ___ in full.", "options": ["completed", "complete", "completing"], "correct": "completed", "translation": "O formulário deve ser completado por inteiro."}'),
('20000000-0000-0000-0000-000000000215', 'word_order', 9, '{"words": ["The", "contract", "will", "be", "reviewed", "tomorrow"], "correct_sentence": "The contract will be reviewed tomorrow", "translation": "O contrato será revisado amanhã"}'),
('20000000-0000-0000-0000-000000000215', 'word_order', 10, '{"words": ["The", "report", "was", "submitted", "on", "time"], "correct_sentence": "The report was submitted on time", "translation": "O relatório foi enviado a tempo"}'),
('20000000-0000-0000-0000-000000000215', 'reading', 11, '{"passage": "In any workplace, processes are constantly being reviewed and improved. Factories are inspected regularly, forms must be completed correctly, and buildings are sometimes renovated to meet new standards. When a report is submitted on time, it shows the team is managing its work well.", "translation": "Em qualquer ambiente de trabalho, os processos estão constantemente sendo revisados e melhorados. Fábricas são inspecionadas regularmente, formulários devem ser preenchidos corretamente, e prédios às vezes são reformados para atender novos padrões. Quando um relatório é enviado a tempo, mostra que a equipe está gerenciando bem o trabalho.", "question": "What happens to factories regularly, according to the text?", "options": ["They are renovated", "They are inspected", "They are submitted"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000215', 'listening', 12, '{"audio_text": "The process is being reviewed, and the report was submitted on time. The building will be renovated next year.", "question": "When will the building be renovated?", "options": ["This year", "Next year", "It already was"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000215', 'dictation', 13, '{"audio_text": "The process is being reviewed, and the report was submitted on time.", "expected": "The process is being reviewed, and the report was submitted on time."}'),
('20000000-0000-0000-0000-000000000215', 'typing', 14, '{"prompt_pt": "Traduza: ''O processo está sendo revisado.''", "expected": "The process is being reviewed.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000215', 'typing', 15, '{"prompt_pt": "Traduza: ''O relatório foi enviado a tempo.''", "expected": "The report was submitted on time.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 13 (PASSIVE AVANÇADA)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

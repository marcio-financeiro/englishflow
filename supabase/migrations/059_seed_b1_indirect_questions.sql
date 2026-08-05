-- ============================================================
-- Migration 059: Conteúdo B1 — Módulo 18 "Perguntas Indiretas e Question Tags"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-058)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001411', 'wonder', '/ˈwʌndər/', 'verb', 'imaginar, ficar curioso sobre', 'I wonder where she lives.', 'Eu fico imaginando onde ela mora.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001412', 'curious', '/ˈkjʊriəs/', 'adjective', 'curioso', 'I am curious about the results.', 'Estou curioso sobre os resultados.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001413', 'polite', '/pəˈlaɪt/', 'adjective', 'educado', 'It is more polite to ask indirectly.', 'É mais educado perguntar indiretamente.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001414', 'indirect', '/ˌɪndəˈrekt/', 'adjective', 'indireto', 'She used an indirect question to be polite.', 'Ela usou uma pergunta indireta para ser educada.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001415', 'clarify', '/ˈklærɪfaɪ/', 'verb', 'esclarecer', 'Could you clarify what you mean?', 'Você poderia esclarecer o que você quer dizer?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001416', 'confirm', '/kənˈfɜːrm/', 'verb', 'confirmar', 'Can you confirm the meeting time?', 'Você pode confirmar o horário da reunião?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001417', 'request', '/rɪˈkwest/', 'noun', 'pedido, solicitação', 'I have a small request to make.', 'Tenho um pequeno pedido a fazer.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001418', 'inquire', '/ɪnˈkwaɪər/', 'verb', 'perguntar, indagar', 'She inquired about the price of the tickets.', 'Ela indagou sobre o preço dos ingressos.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001419', 'assume', '/əˈsuːm/', 'verb', 'presumir', 'I assume you already know the answer.', 'Presumo que você já saiba a resposta.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001420', 'suppose', '/səˈpoʊz/', 'verb', 'supor', 'I suppose the train will be late again.', 'Suponho que o trem vai atrasar de novo.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001421', 'guess', '/ɡes/', 'verb', 'adivinhar, achar', 'I guess we should leave now.', 'Acho que deveríamos sair agora.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001422', 'check', '/tʃek/', 'verb', 'verificar', 'Could you check if the door is locked?', 'Você poderia verificar se a porta está trancada?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001423', 'verify', '/ˈverɪfaɪ/', 'verb', 'verificar', 'We need to verify your identity first.', 'Precisamos verificar sua identidade primeiro.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001424', 'sure', '/ʃʊr/', 'adjective', 'certo, seguro', 'Are you sure about that?', 'Você tem certeza sobre isso?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001425', 'certain', '/ˈsɜːrtən/', 'adjective', 'certo, seguro', 'I am certain she will call back.', 'Tenho certeza de que ela vai retornar a ligação.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001426', 'doubt', '/daʊt/', 'noun', 'dúvida', 'I have some doubts about the plan.', 'Tenho algumas dúvidas sobre o plano.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001427', 'mention', '/ˈmenʃən/', 'verb', 'mencionar', 'Did she mention what time she was arriving?', 'Ela mencionou a que horas ia chegar?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001428', 'explain', '/ɪkˈspleɪn/', 'verb', 'explicar', 'Could you explain how this works?', 'Você poderia explicar como isso funciona?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001429', 'mind', '/maɪnd/', 'verb', 'importar-se', 'Would you mind telling me the time?', 'Você se importaria de me dizer as horas?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001430', 'confused', '/kənˈfjuːzd/', 'adjective', 'confuso', 'I am a bit confused about the instructions.', 'Estou um pouco confuso com as instruções.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001431', 'tag question', '/tæɡ ˈkwestʃən/', 'noun', 'question tag', 'A tag question checks if something is true.', 'Um question tag confirma se algo é verdade.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001432', 'statement', '/ˈsteɪtmənt/', 'noun', 'afirmação', 'The statement was followed by a question tag.', 'A afirmação foi seguida por um question tag.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001433', 'correct', '/kəˈrekt/', 'adjective', 'correto', 'That is correct, isn''t it?', 'Isso está correto, não está?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001434', 'right', '/raɪt/', 'adjective', 'certo, correto', 'You live near here, right?', 'Você mora perto daqui, certo?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001435', 'really', '/ˈriːəli/', 'adverb', 'mesmo, realmente', 'You really don''t remember, do you?', 'Você realmente não se lembra, não é?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001436', 'actually', '/ˈæktʃuəli/', 'adverb', 'na verdade', 'Actually, could you tell me where the exit is?', 'Na verdade, você poderia me dizer onde é a saída?', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001437', 'exactly', '/ɪɡˈzæktli/', 'adverb', 'exatamente', 'I don''t know exactly what happened.', 'Eu não sei exatamente o que aconteceu.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001438', 'apparently', '/əˈpærəntli/', 'adverb', 'aparentemente', 'Apparently, the flight was delayed.', 'Aparentemente, o voo atrasou.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001439', 'definitely', '/ˈdefɪnətli/', 'adverb', 'definitivamente', 'That is definitely the right answer.', 'Essa é definitivamente a resposta certa.', 'B1', array['grammar']),
('30000000-0000-0000-0000-000000001440', 'probably', '/ˈprɒbəbli/', 'adverb', 'provavelmente', 'She is probably still at work.', 'Ela provavelmente ainda está no trabalho.', 'B1', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000048', 'B1', 'Perguntas Indiretas e Question Tags', 'Aprenda a fazer perguntas de forma mais educada com perguntas indiretas (Could you tell me...?) e a confirmar informações com question tags (isn''t it? / don''t you?).', 18, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000236', '10000000-0000-0000-0000-000000000048', 'Perguntas indiretas — introdução', 1, 20),
('20000000-0000-0000-0000-000000000237', '10000000-0000-0000-0000-000000000048', 'Fazendo pedidos educadamente', 2, 20),
('20000000-0000-0000-0000-000000000238', '10000000-0000-0000-0000-000000000048', 'Confirmando informação', 3, 20),
('20000000-0000-0000-0000-000000000239', '10000000-0000-0000-0000-000000000048', 'Question tags', 4, 20),
('20000000-0000-0000-0000-000000000240', '10000000-0000-0000-0000-000000000048', 'Revisão: comunicação educada', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 236: Perguntas indiretas — introdução (wonder, curious, polite, indirect, clarify, confirm)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000236', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001411", "show_image": false}'),
('20000000-0000-0000-0000-000000000236', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001413", "show_image": false}'),
('20000000-0000-0000-0000-000000000236', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001414", "show_image": false}'),
('20000000-0000-0000-0000-000000000236', 'multiple_choice', 4, '{"question": "Which is the more polite, indirect way to ask ''Where is the station?''", "audio_text": null, "options": ["Could you tell me where the station is?", "Where is the station?", "Station where?"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000236', 'multiple_choice', 5, '{"question": "I ___ where she lives.", "audio_text": null, "options": ["wonder", "clarify", "confirm"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000236', 'matching', 6, '{"pairs": [{"left": "wonder", "right": "imaginar, ficar curioso"}, {"left": "curious", "right": "curioso"}, {"left": "polite", "right": "educado"}, {"left": "indirect", "right": "indireto"}, {"left": "clarify", "right": "esclarecer"}, {"left": "confirm", "right": "confirmar"}]}'),
('20000000-0000-0000-0000-000000000236', 'fill_blank', 7, '{"sentence": "Could you ___ what you mean?", "options": ["clarify", "wonder", "curious"], "correct": "clarify", "translation": "Você poderia esclarecer o que você quer dizer?"}'),
('20000000-0000-0000-0000-000000000236', 'fill_blank', 8, '{"sentence": "I am ___ about the results.", "options": ["curious", "polite", "indirect"], "correct": "curious", "translation": "Estou curioso sobre os resultados."}'),
('20000000-0000-0000-0000-000000000236', 'word_order', 9, '{"words": ["Can", "you", "confirm", "the", "meeting", "time"], "correct_sentence": "Can you confirm the meeting time", "translation": "Você pode confirmar o horário da reunião"}'),
('20000000-0000-0000-0000-000000000236', 'word_order', 10, '{"words": ["She", "used", "an", "indirect", "question", "to", "be", "polite"], "correct_sentence": "She used an indirect question to be polite", "translation": "Ela usou uma pergunta indireta para ser educada"}'),
('20000000-0000-0000-0000-000000000236', 'reading', 11, '{"passage": "In English, indirect questions are considered more polite than direct ones. Instead of asking ''Where is the bathroom?'', you can say ''Could you tell me where the bathroom is?''. This small change shows respect and makes the question sound softer.", "translation": "Em inglês, perguntas indiretas são consideradas mais educadas do que as diretas. Em vez de perguntar ''Where is the bathroom?'', você pode dizer ''Could you tell me where the bathroom is?''. Essa pequena mudança demonstra respeito e deixa a pergunta com um tom mais suave.", "question": "Why are indirect questions used, according to the text?", "options": ["To sound more polite", "To be shorter", "To avoid grammar mistakes"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000236', 'listening', 12, '{"audio_text": "I wonder where she lives. Could you clarify what you mean? Can you confirm the meeting time?", "question": "What does the speaker wonder about?", "options": ["The meeting time", "Where she lives", "What you mean"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000236', 'dictation', 13, '{"audio_text": "Could you clarify what you mean?", "expected": "Could you clarify what you mean?"}'),
('20000000-0000-0000-0000-000000000236', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu fico curioso e me pergunto onde ela mora.''", "expected": "I am curious and I wonder where she lives.", "ai_review": true}'),

-- Lição 237: Fazendo pedidos educadamente (request, inquire, assume, suppose, guess, check)
('20000000-0000-0000-0000-000000000237', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001417", "show_image": false}'),
('20000000-0000-0000-0000-000000000237', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001418", "show_image": false}'),
('20000000-0000-0000-0000-000000000237', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001422", "show_image": false}'),
('20000000-0000-0000-0000-000000000237', 'multiple_choice', 4, '{"question": "Could you ___ if the door is locked?", "audio_text": null, "options": ["check", "guess", "assume"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000237', 'multiple_choice', 5, '{"question": "What does ''inquire'' mean?", "audio_text": null, "options": ["Perguntar, indagar", "Presumir", "Verificar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000237', 'matching', 6, '{"pairs": [{"left": "request", "right": "pedido"}, {"left": "inquire", "right": "perguntar, indagar"}, {"left": "assume", "right": "presumir"}, {"left": "suppose", "right": "supor"}, {"left": "guess", "right": "adivinhar, achar"}, {"left": "check", "right": "verificar"}]}'),
('20000000-0000-0000-0000-000000000237', 'fill_blank', 7, '{"sentence": "I ___ you already know the answer.", "options": ["assume", "request", "check"], "correct": "assume", "translation": "Presumo que você já saiba a resposta."}'),
('20000000-0000-0000-0000-000000000237', 'fill_blank', 8, '{"sentence": "She ___ about the price of the tickets.", "options": ["inquired", "guessed", "checked"], "correct": "inquired", "translation": "Ela indagou sobre o preço dos ingressos."}'),
('20000000-0000-0000-0000-000000000237', 'word_order', 9, '{"words": ["I", "have", "a", "small", "request", "to", "make"], "correct_sentence": "I have a small request to make", "translation": "Tenho um pequeno pedido a fazer"}'),
('20000000-0000-0000-0000-000000000237', 'word_order', 10, '{"words": ["I", "suppose", "the", "train", "will", "be", "late"], "correct_sentence": "I suppose the train will be late", "translation": "Suponho que o trem vai atrasar"}'),
('20000000-0000-0000-0000-000000000237', 'reading', 11, '{"passage": "When you make a request, it sounds more polite if you soften it. Instead of saying ''Check the door'', you can say ''Could you check if the door is locked?''. She inquired politely instead of demanding an answer, and I guess most people prefer that approach.", "translation": "Quando você faz um pedido, ele soa mais educado se for suavizado. Em vez de dizer ''Check the door'', você pode dizer ''Could you check if the door is locked?''. Ela indagou educadamente em vez de exigir uma resposta, e eu acho que a maioria das pessoas prefere essa abordagem.", "question": "How did she ask about the information, according to the text?", "options": ["She demanded an answer", "She inquired politely", "She assumed the answer"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000237', 'listening', 12, '{"audio_text": "Could you check if the door is locked? I have a small request to make. I suppose the train will be late again.", "question": "What does the speaker want checked?", "options": ["The train schedule", "The door", "The ticket price"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000237', 'dictation', 13, '{"audio_text": "I have a small request to make.", "expected": "I have a small request to make."}'),
('20000000-0000-0000-0000-000000000237', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela indagou educadamente e eu supus que ele diria sim.''", "expected": "She inquired politely and I supposed he would say yes.", "ai_review": true}'),

-- Lição 238: Confirmando informação (verify, sure, certain, doubt, mention, explain)
('20000000-0000-0000-0000-000000000238', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001423", "show_image": false}'),
('20000000-0000-0000-0000-000000000238', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001426", "show_image": false}'),
('20000000-0000-0000-0000-000000000238', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001428", "show_image": false}'),
('20000000-0000-0000-0000-000000000238', 'multiple_choice', 4, '{"question": "Are you ___ about that?", "audio_text": null, "options": ["sure", "doubt", "mention"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000238', 'multiple_choice', 5, '{"question": "We need to ___ your identity first.", "audio_text": null, "options": ["verify", "doubt", "explain"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000238', 'matching', 6, '{"pairs": [{"left": "verify", "right": "verificar"}, {"left": "sure", "right": "certo, seguro"}, {"left": "certain", "right": "certo, seguro"}, {"left": "doubt", "right": "dúvida"}, {"left": "mention", "right": "mencionar"}, {"left": "explain", "right": "explicar"}]}'),
('20000000-0000-0000-0000-000000000238', 'fill_blank', 7, '{"sentence": "Did she ___ what time she was arriving?", "options": ["mention", "doubt", "verify"], "correct": "mention", "translation": "Ela mencionou a que horas ia chegar?"}'),
('20000000-0000-0000-0000-000000000238', 'fill_blank', 8, '{"sentence": "Could you ___ how this works?", "options": ["explain", "doubt", "sure"], "correct": "explain", "translation": "Você poderia explicar como isso funciona?"}'),
('20000000-0000-0000-0000-000000000238', 'word_order', 9, '{"words": ["I", "am", "certain", "she", "will", "call", "back"], "correct_sentence": "I am certain she will call back", "translation": "Tenho certeza de que ela vai retornar a ligação"}'),
('20000000-0000-0000-0000-000000000238', 'word_order', 10, '{"words": ["I", "have", "some", "doubts", "about", "the", "plan"], "correct_sentence": "I have some doubts about the plan", "translation": "Tenho algumas dúvidas sobre o plano"}'),
('20000000-0000-0000-0000-000000000238', 'reading', 11, '{"passage": "Before confirming an appointment, the clerk asked to verify my identity. I was sure about my information, but I still had a small doubt, so I asked her to explain the process again. She kindly did, and I felt certain everything was correct.", "translation": "Antes de confirmar um agendamento, o atendente pediu para verificar minha identidade. Eu tinha certeza das minhas informações, mas ainda tinha uma pequena dúvida, então pedi para ela explicar o processo de novo. Ela gentilmente explicou, e eu me senti seguro de que tudo estava correto.", "question": "What did the clerk ask to do first?", "options": ["Explain the process", "Verify the identity", "Mention the doubt"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000238', 'listening', 12, '{"audio_text": "We need to verify your identity first. Are you sure about that? Could you explain how this works?", "question": "What does the speaker need to do first?", "options": ["Explain the process", "Verify identity", "Mention a doubt"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000238', 'dictation', 13, '{"audio_text": "Are you sure about that?", "expected": "Are you sure about that?"}'),
('20000000-0000-0000-0000-000000000238', 'typing', 14, '{"prompt_pt": "Traduza: ''Tenho certeza, mas ainda tenho uma dúvida.''", "expected": "I am sure, but I still have a doubt.", "ai_review": true}'),

-- Lição 239: Question tags (mind, confused, tag question, statement, correct, right)
('20000000-0000-0000-0000-000000000239', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001431", "show_image": false}'),
('20000000-0000-0000-0000-000000000239', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001433", "show_image": false}'),
('20000000-0000-0000-0000-000000000239', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001434", "show_image": false}'),
('20000000-0000-0000-0000-000000000239', 'multiple_choice', 4, '{"question": "You live near here, ___?", "audio_text": null, "options": ["don''t you", "do you", "aren''t you"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000239', 'multiple_choice', 5, '{"question": "That is correct, ___?", "audio_text": null, "options": ["isn''t it", "is it", "wasn''t it"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000239', 'matching', 6, '{"pairs": [{"left": "mind", "right": "importar-se"}, {"left": "confused", "right": "confuso"}, {"left": "tag question", "right": "question tag"}, {"left": "statement", "right": "afirmação"}, {"left": "correct", "right": "correto"}, {"left": "right", "right": "certo, correto"}]}'),
('20000000-0000-0000-0000-000000000239', 'fill_blank', 7, '{"sentence": "Would you ___ telling me the time?", "options": ["mind", "confused", "right"], "correct": "mind", "translation": "Você se importaria de me dizer as horas?"}'),
('20000000-0000-0000-0000-000000000239', 'fill_blank', 8, '{"sentence": "A ___ checks if something is true.", "options": ["tag question", "statement", "request"], "correct": "tag question", "translation": "Um question tag confirma se algo é verdade."}'),
('20000000-0000-0000-0000-000000000239', 'word_order', 9, '{"words": ["I", "am", "a", "bit", "confused", "about", "the", "instructions"], "correct_sentence": "I am a bit confused about the instructions", "translation": "Estou um pouco confuso com as instruções"}'),
('20000000-0000-0000-0000-000000000239', 'word_order', 10, '{"words": ["The", "statement", "was", "followed", "by", "a", "tag", "question"], "correct_sentence": "The statement was followed by a tag question", "translation": "A afirmação foi seguida por um question tag"}'),
('20000000-0000-0000-0000-000000000239', 'reading', 11, '{"passage": "A tag question is a short question added to the end of a statement, like ''isn''t it?'' or ''don''t you?''. It usually asks the listener to confirm that a statement is correct. If the statement is positive, the tag is usually negative, and if it is negative, the tag is positive.", "translation": "Um question tag é uma pergunta curta adicionada ao final de uma afirmação, como ''isn''t it?'' ou ''don''t you?''. Geralmente pede que o ouvinte confirme que uma afirmação está correta. Se a afirmação é positiva, o tag geralmente é negativo, e se é negativa, o tag é positivo.", "question": "What is a tag question used for, according to the text?", "options": ["Making a request", "Confirming a statement", "Explaining a process"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000239', 'listening', 12, '{"audio_text": "You live near here, don''t you? That is correct, isn''t it? I am a bit confused about the instructions.", "question": "What is the speaker confused about?", "options": ["Where they live", "The instructions", "The question tag"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000239', 'dictation', 13, '{"audio_text": "You live near here, don''t you?", "expected": "You live near here, don''t you?"}'),
('20000000-0000-0000-0000-000000000239', 'typing', 14, '{"prompt_pt": "Traduza usando question tag: ''Você está certo, não está?''", "expected": "You are right, aren''t you?", "ai_review": true}'),

-- Lição 240: Revisão + comunicação educada (really, actually, exactly, apparently, definitely, probably)
('20000000-0000-0000-0000-000000000240', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001436", "show_image": false}'),
('20000000-0000-0000-0000-000000000240', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001438", "show_image": false}'),
('20000000-0000-0000-0000-000000000240', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001440", "show_image": false}'),
('20000000-0000-0000-0000-000000000240', 'multiple_choice', 4, '{"question": "___, could you tell me where the exit is?", "audio_text": null, "options": ["Actually", "Really", "Probably"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000240', 'multiple_choice', 5, '{"question": "That is ___ the right answer.", "audio_text": null, "options": ["definitely", "apparently", "probably"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000240', 'matching', 6, '{"pairs": [{"left": "really", "right": "mesmo, realmente"}, {"left": "actually", "right": "na verdade"}, {"left": "exactly", "right": "exatamente"}, {"left": "apparently", "right": "aparentemente"}, {"left": "definitely", "right": "definitivamente"}, {"left": "probably", "right": "provavelmente"}]}'),
('20000000-0000-0000-0000-000000000240', 'fill_blank', 7, '{"sentence": "___, the flight was delayed.", "options": ["Apparently", "Exactly", "Really"], "correct": "Apparently", "translation": "Aparentemente, o voo atrasou."}'),
('20000000-0000-0000-0000-000000000240', 'fill_blank', 8, '{"sentence": "She is ___ still at work.", "options": ["probably", "exactly", "definitely"], "correct": "probably", "translation": "Ela provavelmente ainda está no trabalho."}'),
('20000000-0000-0000-0000-000000000240', 'word_order', 9, '{"words": ["I", "don''t", "know", "exactly", "what", "happened"], "correct_sentence": "I don''t know exactly what happened", "translation": "Eu não sei exatamente o que aconteceu"}'),
('20000000-0000-0000-0000-000000000240', 'word_order', 10, '{"words": ["You", "really", "don''t", "remember", "do", "you"], "correct_sentence": "You really don''t remember do you", "translation": "Você realmente não se lembra, não é"}'),
('20000000-0000-0000-0000-000000000240', 'reading', 11, '{"passage": "Words like really, actually, exactly, apparently, definitely, and probably help make conversations sound more natural. ''Actually, could you tell me where the station is?'' sounds more polite than a direct question. ''You are coming to the party, aren''t you?'' uses a tag question to confirm a plan politely.", "translation": "Palavras como really, actually, exactly, apparently, definitely e probably ajudam a deixar as conversas mais naturais. ''Actually, could you tell me where the station is?'' soa mais educado do que uma pergunta direta. ''You are coming to the party, aren''t you?'' usa um question tag para confirmar um plano educadamente.", "question": "What do words like ''actually'' and ''really'' help with, according to the text?", "options": ["Making conversation sound more natural", "Avoiding all questions", "Making sentences shorter"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000240', 'listening', 12, '{"audio_text": "Actually, could you tell me where the station is? Apparently, the flight was delayed. That is definitely the right answer.", "question": "What was apparently delayed, according to the audio?", "options": ["The train", "The flight", "The meeting"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000240', 'dictation', 13, '{"audio_text": "That is definitely the right answer.", "expected": "That is definitely the right answer."}'),
('20000000-0000-0000-0000-000000000240', 'typing', 14, '{"prompt_pt": "Traduza: ''Você está indo à festa, não está? Provavelmente sim.''", "expected": "You are going to the party, aren''t you? Probably yes.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000240', 'typing', 15, '{"prompt_pt": "Traduza: ''Na verdade, você poderia me dizer se isso está correto?''", "expected": "Actually, could you tell me if this is correct?", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 6: Email Writing
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 5 (046_seed_b1_phrasal_verbs.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 046_seed_b1_phrasal_verbs.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 36: Email Writing
('30000000-0000-0000-0000-000000001051', 'Dear', 'dɪr', 'phrase', 'prezado (saudação formal)', 'Dear Mr. Smith,', 'Prezado Sr. Smith,', 'B1', array['email']),
('30000000-0000-0000-0000-000000001052', 'Hi', 'haɪ', 'interjection', 'oi (saudação informal)', 'Hi John, how are you?', 'Oi John, como você está?', 'B1', array['email']),
('30000000-0000-0000-0000-000000001053', 'Hello', 'həˈloʊ', 'interjection', 'olá (saudação semi-formal)', 'Hello team,', 'Olá, equipe,', 'B1', array['email']),
('30000000-0000-0000-0000-000000001054', 'To whom it may concern', 'tuː huːm ɪt meɪ kənˈsɜːrn', 'phrase', 'a quem possa interessar', 'To whom it may concern, I am writing about the position.', 'A quem possa interessar, estou escrevendo sobre a vaga.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001055', 'I hope this email finds you well', 'aɪ hoʊp ðɪs ˈiːmeɪl faɪndz juː wel', 'phrase', 'espero que este e-mail o encontre bem', 'I hope this email finds you well.', 'Espero que este e-mail o encontre bem.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001056', 'I am writing to', 'aɪ æm ˈraɪtɪŋ tuː', 'phrase', 'estou escrevendo para', 'I am writing to ask about the schedule.', 'Estou escrevendo para perguntar sobre o cronograma.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001057', 'regarding', 'rɪˈɡɑːrdɪŋ', 'preposition', 'sobre / referente a', 'I am writing regarding your order.', 'Estou escrevendo sobre seu pedido.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001058', 'would like to', 'wʊd laɪk tuː', 'phrase', 'gostaria de', 'I would like to schedule a meeting.', 'Eu gostaria de agendar uma reunião.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001059', 'could you please', 'kʊd juː pliːz', 'phrase', 'você poderia, por favor', 'Could you please send me the file?', 'Você poderia, por favor, me enviar o arquivo?', 'B1', array['email']),
('30000000-0000-0000-0000-000000001060', 'I was wondering if', 'aɪ wʌz ˈwʌndərɪŋ ɪf', 'phrase', 'eu queria saber se', 'I was wondering if you could help me.', 'Eu queria saber se você poderia me ajudar.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001061', 'attach', 'əˈtætʃ', 'verb', 'anexar', 'I will attach the document.', 'Eu vou anexar o documento.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001062', 'attached', 'əˈtætʃt', 'adjective', 'anexado', 'Please find the report attached.', 'Segue o relatório em anexo.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001063', 'Best regards', 'best rɪˈɡɑːrdz', 'phrase', 'atenciosamente (semi-formal)', 'Best regards, Maria', 'Atenciosamente, Maria', 'B1', array['email']),
('30000000-0000-0000-0000-000000001064', 'Sincerely', 'sɪnˈsɪrli', 'adverb', 'atenciosamente (formal)', 'Sincerely, John Smith', 'Atenciosamente, John Smith', 'B1', array['email']),
('30000000-0000-0000-0000-000000001065', 'Looking forward to hearing from you', 'ˈlʊkɪŋ ˈfɔːrwərd tuː ˈhɪrɪŋ frʌm juː', 'phrase', 'aguardo seu retorno', 'Looking forward to hearing from you.', 'Aguardo seu retorno.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001066', 'Thank you in advance', 'θæŋk juː ɪn ədˈvæns', 'phrase', 'agradeço antecipadamente', 'Thank you in advance for your help.', 'Agradeço antecipadamente pela sua ajuda.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001067', 'Kind regards', 'kaɪnd rɪˈɡɑːrdz', 'phrase', 'cordialmente', 'Kind regards, Paulo', 'Cordialmente, Paulo', 'B1', array['email']),
('30000000-0000-0000-0000-000000001068', 'Yours faithfully', 'jʊrz ˈfeɪθfəli', 'phrase', 'atenciosamente (muito formal, britânico)', 'Yours faithfully, John Smith', 'Atenciosamente, John Smith', 'B1', array['email']),
('30000000-0000-0000-0000-000000001069', 'subject', 'ˈsʌbdʒɪkt', 'noun', 'assunto', 'The subject of the email was clear.', 'O assunto do e-mail estava claro.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001070', 'inbox', 'ˈɪnbɑːks', 'noun', 'caixa de entrada', 'Check your inbox for the invitation.', 'Verifique sua caixa de entrada para o convite.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001071', 'reply', 'rɪˈplaɪ', 'verb', 'responder', 'Please reply as soon as possible.', 'Por favor, responda assim que possível.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001072', 'forward', 'ˈfɔːrwərd', 'verb', 'encaminhar', 'Can you forward this email to the team?', 'Você pode encaminhar esse e-mail para a equipe?', 'B1', array['email']),
('30000000-0000-0000-0000-000000001073', 'cc', 'siː siː', 'noun', 'com cópia', 'I put my manager in cc.', 'Eu coloquei meu gerente em cópia.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001074', 'attachment', 'əˈtætʃmənt', 'noun', 'anexo', 'The attachment did not open.', 'O anexo não abriu.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001075', 'as soon as possible', 'æz suːn æz ˈpɑːsəbəl', 'phrase', 'assim que possível', 'Please reply as soon as possible.', 'Por favor, responda assim que possível.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001076', 'please find attached', 'pliːz faɪnd əˈtætʃt', 'phrase', 'segue em anexo', 'Please find attached the report.', 'Segue em anexo o relatório.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001077', 'let me know', 'let miː noʊ', 'phrase', 'me avise / me diga', 'Let me know if you have any questions.', 'Me avise se tiver alguma dúvida.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001078', 'feel free to', 'fiːl friː tuː', 'phrase', 'sinta-se à vontade para', 'Feel free to contact me anytime.', 'Sinta-se à vontade para me contatar a qualquer momento.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001079', 'I apologize for', 'aɪ əˈpɑːlədʒaɪz fɔːr', 'phrase', 'peço desculpas por', 'I apologize for the delay.', 'Peço desculpas pelo atraso.', 'B1', array['email']),
('30000000-0000-0000-0000-000000001080', 'follow up', 'ˈfɑːloʊ ʌp', 'phrasal verb', 'dar continuidade / fazer follow-up', 'I am following up on my last email.', 'Estou dando continuidade ao meu último e-mail.', 'B1', array['email']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000036', 'B1', 'Email Writing', 'Escreva e-mails formais e informais, com saudações, pedidos e despedidas apropriadas.', 6, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000176', '10000000-0000-0000-0000-000000000036', 'Email Writing — Greetings & Openings', 1, 10),
('20000000-0000-0000-0000-000000000177', '10000000-0000-0000-0000-000000000036', 'Email Writing — Purpose & Requests', 2, 10),
('20000000-0000-0000-0000-000000000178', '10000000-0000-0000-0000-000000000036', 'Email Writing — Closings & Sign-offs', 3, 10),
('20000000-0000-0000-0000-000000000179', '10000000-0000-0000-0000-000000000036', 'Email Writing — Inbox Vocabulary', 4, 10),
('20000000-0000-0000-0000-000000000180', '10000000-0000-0000-0000-000000000036', 'Email Writing (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 36.1: Email Writing — Greetings & Openings ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000176', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001051", "show_image": false}'),
('20000000-0000-0000-0000-000000000176', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001053", "show_image": false}'),
('20000000-0000-0000-0000-000000000176', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001056", "show_image": false}'),
('20000000-0000-0000-0000-000000000176', 'multiple_choice', 4, '{"question": "Complete a formal email: ''___ Mr. Smith,''", "audio_text": null, "options": ["Dear", "Hi", "Hello"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000176', 'multiple_choice', 5, '{"question": "Complete: I am writing ___ ask about the schedule.", "audio_text": null, "options": ["to", "for", "about"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000176', 'matching', 6, '{"pairs": [{"left": "Dear", "right": "prezado"}, {"left": "Hi", "right": "oi"}, {"left": "Hello", "right": "olá"}, {"left": "To whom it may concern", "right": "a quem possa interessar"}, {"left": "I hope this email finds you well", "right": "espero que este e-mail o encontre bem"}, {"left": "I am writing to", "right": "estou escrevendo para"}]}'),
('20000000-0000-0000-0000-000000000176', 'fill_blank', 7, '{"sentence": "___ team, I hope you are all doing well.", "options": ["Hello", "Dear", "To whom"], "correct": "Hello", "translation": "Olá, equipe, espero que estejam todos bem."}'),
('20000000-0000-0000-0000-000000000176', 'fill_blank', 8, '{"sentence": "I am writing ___ ask about the schedule.", "options": ["to", "for", "of"], "correct": "to", "translation": "Estou escrevendo para perguntar sobre o cronograma."}'),
('20000000-0000-0000-0000-000000000176', 'word_order', 9, '{"words": ["I", "am", "writing", "to", "ask", "about", "the", "schedule"], "correct_sentence": "I am writing to ask about the schedule", "translation": "Estou escrevendo para perguntar sobre o cronograma"}'),
('20000000-0000-0000-0000-000000000176', 'word_order', 10, '{"words": ["I", "hope", "this", "email", "finds", "you", "well"], "correct_sentence": "I hope this email finds you well", "translation": "Espero que este e-mail o encontre bem"}'),
('20000000-0000-0000-0000-000000000176', 'reading', 11, '{"passage": "When writing a formal email, we usually start with ''Dear'' followed by the person''s name, like ''Dear Mr. Smith.'' If we do not know the name, we can use ''To whom it may concern.'' For informal emails, ''Hi'' or ''Hello'' work well. Many emails also start with ''I hope this email finds you well'' before explaining the reason for writing.", "translation": "Ao escrever um e-mail formal, geralmente começamos com ''Dear'' seguido do nome da pessoa, como ''Dear Mr. Smith.'' Se não sabemos o nome, podemos usar ''To whom it may concern.'' Para e-mails informais, ''Hi'' ou ''Hello'' funcionam bem. Muitos e-mails também começam com ''I hope this email finds you well'' antes de explicar o motivo da mensagem.", "question": "What do we use when we do not know the person''s name?", "options": ["Hi", "To whom it may concern", "Hello"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000176', 'listening', 12, '{"audio_text": "Dear Mr. Smith, I hope this email finds you well. I am writing to ask about the schedule.", "question": "Why is the person writing?", "options": ["To say hello", "To ask about the schedule", "To apologize"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000176', 'dictation', 13, '{"audio_text": "Dear Mr. Smith, I am writing to ask about the schedule.", "expected": "Dear Mr. Smith, I am writing to ask about the schedule."}'),
('20000000-0000-0000-0000-000000000176', 'typing', 14, '{"prompt_pt": "Traduza: ''Estou escrevendo para perguntar sobre o cronograma.''", "expected": "I am writing to ask about the schedule.", "ai_review": true}');

-- ---------- Lição 36.2: Email Writing — Purpose & Requests ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000177', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001057", "show_image": false}'),
('20000000-0000-0000-0000-000000000177', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001058", "show_image": false}'),
('20000000-0000-0000-0000-000000000177', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001060", "show_image": false}'),
('20000000-0000-0000-0000-000000000177', 'multiple_choice', 4, '{"question": "Complete: I am writing ___ your order.", "audio_text": null, "options": ["regarding", "attach", "forward"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000177', 'multiple_choice', 5, '{"question": "Complete: I ___ schedule a meeting for next week.", "audio_text": null, "options": ["would like to", "attached", "cc"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000177', 'matching', 6, '{"pairs": [{"left": "regarding", "right": "sobre"}, {"left": "would like to", "right": "gostaria de"}, {"left": "could you please", "right": "você poderia por favor"}, {"left": "I was wondering if", "right": "eu queria saber se"}, {"left": "attach", "right": "anexar"}, {"left": "attached", "right": "anexado"}]}'),
('20000000-0000-0000-0000-000000000177', 'fill_blank', 7, '{"sentence": "___ send me the file?", "options": ["Could you please", "I would like to", "I am writing"], "correct": "Could you please", "translation": "Você poderia, por favor, me enviar o arquivo?"}'),
('20000000-0000-0000-0000-000000000177', 'fill_blank', 8, '{"sentence": "I will ___ the document to this email.", "options": ["attach", "attached", "attachment"], "correct": "attach", "translation": "Eu vou anexar o documento a este e-mail."}'),
('20000000-0000-0000-0000-000000000177', 'word_order', 9, '{"words": ["I", "would", "like", "to", "schedule", "a", "meeting"], "correct_sentence": "I would like to schedule a meeting", "translation": "Eu gostaria de agendar uma reunião"}'),
('20000000-0000-0000-0000-000000000177', 'word_order', 10, '{"words": ["I", "was", "wondering", "if", "you", "could", "help", "me"], "correct_sentence": "I was wondering if you could help me", "translation": "Eu queria saber se você poderia me ajudar"}'),
('20000000-0000-0000-0000-000000000177', 'reading', 11, '{"passage": "Polite requests are important in professional emails. Instead of saying ''Send me the file,'' we say ''Could you please send me the file?'' We can also use ''I was wondering if'' to sound even more polite, like ''I was wondering if you could send me the report.'' When we have a document to send, we usually attach it and mention it in the text.", "translation": "Pedidos educados são importantes em e-mails profissionais. Em vez de dizer ''Me envie o arquivo,'' dizemos ''Você poderia, por favor, me enviar o arquivo?'' Também podemos usar ''I was wondering if'' para soar ainda mais educado, como ''Eu queria saber se você poderia me enviar o relatório.'' Quando temos um documento para enviar, geralmente anexamos e mencionamos no texto.", "question": "Which phrase sounds more polite?", "options": ["Send me the file", "Could you please send me the file?", "Give me the file"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000177', 'listening', 12, '{"audio_text": "I am writing regarding your order. I was wondering if you could confirm the delivery date.", "question": "What does the speaker want confirmed?", "options": ["The price", "The delivery date", "The address"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000177', 'dictation', 13, '{"audio_text": "I would like to schedule a meeting, and I will attach the document.", "expected": "I would like to schedule a meeting, and I will attach the document."}'),
('20000000-0000-0000-0000-000000000177', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu gostaria de agendar uma reunião.''", "expected": "I would like to schedule a meeting.", "ai_review": true}');

-- ---------- Lição 36.3: Email Writing — Closings & Sign-offs ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000178', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001063", "show_image": false}'),
('20000000-0000-0000-0000-000000000178', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001065", "show_image": false}'),
('20000000-0000-0000-0000-000000000178', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001067", "show_image": false}'),
('20000000-0000-0000-0000-000000000178', 'multiple_choice', 4, '{"question": "Complete a semi-formal closing: ''___, Maria''", "audio_text": null, "options": ["Best regards", "Hi", "Dear"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000178', 'multiple_choice', 5, '{"question": "Complete: I ___ hearing from you soon.", "audio_text": null, "options": ["am looking forward to", "would like to", "am writing to"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000178', 'matching', 6, '{"pairs": [{"left": "Best regards", "right": "atenciosamente (semi-formal)"}, {"left": "Sincerely", "right": "atenciosamente (formal)"}, {"left": "Looking forward to hearing from you", "right": "aguardo seu retorno"}, {"left": "Thank you in advance", "right": "agradeço antecipadamente"}, {"left": "Kind regards", "right": "cordialmente"}, {"left": "Yours faithfully", "right": "atenciosamente (muito formal)"}]}'),
('20000000-0000-0000-0000-000000000178', 'fill_blank', 7, '{"sentence": "___ for your help.", "options": ["Thank you in advance", "Dear", "Attached"], "correct": "Thank you in advance", "translation": "Agradeço antecipadamente pela sua ajuda."}'),
('20000000-0000-0000-0000-000000000178', 'fill_blank', 8, '{"sentence": "___, John Smith", "options": ["Yours faithfully", "Hi", "Best"], "correct": "Yours faithfully", "translation": "Atenciosamente, John Smith (muito formal)."}'),
('20000000-0000-0000-0000-000000000178', 'word_order', 9, '{"words": ["I", "am", "looking", "forward", "to", "hearing", "from", "you"], "correct_sentence": "I am looking forward to hearing from you", "translation": "Aguardo seu retorno"}'),
('20000000-0000-0000-0000-000000000178', 'word_order', 10, '{"words": ["Thank", "you", "in", "advance", "for", "your", "help"], "correct_sentence": "Thank you in advance for your help", "translation": "Agradeço antecipadamente pela sua ajuda"}'),
('20000000-0000-0000-0000-000000000178', 'reading', 11, '{"passage": "The way we close an email depends on how formal it is. ''Best regards'' and ''Kind regards'' work for most business emails. ''Sincerely'' is common in the United States, while ''Yours faithfully'' is used in the UK when you do not know the person''s name. ''Looking forward to hearing from you'' is a friendly way to end before the sign-off.", "translation": "A forma como fechamos um e-mail depende do quão formal ele é. ''Best regards'' e ''Kind regards'' funcionam para a maioria dos e-mails profissionais. ''Sincerely'' é comum nos Estados Unidos, enquanto ''Yours faithfully'' é usado no Reino Unido quando você não sabe o nome da pessoa. ''Looking forward to hearing from you'' é uma forma amigável de terminar antes da assinatura.", "question": "When is ''Yours faithfully'' typically used?", "options": ["When you know the person''s name", "When you do not know the person''s name", "Only in informal emails"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000178', 'listening', 12, '{"audio_text": "Thank you in advance for your help. Looking forward to hearing from you. Best regards, Ana.", "question": "How does Ana end her email?", "options": ["Sincerely", "Best regards", "Yours faithfully"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000178', 'dictation', 13, '{"audio_text": "Thank you in advance for your help. Best regards, Ana.", "expected": "Thank you in advance for your help. Best regards, Ana."}'),
('20000000-0000-0000-0000-000000000178', 'typing', 14, '{"prompt_pt": "Traduza: ''Aguardo seu retorno.''", "expected": "I am looking forward to hearing from you.", "ai_review": true}');

-- ---------- Lição 36.4: Email Writing — Inbox Vocabulary ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000179', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001069", "show_image": false}'),
('20000000-0000-0000-0000-000000000179', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001071", "show_image": false}'),
('20000000-0000-0000-0000-000000000179', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001074", "show_image": false}'),
('20000000-0000-0000-0000-000000000179', 'multiple_choice', 4, '{"question": "Complete: The ___ of the email was clear.", "audio_text": null, "options": ["subject", "inbox", "cc"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000179', 'multiple_choice', 5, '{"question": "Complete: Can you ___ this email to the team?", "audio_text": null, "options": ["forward", "reply", "attach"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000179', 'matching', 6, '{"pairs": [{"left": "subject", "right": "assunto"}, {"left": "inbox", "right": "caixa de entrada"}, {"left": "reply", "right": "responder"}, {"left": "forward", "right": "encaminhar"}, {"left": "cc", "right": "com cópia"}, {"left": "attachment", "right": "anexo"}]}'),
('20000000-0000-0000-0000-000000000179', 'fill_blank', 7, '{"sentence": "Check your ___ for the invitation.", "options": ["inbox", "subject", "cc"], "correct": "inbox", "translation": "Verifique sua caixa de entrada para o convite."}'),
('20000000-0000-0000-0000-000000000179', 'fill_blank', 8, '{"sentence": "The ___ did not open.", "options": ["attachment", "subject", "inbox"], "correct": "attachment", "translation": "O anexo não abriu."}'),
('20000000-0000-0000-0000-000000000179', 'word_order', 9, '{"words": ["Please", "reply", "as", "soon", "as", "possible"], "correct_sentence": "Please reply as soon as possible", "translation": "Por favor, responda assim que possível"}'),
('20000000-0000-0000-0000-000000000179', 'word_order', 10, '{"words": ["I", "put", "my", "manager", "in", "cc"], "correct_sentence": "I put my manager in cc", "translation": "Eu coloquei meu gerente em cópia"}'),
('20000000-0000-0000-0000-000000000179', 'reading', 11, '{"passage": "A typical email has a subject line that summarizes the content. Messages arrive in your inbox, and you can reply directly to the sender or forward the message to someone else. If you want another person to see the email without being the main recipient, you put them in cc. Sometimes an attachment does not open correctly, and you need to ask the sender to send it again.", "translation": "Um e-mail típico tem uma linha de assunto que resume o conteúdo. As mensagens chegam na sua caixa de entrada, e você pode responder diretamente ao remetente ou encaminhar a mensagem para outra pessoa. Se quiser que outra pessoa veja o e-mail sem ser o destinatário principal, você a coloca em cópia. Às vezes um anexo não abre corretamente, e você precisa pedir ao remetente para enviar de novo.", "question": "What summarizes the content of an email?", "options": ["The inbox", "The subject line", "The attachment"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000179', 'listening', 12, '{"audio_text": "I checked my inbox and found your email. I will reply and forward it to the team, with my manager in cc.", "question": "What will the speaker do besides replying?", "options": ["Delete the email", "Forward it to the team", "Open the attachment"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000179', 'dictation', 13, '{"audio_text": "Check your inbox, and please reply as soon as possible.", "expected": "Check your inbox, and please reply as soon as possible."}'),
('20000000-0000-0000-0000-000000000179', 'typing', 14, '{"prompt_pt": "Traduza: ''O anexo não abriu.''", "expected": "The attachment did not open.", "ai_review": true}');

-- ---------- Lição 36.5: Email Writing (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000180', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001075", "show_image": false}'),
('20000000-0000-0000-0000-000000000180', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001077", "show_image": false}'),
('20000000-0000-0000-0000-000000000180', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001080", "show_image": false}'),
('20000000-0000-0000-0000-000000000180', 'multiple_choice', 4, '{"question": "Complete: Please reply ___.", "audio_text": null, "options": ["as soon as possible", "attached", "cc"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000180', 'multiple_choice', 5, '{"question": "Complete: ___ if you have any questions.", "audio_text": null, "options": ["Let me know", "Please find attached", "I apologize for"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000180', 'matching', 6, '{"pairs": [{"left": "as soon as possible", "right": "assim que possível"}, {"left": "please find attached", "right": "segue em anexo"}, {"left": "let me know", "right": "me avise"}, {"left": "feel free to", "right": "sinta-se à vontade para"}, {"left": "I apologize for", "right": "peço desculpas por"}, {"left": "follow up", "right": "dar continuidade"}]}'),
('20000000-0000-0000-0000-000000000180', 'fill_blank', 7, '{"sentence": "___ contact me anytime.", "options": ["Feel free to", "Attached is", "Regarding"], "correct": "Feel free to", "translation": "Sinta-se à vontade para me contatar a qualquer momento."}'),
('20000000-0000-0000-0000-000000000180', 'fill_blank', 8, '{"sentence": "I ___ the delay.", "options": ["apologize for", "attach", "forward"], "correct": "apologize for", "translation": "Peço desculpas pelo atraso."}'),
('20000000-0000-0000-0000-000000000180', 'word_order', 9, '{"words": ["I", "am", "following", "up", "on", "my", "last", "email"], "correct_sentence": "I am following up on my last email", "translation": "Estou dando continuidade ao meu último e-mail"}'),
('20000000-0000-0000-0000-000000000180', 'word_order', 10, '{"words": ["Please", "find", "attached", "the", "report"], "correct_sentence": "Please find attached the report", "translation": "Segue em anexo o relatório"}'),
('20000000-0000-0000-0000-000000000180', 'reading', 11, '{"passage": "Dear team, I hope this email finds you well. Please find attached the report we discussed. I apologize for the delay in sending it. Let me know if you have any questions, and feel free to contact me anytime. I am following up on my last email to confirm everything is clear. Best regards, Ana.", "translation": "Prezada equipe, espero que este e-mail os encontre bem. Segue em anexo o relatório que discutimos. Peço desculpas pelo atraso em enviá-lo. Me avisem se tiverem alguma dúvida, e sintam-se à vontade para me contatar a qualquer momento. Estou dando continuidade ao meu último e-mail para confirmar que está tudo claro. Atenciosamente, Ana.", "question": "Why is Ana following up?", "options": ["To apologize for a mistake", "To confirm everything is clear", "To ask for a new report"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000180', 'listening', 12, '{"audio_text": "Please find attached the file. Let me know if you have any questions, and I apologize for the delay.", "question": "What is attached to the email?", "options": ["A photo", "The file", "An invitation"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000180', 'dictation', 13, '{"audio_text": "Please find attached the report, and let me know if you have any questions.", "expected": "Please find attached the report, and let me know if you have any questions."}'),
('20000000-0000-0000-0000-000000000180', 'typing', 14, '{"prompt_pt": "Traduza: ''Me avise se tiver alguma dúvida.''", "expected": "Let me know if you have any questions.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000180', 'typing', 15, '{"prompt_pt": "Traduza: ''Peço desculpas pelo atraso.''", "expected": "I apologize for the delay.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 6 (EMAIL WRITING)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

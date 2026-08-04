-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 11: Business English (Básico)
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 10 (051_seed_b1_idioms.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 051_seed_b1_idioms.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 41: Business English
('30000000-0000-0000-0000-000000001201', 'agenda', 'əˈdʒendə', 'noun', 'pauta', 'Let''s go through the agenda.', 'Vamos passar pela pauta.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001202', 'attend', 'əˈtend', 'verb', 'participar de / comparecer', 'Will you attend the meeting tomorrow?', 'Você vai participar da reunião amanhã?', 'B1', array['business']),
('30000000-0000-0000-0000-000000001203', 'participant', 'pɑːrˈtɪsəpənt', 'noun', 'participante', 'There were ten participants in the workshop.', 'Havia dez participantes na oficina.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001204', 'minutes', 'ˈmɪnəts', 'noun', 'ata (de reunião)', 'Can you take the minutes of the meeting?', 'Você pode fazer a ata da reunião?', 'B1', array['business']),
('30000000-0000-0000-0000-000000001205', 'on the agenda', 'ɑːn ði əˈdʒendə', 'phrase', 'na pauta', 'Budget is the first item on the agenda.', 'Orçamento é o primeiro item na pauta.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001206', 'chair the meeting', 'tʃer ðə ˈmiːtɪŋ', 'phrase', 'presidir a reunião', 'Who will chair the meeting today?', 'Quem vai presidir a reunião hoje?', 'B1', array['business']),
('30000000-0000-0000-0000-000000001207', 'presentation', 'ˌprezənˈteɪʃən', 'noun', 'apresentação', 'I have to give a presentation next week.', 'Eu tenho que fazer uma apresentação semana que vem.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001208', 'slide', 'slaɪd', 'noun', 'slide', 'Can you go back to the previous slide?', 'Você pode voltar para o slide anterior?', 'B1', array['business']),
('30000000-0000-0000-0000-000000001209', 'audience', 'ˈɔːdiəns', 'noun', 'público / plateia', 'The audience asked many questions.', 'A plateia fez muitas perguntas.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001210', 'point out', 'pɔɪnt aʊt', 'phrasal verb', 'apontar / destacar', 'I want to point out an important detail.', 'Eu quero destacar um detalhe importante.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001211', 'in summary', 'ɪn ˈsʌməri', 'phrase', 'em resumo', 'In summary, sales increased this quarter.', 'Em resumo, as vendas aumentaram nesse trimestre.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001212', 'handout', 'ˈhændaʊt', 'noun', 'material impresso', 'I prepared a handout for everyone.', 'Eu preparei um material impresso para todos.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001213', 'negotiate', 'nɪˈɡoʊʃieɪt', 'verb', 'negociar', 'We need to negotiate a better price.', 'Precisamos negociar um preço melhor.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001214', 'deal', 'diːl', 'noun', 'acordo / negócio', 'We closed the deal yesterday.', 'Nós fechamos o acordo ontem.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001215', 'agreement', 'əˈɡriːmənt', 'noun', 'acordo', 'Both sides signed the agreement.', 'Os dois lados assinaram o acordo.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001216', 'compromise', 'ˈkɑːmprəmaɪz', 'noun', 'meio-termo / acordo mútuo', 'We reached a compromise.', 'Chegamos a um meio-termo.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001217', 'terms', 'tɜːrmz', 'noun', 'termos (de um contrato)', 'Please read the terms carefully.', 'Por favor, leia os termos com cuidado.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001218', 'budget', 'ˈbʌdʒɪt', 'noun', 'orçamento', 'The project is over budget.', 'O projeto está acima do orçamento.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001219', 'deadline', 'ˈdedlaɪn', 'noun', 'prazo final', 'The deadline is next Friday.', 'O prazo final é a próxima sexta-feira.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001220', 'client', 'ˈklaɪənt', 'noun', 'cliente', 'The client approved the proposal.', 'O cliente aprovou a proposta.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001221', 'proposal', 'prəˈpoʊzəl', 'noun', 'proposta', 'We sent the proposal last week.', 'Nós enviamos a proposta semana passada.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001222', 'contract', 'ˈkɑːntrækt', 'noun', 'contrato', 'They signed a two-year contract.', 'Eles assinaram um contrato de dois anos.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001223', 'invoice', 'ˈɪnvɔɪs', 'noun', 'fatura / nota fiscal', 'Please send the invoice by Friday.', 'Por favor, envie a fatura até sexta.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001224', 'target', 'ˈtɑːrɡɪt', 'noun', 'meta', 'We reached our sales target this month.', 'Alcançamos nossa meta de vendas esse mês.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001225', 'strategy', 'ˈstrætədʒi', 'noun', 'estratégia', 'Our strategy needs to change.', 'Nossa estratégia precisa mudar.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001226', 'stakeholder', 'ˈsteɪkhoʊldər', 'noun', 'parte interessada', 'All stakeholders must approve the plan.', 'Todas as partes interessadas devem aprovar o plano.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001227', 'report to', 'rɪˈpɔːrt tuː', 'phrase', 'se reportar a', 'I report to the operations manager.', 'Eu me reporto ao gerente de operações.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001228', 'department', 'dɪˈpɑːrtmənt', 'noun', 'departamento', 'She works in the finance department.', 'Ela trabalha no departamento financeiro.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001229', 'approve', 'əˈpruːv', 'verb', 'aprovar', 'The manager needs to approve this expense.', 'O gerente precisa aprovar essa despesa.', 'B1', array['business']),
('30000000-0000-0000-0000-000000001230', 'update', 'ˈʌpdeɪt', 'verb', 'atualizar', 'Can you update me on the project?', 'Você pode me atualizar sobre o projeto?', 'B1', array['business']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000041', 'B1', 'Business English', 'Vocabulário básico de reuniões, apresentações, negociações e contratos no ambiente de trabalho.', 11, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000201', '10000000-0000-0000-0000-000000000041', 'Business English — Meetings', 1, 10),
('20000000-0000-0000-0000-000000000202', '10000000-0000-0000-0000-000000000041', 'Business English — Presentations', 2, 10),
('20000000-0000-0000-0000-000000000203', '10000000-0000-0000-0000-000000000041', 'Business English — Negotiations & Agreements', 3, 10),
('20000000-0000-0000-0000-000000000204', '10000000-0000-0000-0000-000000000041', 'Business English — Contracts & Clients', 4, 10),
('20000000-0000-0000-0000-000000000205', '10000000-0000-0000-0000-000000000041', 'Business English (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 41.1: Business English — Meetings ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000201', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001201", "show_image": false}'),
('20000000-0000-0000-0000-000000000201', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001202", "show_image": false}'),
('20000000-0000-0000-0000-000000000201', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001204", "show_image": false}'),
('20000000-0000-0000-0000-000000000201', 'multiple_choice', 4, '{"question": "Complete: Let''s go through the ___.", "audio_text": null, "options": ["agenda", "minutes", "audience"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000201', 'multiple_choice', 5, '{"question": "Complete: Will you ___ the meeting tomorrow?", "audio_text": null, "options": ["attend", "chair", "negotiate"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000201', 'matching', 6, '{"pairs": [{"left": "agenda", "right": "pauta"}, {"left": "attend", "right": "participar de"}, {"left": "participant", "right": "participante"}, {"left": "minutes", "right": "ata"}, {"left": "on the agenda", "right": "na pauta"}, {"left": "chair the meeting", "right": "presidir a reunião"}]}'),
('20000000-0000-0000-0000-000000000201', 'fill_blank', 7, '{"sentence": "There were ten ___ in the workshop.", "options": ["participants", "minutes", "agendas"], "correct": "participants", "translation": "Havia dez participantes na oficina."}'),
('20000000-0000-0000-0000-000000000201', 'fill_blank', 8, '{"sentence": "Budget is the first item ___.", "options": ["on the agenda", "in the minutes", "on the deal"], "correct": "on the agenda", "translation": "Orçamento é o primeiro item na pauta."}'),
('20000000-0000-0000-0000-000000000201', 'word_order', 9, '{"words": ["Can", "you", "take", "the", "minutes", "of", "the", "meeting"], "correct_sentence": "Can you take the minutes of the meeting", "translation": "Você pode fazer a ata da reunião?"}'),
('20000000-0000-0000-0000-000000000201', 'word_order', 10, '{"words": ["Who", "will", "chair", "the", "meeting", "today"], "correct_sentence": "Who will chair the meeting today", "translation": "Quem vai presidir a reunião hoje?"}'),
('20000000-0000-0000-0000-000000000201', 'reading', 11, '{"passage": "Every good meeting starts with an agenda. Before the meeting, participants receive the list of topics on the agenda. Someone needs to chair the meeting and keep everyone on track, while another person takes the minutes to record what was discussed and decided.", "translation": "Toda boa reunião começa com uma pauta. Antes da reunião, os participantes recebem a lista de tópicos na pauta. Alguém precisa presidir a reunião e manter todos no foco, enquanto outra pessoa faz a ata para registrar o que foi discutido e decidido.", "question": "What does the person taking the minutes do?", "options": ["Chairs the meeting", "Records what was discussed", "Attends late"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000201', 'listening', 12, '{"audio_text": "Ten participants will attend the meeting. Can you chair it and make sure someone takes the minutes?", "question": "How many participants will attend?", "options": ["Five", "Ten", "Twenty"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000201', 'dictation', 13, '{"audio_text": "Will you attend the meeting tomorrow, and can you take the minutes?", "expected": "Will you attend the meeting tomorrow, and can you take the minutes?"}'),
('20000000-0000-0000-0000-000000000201', 'typing', 14, '{"prompt_pt": "Traduza: ''Você vai participar da reunião amanhã?''", "expected": "Will you attend the meeting tomorrow?", "ai_review": true}');

-- ---------- Lição 41.2: Business English — Presentations ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000202', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001207", "show_image": false}'),
('20000000-0000-0000-0000-000000000202', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001208", "show_image": false}'),
('20000000-0000-0000-0000-000000000202', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001209", "show_image": false}'),
('20000000-0000-0000-0000-000000000202', 'multiple_choice', 4, '{"question": "Complete: I have to give a ___ next week.", "audio_text": null, "options": ["presentation", "handout", "deal"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000202', 'multiple_choice', 5, '{"question": "Complete: Can you go back to the previous ___?", "audio_text": null, "options": ["slide", "audience", "agenda"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000202', 'matching', 6, '{"pairs": [{"left": "presentation", "right": "apresentação"}, {"left": "slide", "right": "slide"}, {"left": "audience", "right": "plateia"}, {"left": "point out", "right": "destacar"}, {"left": "in summary", "right": "em resumo"}, {"left": "handout", "right": "material impresso"}]}'),
('20000000-0000-0000-0000-000000000202', 'fill_blank', 7, '{"sentence": "The ___ asked many questions.", "options": ["audience", "handout", "slide"], "correct": "audience", "translation": "A plateia fez muitas perguntas."}'),
('20000000-0000-0000-0000-000000000202', 'fill_blank', 8, '{"sentence": "I want to ___ an important detail.", "options": ["point out", "chair", "attend"], "correct": "point out", "translation": "Eu quero destacar um detalhe importante."}'),
('20000000-0000-0000-0000-000000000202', 'word_order', 9, '{"words": ["In", "summary", "sales", "increased", "this", "quarter"], "correct_sentence": "In summary sales increased this quarter", "translation": "Em resumo, as vendas aumentaram nesse trimestre"}'),
('20000000-0000-0000-0000-000000000202', 'word_order', 10, '{"words": ["I", "prepared", "a", "handout", "for", "everyone"], "correct_sentence": "I prepared a handout for everyone", "translation": "Eu preparei um material impresso para todos"}'),
('20000000-0000-0000-0000-000000000202', 'reading', 11, '{"passage": "Giving a good presentation takes practice. Prepare your slides carefully, and think about your audience before you start. During the presentation, point out the most important information, and give everyone a handout with the details. At the end, summarize everything in summary so the message is clear.", "translation": "Fazer uma boa apresentação exige prática. Prepare seus slides com cuidado, e pense no público antes de começar. Durante a apresentação, destaque as informações mais importantes, e entregue a todos um material impresso com os detalhes. No final, resuma tudo em resumo para que a mensagem fique clara.", "question": "What should you give the audience at the end?", "options": ["More slides", "A handout", "A deadline"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000202', 'listening', 12, '{"audio_text": "Can you go back to the previous slide? I want to point out something important to the audience.", "question": "What does the speaker want to do?", "options": ["End the presentation", "Point out something important", "Give a handout"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000202', 'dictation', 13, '{"audio_text": "I have to give a presentation, and the audience asked many questions.", "expected": "I have to give a presentation, and the audience asked many questions."}'),
('20000000-0000-0000-0000-000000000202', 'typing', 14, '{"prompt_pt": "Traduza: ''A plateia fez muitas perguntas.''", "expected": "The audience asked many questions.", "ai_review": true}');

-- ---------- Lição 41.3: Business English — Negotiations & Agreements ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000203', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001213", "show_image": false}'),
('20000000-0000-0000-0000-000000000203', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001215", "show_image": false}'),
('20000000-0000-0000-0000-000000000203', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001218", "show_image": false}'),
('20000000-0000-0000-0000-000000000203', 'multiple_choice', 4, '{"question": "Complete: We need to ___ a better price.", "audio_text": null, "options": ["negotiate", "approve", "attend"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000203', 'multiple_choice', 5, '{"question": "Complete: Both sides signed the ___.", "audio_text": null, "options": ["agreement", "budget", "target"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000203', 'matching', 6, '{"pairs": [{"left": "negotiate", "right": "negociar"}, {"left": "deal", "right": "acordo"}, {"left": "agreement", "right": "acordo"}, {"left": "compromise", "right": "meio-termo"}, {"left": "terms", "right": "termos"}, {"left": "budget", "right": "orçamento"}]}'),
('20000000-0000-0000-0000-000000000203', 'fill_blank', 7, '{"sentence": "We reached a ___.", "options": ["compromise", "budget", "target"], "correct": "compromise", "translation": "Chegamos a um meio-termo."}'),
('20000000-0000-0000-0000-000000000203', 'fill_blank', 8, '{"sentence": "Please read the ___ carefully.", "options": ["terms", "minutes", "slides"], "correct": "terms", "translation": "Por favor, leia os termos com cuidado."}'),
('20000000-0000-0000-0000-000000000203', 'word_order', 9, '{"words": ["We", "closed", "the", "deal", "yesterday"], "correct_sentence": "We closed the deal yesterday", "translation": "Nós fechamos o acordo ontem"}'),
('20000000-0000-0000-0000-000000000203', 'word_order', 10, '{"words": ["The", "project", "is", "over", "budget"], "correct_sentence": "The project is over budget", "translation": "O projeto está acima do orçamento"}'),
('20000000-0000-0000-0000-000000000203', 'reading', 11, '{"passage": "Negotiating well is an important business skill. Both sides need to negotiate until they reach an agreement that works for everyone, sometimes through a compromise. Before signing, always read the terms carefully, and make sure the deal fits within your budget.", "translation": "Negociar bem é uma habilidade importante nos negócios. Os dois lados precisam negociar até chegar a um acordo que funcione para todos, às vezes através de um meio-termo. Antes de assinar, sempre leia os termos com cuidado, e certifique-se de que o acordo cabe no orçamento.", "question": "What should you check before signing an agreement?", "options": ["The audience", "The terms", "The agenda"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000203', 'listening', 12, '{"audio_text": "We negotiated for hours, but we finally reached a compromise. The deal fits within our budget.", "question": "What did they finally reach?", "options": ["A deadline", "A compromise", "A presentation"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000203', 'dictation', 13, '{"audio_text": "We need to negotiate a better price, and the project is over budget.", "expected": "We need to negotiate a better price, and the project is over budget."}'),
('20000000-0000-0000-0000-000000000203', 'typing', 14, '{"prompt_pt": "Traduza: ''Precisamos negociar um preço melhor.''", "expected": "We need to negotiate a better price.", "ai_review": true}');

-- ---------- Lição 41.4: Business English — Contracts & Clients ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000204', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001219", "show_image": false}'),
('20000000-0000-0000-0000-000000000204', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001220", "show_image": false}'),
('20000000-0000-0000-0000-000000000204', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001222", "show_image": false}'),
('20000000-0000-0000-0000-000000000204', 'multiple_choice', 4, '{"question": "Complete: The ___ is next Friday.", "audio_text": null, "options": ["deadline", "invoice", "target"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000204', 'multiple_choice', 5, '{"question": "Complete: The ___ approved the proposal.", "audio_text": null, "options": ["client", "contract", "invoice"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000204', 'matching', 6, '{"pairs": [{"left": "deadline", "right": "prazo final"}, {"left": "client", "right": "cliente"}, {"left": "proposal", "right": "proposta"}, {"left": "contract", "right": "contrato"}, {"left": "invoice", "right": "fatura"}, {"left": "target", "right": "meta"}]}'),
('20000000-0000-0000-0000-000000000204', 'fill_blank', 7, '{"sentence": "We sent the ___ last week.", "options": ["proposal", "invoice", "deadline"], "correct": "proposal", "translation": "Nós enviamos a proposta semana passada."}'),
('20000000-0000-0000-0000-000000000204', 'fill_blank', 8, '{"sentence": "Please send the ___ by Friday.", "options": ["invoice", "contract", "target"], "correct": "invoice", "translation": "Por favor, envie a fatura até sexta."}'),
('20000000-0000-0000-0000-000000000204', 'word_order', 9, '{"words": ["They", "signed", "a", "two", "year", "contract"], "correct_sentence": "They signed a two year contract", "translation": "Eles assinaram um contrato de dois anos"}'),
('20000000-0000-0000-0000-000000000204', 'word_order', 10, '{"words": ["We", "reached", "our", "sales", "target", "this", "month"], "correct_sentence": "We reached our sales target this month", "translation": "Alcançamos nossa meta de vendas esse mês"}'),
('20000000-0000-0000-0000-000000000204', 'reading', 11, '{"passage": "Working with clients involves several steps. First, you send a proposal, and if the client approves it, you sign a contract. It is important to meet every deadline and send the invoice on time. Meeting these deadlines helps the company reach its target every month.", "translation": "Trabalhar com clientes envolve várias etapas. Primeiro, você envia uma proposta, e se o cliente aprovar, você assina um contrato. É importante cumprir todos os prazos e enviar a fatura a tempo. Cumprir esses prazos ajuda a empresa a alcançar a meta todo mês.", "question": "What comes after the client approves the proposal?", "options": ["Sending the invoice", "Signing a contract", "Setting a target"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000204', 'listening', 12, '{"audio_text": "The client approved the proposal, so we signed the contract. Now we just need to meet the deadline.", "question": "What happened after the client approved the proposal?", "options": ["They missed the deadline", "They signed the contract", "They sent an invoice"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000204', 'dictation', 13, '{"audio_text": "The client approved the proposal, and the deadline is next Friday.", "expected": "The client approved the proposal, and the deadline is next Friday."}'),
('20000000-0000-0000-0000-000000000204', 'typing', 14, '{"prompt_pt": "Traduza: ''O prazo final é a próxima sexta-feira.''", "expected": "The deadline is next Friday.", "ai_review": true}');

-- ---------- Lição 41.5: Business English (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000205', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001225", "show_image": false}'),
('20000000-0000-0000-0000-000000000205', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001226", "show_image": false}'),
('20000000-0000-0000-0000-000000000205', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001229", "show_image": false}'),
('20000000-0000-0000-0000-000000000205', 'multiple_choice', 4, '{"question": "Complete: Our ___ needs to change.", "audio_text": null, "options": ["strategy", "invoice", "handout"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000205', 'multiple_choice', 5, '{"question": "Complete: All ___ must approve the plan.", "audio_text": null, "options": ["stakeholders", "clients", "audiences"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000205', 'matching', 6, '{"pairs": [{"left": "strategy", "right": "estratégia"}, {"left": "stakeholder", "right": "parte interessada"}, {"left": "report to", "right": "se reportar a"}, {"left": "department", "right": "departamento"}, {"left": "approve", "right": "aprovar"}, {"left": "update", "right": "atualizar"}]}'),
('20000000-0000-0000-0000-000000000205', 'fill_blank', 7, '{"sentence": "I ___ the operations manager.", "options": ["report to", "approve", "update"], "correct": "report to", "translation": "Eu me reporto ao gerente de operações."}'),
('20000000-0000-0000-0000-000000000205', 'fill_blank', 8, '{"sentence": "She works in the finance ___.", "options": ["department", "strategy", "target"], "correct": "department", "translation": "Ela trabalha no departamento financeiro."}'),
('20000000-0000-0000-0000-000000000205', 'word_order', 9, '{"words": ["The", "manager", "needs", "to", "approve", "this", "expense"], "correct_sentence": "The manager needs to approve this expense", "translation": "O gerente precisa aprovar essa despesa"}'),
('20000000-0000-0000-0000-000000000205', 'word_order', 10, '{"words": ["Can", "you", "update", "me", "on", "the", "project"], "correct_sentence": "Can you update me on the project", "translation": "Você pode me atualizar sobre o projeto?"}'),
('20000000-0000-0000-0000-000000000205', 'reading', 11, '{"passage": "Every department has its own strategy, but every stakeholder needs to approve important decisions. I report to the operations manager, and I always update her about our progress. Good communication between departments helps the whole company achieve its goals.", "translation": "Todo departamento tem sua própria estratégia, mas toda parte interessada precisa aprovar decisões importantes. Eu me reporto ao gerente de operações, e sempre a atualizo sobre nosso progresso. Uma boa comunicação entre departamentos ajuda a empresa toda a alcançar seus objetivos.", "question": "Who does the speaker report to?", "options": ["The finance department", "The operations manager", "All stakeholders"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000205', 'listening', 12, '{"audio_text": "I report to the finance department, and I need to update the team every week. All stakeholders must approve the new strategy.", "question": "How often does the speaker update the team?", "options": ["Every day", "Every week", "Every month"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000205', 'dictation', 13, '{"audio_text": "All stakeholders must approve the plan, and I report to the operations manager.", "expected": "All stakeholders must approve the plan, and I report to the operations manager."}'),
('20000000-0000-0000-0000-000000000205', 'typing', 14, '{"prompt_pt": "Traduza: ''Todas as partes interessadas devem aprovar o plano.''", "expected": "All stakeholders must approve the plan.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000205', 'typing', 15, '{"prompt_pt": "Traduza: ''Você pode me atualizar sobre o projeto?''", "expected": "Can you update me on the project?", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 11 (BUSINESS ENGLISH)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

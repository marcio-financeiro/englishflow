-- ============================================================
-- Migration 067: Conteúdo B2 — Módulo 6 "Inglês de Negócios Avançado"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos anteriores (042-066)
-- Continua "Business English básico" do B1
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001651', 'negotiation', '/nɪˌɡoʊʃiˈeɪʃən/', 'noun', 'negociação', 'The negotiation lasted almost three hours.', 'A negociação durou quase três horas.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001652', 'agreement', '/əˈɡriːmənt/', 'noun', 'acordo', 'Both companies reached an agreement.', 'As duas empresas chegaram a um acordo.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001653', 'proposal', '/prəˈpoʊzəl/', 'noun', 'proposta', 'The client accepted our proposal.', 'O cliente aceitou nossa proposta.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001654', 'trade-off', '/ˈtreɪd ɒf/', 'noun', 'compensação, troca', 'There is always a trade-off between cost and quality.', 'Sempre existe uma compensação entre custo e qualidade.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001655', 'consensus', '/kənˈsensəs/', 'noun', 'consenso', 'The board reached a consensus after debate.', 'O conselho chegou a um consenso depois do debate.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001656', 'leverage', '/ˈlevərɪdʒ/', 'verb', 'alavancar, usar a favor', 'We can leverage our experience to win the deal.', 'Podemos usar nossa experiência a nosso favor para fechar o negócio.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001657', 'stakeholder', '/ˈsteɪkhoʊldər/', 'noun', 'parte interessada', 'All stakeholders were invited to the meeting.', 'Todas as partes interessadas foram convidadas para a reunião.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001658', 'shareholder', '/ˈʃerhoʊldər/', 'noun', 'acionista', 'Shareholders voted on the new policy.', 'Os acionistas votaram na nova política.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001659', 'board of directors', '/bɔːrd əv dɪˈrektərz/', 'noun', 'conselho de administração', 'The board of directors approved the budget.', 'O conselho de administração aprovou o orçamento.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001660', 'merger', '/ˈmɜːrdʒər/', 'noun', 'fusão (de empresas)', 'The merger created one of the largest companies in the sector.', 'A fusão criou uma das maiores empresas do setor.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001661', 'acquisition', '/ˌækwɪˈzɪʃən/', 'noun', 'aquisição', 'The acquisition was completed last month.', 'A aquisição foi concluída no mês passado.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001662', 'agenda', '/əˈdʒendə/', 'noun', 'pauta (de reunião)', 'Let''s go through the agenda first.', 'Vamos passar pela pauta primeiro.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001663', 'budget', '/ˈbʌdʒɪt/', 'noun', 'orçamento', 'The project stayed within budget.', 'O projeto ficou dentro do orçamento.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001664', 'revenue', '/ˈrevənuː/', 'noun', 'receita', 'Revenue increased by ten percent this quarter.', 'A receita aumentou dez por cento nesse trimestre.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001665', 'profit margin', '/ˈprɒfɪt ˈmɑːrdʒɪn/', 'noun', 'margem de lucro', 'The profit margin improved after the changes.', 'A margem de lucro melhorou depois das mudanças.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001666', 'forecast', '/ˈfɔːrkæst/', 'noun', 'previsão', 'The forecast for next year looks positive.', 'A previsão para o ano que vem parece positiva.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001667', 'quarterly', '/ˈkwɔːrtərli/', 'adjective', 'trimestral', 'We have a quarterly review with the board.', 'Temos uma revisão trimestral com o conselho.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001668', 'milestone', '/ˈmaɪlstoʊn/', 'noun', 'marco (de um projeto)', 'Reaching one million users was a major milestone.', 'Alcançar um milhão de usuários foi um marco importante.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001669', 'deadline', '/ˈdedlaɪn/', 'noun', 'prazo final', 'The deadline for the report is Friday.', 'O prazo final do relatório é sexta-feira.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001670', 'deliverable', '/dɪˈlɪvərəbəl/', 'noun', 'entregável', 'The first deliverable is due next week.', 'O primeiro entregável tem prazo na próxima semana.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001671', 'outsource', '/ˈaʊtsɔːrs/', 'verb', 'terceirizar', 'The company decided to outsource customer support.', 'A empresa decidiu terceirizar o suporte ao cliente.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001672', 'streamline', '/ˈstriːmlaɪn/', 'verb', 'simplificar, otimizar (processo)', 'We streamlined the approval process.', 'Nós simplificamos o processo de aprovação.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001673', 'optimize', '/ˈɒptɪmaɪz/', 'verb', 'otimizar', 'They optimized the workflow to save time.', 'Eles otimizaram o fluxo de trabalho para economizar tempo.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001674', 'minutes', '/ˈmɪnəts/', 'noun', 'ata (de reunião)', 'Could you send the minutes from the last meeting?', 'Você pode enviar a ata da última reunião?', 'B2', array['business']),
('30000000-0000-0000-0000-000000001675', 'feasibility', '/ˌfiːzəˈbɪləti/', 'noun', 'viabilidade', 'We ran a feasibility study before starting.', 'Fizemos um estudo de viabilidade antes de começar.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001676', 'viability', '/ˌvaɪəˈbɪləti/', 'noun', 'viabilidade (de negócio)', 'Investors questioned the viability of the plan.', 'Os investidores questionaram a viabilidade do plano.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001677', 'contract', '/ˈkɒntrækt/', 'noun', 'contrato', 'Both parties signed the contract.', 'As duas partes assinaram o contrato.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001678', 'clause', '/klɔːz/', 'noun', 'cláusula', 'This clause protects both companies.', 'Essa cláusula protege as duas empresas.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001679', 'liability', '/ˌlaɪəˈbɪləti/', 'noun', 'responsabilidade legal', 'The company accepted liability for the mistake.', 'A empresa assumiu a responsabilidade legal pelo erro.', 'B2', array['business']),
('30000000-0000-0000-0000-000000001680', 'benchmark', '/ˈbentʃmɑːrk/', 'noun', 'referência, padrão de comparação', 'We use this company as a benchmark.', 'Usamos essa empresa como referência.', 'B2', array['business']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000056', 'B2', 'Inglês de Negócios Avançado', 'Continue o vocabulário de negócios do B1 com termos de negociações, reuniões formais, finanças corporativas e gestão de projetos.', 6, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000276', '10000000-0000-0000-0000-000000000056', 'Negociações', 1, 20),
('20000000-0000-0000-0000-000000000277', '10000000-0000-0000-0000-000000000056', 'Estrutura corporativa', 2, 20),
('20000000-0000-0000-0000-000000000278', '10000000-0000-0000-0000-000000000056', 'Finanças e metas', 3, 20),
('20000000-0000-0000-0000-000000000279', '10000000-0000-0000-0000-000000000056', 'Gestão de projetos', 4, 20),
('20000000-0000-0000-0000-000000000280', '10000000-0000-0000-0000-000000000056', 'Revisão: fechando negócios', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 276: Negociações (negotiation, agreement, proposal, trade-off, consensus, leverage)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000276', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001651", "show_image": false}'),
('20000000-0000-0000-0000-000000000276', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001652", "show_image": false}'),
('20000000-0000-0000-0000-000000000276', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001653", "show_image": false}'),
('20000000-0000-0000-0000-000000000276', 'multiple_choice', 4, '{"question": "Both companies reached an ___.", "audio_text": null, "options": ["agreement", "trade-off", "benchmark"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000276', 'multiple_choice', 5, '{"question": "What does ''leverage'' mean here?", "audio_text": null, "options": ["Usar a favor, alavancar", "Ignorar", "Recusar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000276', 'matching', 6, '{"pairs": [{"left": "negotiation", "right": "negociação"}, {"left": "agreement", "right": "acordo"}, {"left": "proposal", "right": "proposta"}, {"left": "trade-off", "right": "compensação"}, {"left": "consensus", "right": "consenso"}, {"left": "leverage", "right": "alavancar"}]}'),
('20000000-0000-0000-0000-000000000276', 'fill_blank', 7, '{"sentence": "There is always a ___ between cost and quality.", "options": ["trade-off", "consensus", "proposal"], "correct": "trade-off", "translation": "Sempre existe uma compensação entre custo e qualidade."}'),
('20000000-0000-0000-0000-000000000276', 'fill_blank', 8, '{"sentence": "The board reached a ___ after debate.", "options": ["consensus", "trade-off", "leverage"], "correct": "consensus", "translation": "O conselho chegou a um consenso depois do debate."}'),
('20000000-0000-0000-0000-000000000276', 'word_order', 9, '{"words": ["The", "negotiation", "lasted", "almost", "three", "hours"], "correct_sentence": "The negotiation lasted almost three hours", "translation": "A negociação durou quase três horas"}'),
('20000000-0000-0000-0000-000000000276', 'word_order', 10, '{"words": ["The", "client", "accepted", "our", "proposal"], "correct_sentence": "The client accepted our proposal", "translation": "O cliente aceitou nossa proposta"}'),
('20000000-0000-0000-0000-000000000276', 'reading', 11, '{"passage": "A good negotiation is not about winning everything, but about finding a fair trade-off. Both sides usually present a proposal, discuss the details, and try to reach a consensus. Skilled negotiators know how to leverage their strengths without losing sight of a final agreement.", "translation": "Uma boa negociação não é sobre ganhar tudo, mas sobre encontrar uma compensação justa. Os dois lados geralmente apresentam uma proposta, discutem os detalhes e tentam chegar a um consenso. Negociadores habilidosos sabem como usar seus pontos fortes a favor sem perder de vista um acordo final.", "question": "What is a good negotiation about, according to the text?", "options": ["Winning everything", "Finding a fair trade-off", "Avoiding proposals"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000276', 'listening', 12, '{"audio_text": "The negotiation lasted almost three hours. Both companies reached an agreement. The board reached a consensus after debate.", "question": "How long did the negotiation last, according to the audio?", "options": ["One hour", "Almost three hours", "All day"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000276', 'dictation', 13, '{"audio_text": "Both companies reached an agreement.", "expected": "Both companies reached an agreement."}'),
('20000000-0000-0000-0000-000000000276', 'typing', 14, '{"prompt_pt": "Traduza: ''Depois de uma longa negociação, chegamos a um consenso.''", "expected": "After a long negotiation, we reached a consensus.", "ai_review": true}'),

-- Lição 277: Estrutura corporativa (stakeholder, shareholder, board of directors, merger, acquisition, agenda)
('20000000-0000-0000-0000-000000000277', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001657", "show_image": false}'),
('20000000-0000-0000-0000-000000000277', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001658", "show_image": false}'),
('20000000-0000-0000-0000-000000000277', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001660", "show_image": false}'),
('20000000-0000-0000-0000-000000000277', 'multiple_choice', 4, '{"question": "All ___ were invited to the meeting.", "audio_text": null, "options": ["stakeholders", "clauses", "milestones"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000277', 'multiple_choice', 5, '{"question": "What does ''acquisition'' mean?", "audio_text": null, "options": ["Aquisição", "Fusão", "Pauta"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000277', 'matching', 6, '{"pairs": [{"left": "stakeholder", "right": "parte interessada"}, {"left": "shareholder", "right": "acionista"}, {"left": "board of directors", "right": "conselho de administração"}, {"left": "merger", "right": "fusão"}, {"left": "acquisition", "right": "aquisição"}, {"left": "agenda", "right": "pauta"}]}'),
('20000000-0000-0000-0000-000000000277', 'fill_blank', 7, '{"sentence": "The ___ approved the budget.", "options": ["board of directors", "stakeholder", "shareholder"], "correct": "board of directors", "translation": "O conselho de administração aprovou o orçamento."}'),
('20000000-0000-0000-0000-000000000277', 'fill_blank', 8, '{"sentence": "Let''s go through the ___ first.", "options": ["agenda", "merger", "clause"], "correct": "agenda", "translation": "Vamos passar pela pauta primeiro."}'),
('20000000-0000-0000-0000-000000000277', 'word_order', 9, '{"words": ["Shareholders", "voted", "on", "the", "new", "policy"], "correct_sentence": "Shareholders voted on the new policy", "translation": "Os acionistas votaram na nova política"}'),
('20000000-0000-0000-0000-000000000277', 'word_order', 10, '{"words": ["The", "acquisition", "was", "completed", "last", "month"], "correct_sentence": "The acquisition was completed last month", "translation": "A aquisição foi concluída no mês passado"}'),
('20000000-0000-0000-0000-000000000277', 'reading', 11, '{"passage": "Understanding corporate structure means knowing the difference between a stakeholder, who is affected by the company''s decisions, and a shareholder, who legally owns part of it. Big changes, like a merger or an acquisition, must be approved by the board of directors before appearing on any agenda.", "translation": "Entender a estrutura corporativa significa saber a diferença entre uma parte interessada, que é afetada pelas decisões da empresa, e um acionista, que legalmente é dono de parte dela. Grandes mudanças, como uma fusão ou uma aquisição, precisam ser aprovadas pelo conselho de administração antes de aparecer em qualquer pauta.", "question": "Who legally owns part of the company, according to the text?", "options": ["A stakeholder", "A shareholder", "The board of directors"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000277', 'listening', 12, '{"audio_text": "All stakeholders were invited to the meeting. Shareholders voted on the new policy. The acquisition was completed last month.", "question": "What did shareholders vote on, according to the audio?", "options": ["The acquisition", "The new policy", "The agenda"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000277', 'dictation', 13, '{"audio_text": "The board of directors approved the budget.", "expected": "The board of directors approved the budget."}'),
('20000000-0000-0000-0000-000000000277', 'typing', 14, '{"prompt_pt": "Traduza: ''Os acionistas e o conselho de administração aprovaram a fusão.''", "expected": "The shareholders and the board of directors approved the merger.", "ai_review": true}'),

-- Lição 278: Finanças e metas (budget, revenue, profit margin, forecast, quarterly, milestone)
('20000000-0000-0000-0000-000000000278', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001663", "show_image": false}'),
('20000000-0000-0000-0000-000000000278', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001664", "show_image": false}'),
('20000000-0000-0000-0000-000000000278', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001668", "show_image": false}'),
('20000000-0000-0000-0000-000000000278', 'multiple_choice', 4, '{"question": "___ increased by ten percent this quarter.", "audio_text": null, "options": ["Revenue", "Budget", "Liability"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000278', 'multiple_choice', 5, '{"question": "What does ''quarterly'' mean?", "audio_text": null, "options": ["Trimestral", "Mensal", "Anual"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000278', 'matching', 6, '{"pairs": [{"left": "budget", "right": "orçamento"}, {"left": "revenue", "right": "receita"}, {"left": "profit margin", "right": "margem de lucro"}, {"left": "forecast", "right": "previsão"}, {"left": "quarterly", "right": "trimestral"}, {"left": "milestone", "right": "marco"}]}'),
('20000000-0000-0000-0000-000000000278', 'fill_blank', 7, '{"sentence": "The ___ for next year looks positive.", "options": ["forecast", "budget", "milestone"], "correct": "forecast", "translation": "A previsão para o ano que vem parece positiva."}'),
('20000000-0000-0000-0000-000000000278', 'fill_blank', 8, '{"sentence": "Reaching one million users was a major ___.", "options": ["milestone", "revenue", "forecast"], "correct": "milestone", "translation": "Alcançar um milhão de usuários foi um marco importante."}'),
('20000000-0000-0000-0000-000000000278', 'word_order', 9, '{"words": ["The", "project", "stayed", "within", "budget"], "correct_sentence": "The project stayed within budget", "translation": "O projeto ficou dentro do orçamento"}'),
('20000000-0000-0000-0000-000000000278', 'word_order', 10, '{"words": ["The", "profit", "margin", "improved", "after", "the", "changes"], "correct_sentence": "The profit margin improved after the changes", "translation": "A margem de lucro melhorou depois das mudanças"}'),
('20000000-0000-0000-0000-000000000278', 'reading', 11, '{"passage": "Every quarter, the finance team compares the actual revenue to the original forecast. If the project stayed within budget and the profit margin improved, that is considered an important milestone worth celebrating with the whole team.", "translation": "A cada trimestre, a equipe financeira compara a receita real com a previsão original. Se o projeto ficou dentro do orçamento e a margem de lucro melhorou, isso é considerado um marco importante que vale a pena comemorar com toda a equipe.", "question": "What does the finance team compare every quarter, according to the text?", "options": ["Revenue and forecast", "Budget and milestone", "Agenda and clause"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000278', 'listening', 12, '{"audio_text": "Revenue increased by ten percent this quarter. The profit margin improved after the changes. We have a quarterly review with the board.", "question": "By how much did revenue increase, according to the audio?", "options": ["Five percent", "Ten percent", "Twenty percent"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000278', 'dictation', 13, '{"audio_text": "Revenue increased by ten percent this quarter.", "expected": "Revenue increased by ten percent this quarter."}'),
('20000000-0000-0000-0000-000000000278', 'typing', 14, '{"prompt_pt": "Traduza: ''A receita e a margem de lucro melhoraram nesse trimestre.''", "expected": "Revenue and profit margin improved this quarter.", "ai_review": true}'),

-- Lição 279: Gestão de projetos (deadline, deliverable, outsource, streamline, optimize, minutes)
('20000000-0000-0000-0000-000000000279', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001669", "show_image": false}'),
('20000000-0000-0000-0000-000000000279', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001670", "show_image": false}'),
('20000000-0000-0000-0000-000000000279', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001672", "show_image": false}'),
('20000000-0000-0000-0000-000000000279', 'multiple_choice', 4, '{"question": "The company decided to ___ customer support.", "audio_text": null, "options": ["outsource", "leverage", "forecast"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000279', 'multiple_choice', 5, '{"question": "What does ''minutes'' mean in a business context?", "audio_text": null, "options": ["Ata de reunião", "Minutos de tempo", "Orçamento"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000279', 'matching', 6, '{"pairs": [{"left": "deadline", "right": "prazo final"}, {"left": "deliverable", "right": "entregável"}, {"left": "outsource", "right": "terceirizar"}, {"left": "streamline", "right": "simplificar"}, {"left": "optimize", "right": "otimizar"}, {"left": "minutes", "right": "ata de reunião"}]}'),
('20000000-0000-0000-0000-000000000279', 'fill_blank', 7, '{"sentence": "The ___ for the report is Friday.", "options": ["deadline", "deliverable", "minutes"], "correct": "deadline", "translation": "O prazo final do relatório é sexta-feira."}'),
('20000000-0000-0000-0000-000000000279', 'fill_blank', 8, '{"sentence": "We ___ the approval process.", "options": ["streamlined", "outsourced", "forecasted"], "correct": "streamlined", "translation": "Nós simplificamos o processo de aprovação."}'),
('20000000-0000-0000-0000-000000000279', 'word_order', 9, '{"words": ["The", "first", "deliverable", "is", "due", "next", "week"], "correct_sentence": "The first deliverable is due next week", "translation": "O primeiro entregável tem prazo na próxima semana"}'),
('20000000-0000-0000-0000-000000000279', 'word_order', 10, '{"words": ["They", "optimized", "the", "workflow", "to", "save", "time"], "correct_sentence": "They optimized the workflow to save time", "translation": "Eles otimizaram o fluxo de trabalho para economizar tempo"}'),
('20000000-0000-0000-0000-000000000279', 'reading', 11, '{"passage": "Good project management means respecting every deadline and delivering each deliverable on time. Many teams choose to outsource repetitive tasks, streamline internal processes, and optimize their workflow. At the end, the minutes of the meeting record everything that was decided.", "translation": "Uma boa gestão de projetos significa respeitar todo prazo final e entregar cada entregável no tempo certo. Muitas equipes optam por terceirizar tarefas repetitivas, simplificar processos internos e otimizar o fluxo de trabalho. No final, a ata da reunião registra tudo o que foi decidido.", "question": "What records everything that was decided, according to the text?", "options": ["The deadline", "The minutes of the meeting", "The deliverable"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000279', 'listening', 12, '{"audio_text": "The deadline for the report is Friday. The company decided to outsource customer support. We streamlined the approval process.", "question": "What did the company decide to outsource, according to the audio?", "options": ["The report", "Customer support", "The approval process"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000279', 'dictation', 13, '{"audio_text": "The deadline for the report is Friday.", "expected": "The deadline for the report is Friday."}'),
('20000000-0000-0000-0000-000000000279', 'typing', 14, '{"prompt_pt": "Traduza: ''Nós otimizamos o processo e cumprimos o prazo final.''", "expected": "We optimized the process and met the deadline.", "ai_review": true}'),

-- Lição 280: Revisão + fechando negócios (feasibility, viability, contract, clause, liability, benchmark)
('20000000-0000-0000-0000-000000000280', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001675", "show_image": false}'),
('20000000-0000-0000-0000-000000000280', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001677", "show_image": false}'),
('20000000-0000-0000-0000-000000000280', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001679", "show_image": false}'),
('20000000-0000-0000-0000-000000000280', 'multiple_choice', 4, '{"question": "Both parties signed the ___.", "audio_text": null, "options": ["contract", "benchmark", "feasibility"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000280', 'multiple_choice', 5, '{"question": "What does ''clause'' mean?", "audio_text": null, "options": ["Cláusula", "Contrato inteiro", "Prazo final"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000280', 'matching', 6, '{"pairs": [{"left": "feasibility", "right": "viabilidade"}, {"left": "viability", "right": "viabilidade (negócio)"}, {"left": "contract", "right": "contrato"}, {"left": "clause", "right": "cláusula"}, {"left": "liability", "right": "responsabilidade legal"}, {"left": "benchmark", "right": "referência"}]}'),
('20000000-0000-0000-0000-000000000280', 'fill_blank', 7, '{"sentence": "We ran a ___ study before starting.", "options": ["feasibility", "liability", "benchmark"], "correct": "feasibility", "translation": "Fizemos um estudo de viabilidade antes de começar."}'),
('20000000-0000-0000-0000-000000000280', 'fill_blank', 8, '{"sentence": "The company accepted ___ for the mistake.", "options": ["liability", "viability", "clause"], "correct": "liability", "translation": "A empresa assumiu a responsabilidade legal pelo erro."}'),
('20000000-0000-0000-0000-000000000280', 'word_order', 9, '{"words": ["This", "clause", "protects", "both", "companies"], "correct_sentence": "This clause protects both companies", "translation": "Essa cláusula protege as duas empresas"}'),
('20000000-0000-0000-0000-000000000280', 'word_order', 10, '{"words": ["We", "use", "this", "company", "as", "a", "benchmark"], "correct_sentence": "We use this company as a benchmark", "translation": "Usamos essa empresa como referência"}'),
('20000000-0000-0000-0000-000000000280', 'reading', 11, '{"passage": "Before signing a contract, both sides usually study its feasibility and long-term viability. Every clause matters, especially those related to liability, since they define who is responsible if something goes wrong. Comparing the deal to a market benchmark also helps decide if it is fair.", "translation": "Antes de assinar um contrato, os dois lados geralmente estudam sua viabilidade e sustentabilidade a longo prazo. Toda cláusula importa, especialmente as relacionadas à responsabilidade legal, já que definem quem é responsável se algo der errado. Comparar o negócio com uma referência de mercado também ajuda a decidir se ele é justo.", "question": "What do liability clauses define, according to the text?", "options": ["The deadline", "Who is responsible if something goes wrong", "The revenue forecast"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000280', 'listening', 12, '{"audio_text": "Both parties signed the contract. This clause protects both companies. The company accepted liability for the mistake.", "question": "What does the clause do, according to the audio?", "options": ["It creates risk", "It protects both companies", "It cancels the contract"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000280', 'dictation', 13, '{"audio_text": "Both parties signed the contract.", "expected": "Both parties signed the contract."}'),
('20000000-0000-0000-0000-000000000280', 'typing', 14, '{"prompt_pt": "Traduza: ''Antes de assinar o contrato, verificamos a viabilidade e cada cláusula.''", "expected": "Before signing the contract, we checked the viability and every clause.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000280', 'typing', 15, '{"prompt_pt": "Traduza: ''A empresa aceitou a responsabilidade legal e usou a concorrente como referência.''", "expected": "The company accepted the liability and used the competitor as a benchmark.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 3: Passive Voice
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 2 (043_seed_b1_modal_verbs.sql).
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 043_seed_b1_modal_verbs.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 33: Passive Voice
('30000000-0000-0000-0000-000000000961', 'make', 'meɪk', 'verb', 'fazer / fabricar', 'This car is made in Japan.', 'Este carro é fabricado no Japão.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000962', 'produce', 'prəˈduːs', 'verb', 'produzir', 'Rice is produced in many countries.', 'O arroz é produzido em muitos países.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000963', 'sell', 'sel', 'verb', 'vender', 'These products are sold online.', 'Esses produtos são vendidos online.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000964', 'use', 'juːz', 'verb', 'usar', 'This tool is used every day.', 'Essa ferramenta é usada todo dia.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000965', 'find', 'faɪnd', 'verb', 'encontrar', 'The keys were found under the sofa.', 'As chaves foram encontradas debaixo do sofá.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000966', 'create', 'kriˈeɪt', 'verb', 'criar', 'This app was created by a small team.', 'Esse aplicativo foi criado por uma equipe pequena.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000967', 'design', 'dɪˈzaɪn', 'verb', 'projetar / desenhar', 'The building was designed by a famous architect.', 'O prédio foi projetado por um arquiteto famoso.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000968', 'build', 'bɪld', 'verb', 'construir', 'The bridge was built in two years.', 'A ponte foi construída em dois anos.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000969', 'open', 'ˈoʊpən', 'verb', 'abrir', 'The store is opened at nine every day.', 'A loja é aberta às nove todo dia.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000970', 'close', 'kloʊz', 'verb', 'fechar', 'The office is closed on Sundays.', 'O escritório é fechado aos domingos.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000971', 'invent', 'ɪnˈvent', 'verb', 'inventar', 'The telephone was invented in 1876.', 'O telefone foi inventado em 1876.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000972', 'discover', 'dɪˈskʌvər', 'verb', 'descobrir', 'This island was discovered centuries ago.', 'Essa ilha foi descoberta séculos atrás.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000973', 'deliver', 'dɪˈlɪvər', 'verb', 'entregar', 'The package will be delivered tomorrow.', 'O pacote será entregue amanhã.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000974', 'install', 'ɪnˈstɔːl', 'verb', 'instalar', 'The software must be installed first.', 'O software deve ser instalado primeiro.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000975', 'repair', 'rɪˈper', 'verb', 'consertar', 'The engine is being repaired.', 'O motor está sendo consertado.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000976', 'publish', 'ˈpʌblɪʃ', 'verb', 'publicar', 'The book was published last year.', 'O livro foi publicado ano passado.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000977', 'launch', 'lɔːntʃ', 'verb', 'lançar', 'The new phone will be launched next month.', 'O novo celular será lançado mês que vem.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000978', 'recycle', 'riːˈsaɪkəl', 'verb', 'reciclar', 'Plastic bottles can be recycled.', 'Garrafas plásticas podem ser recicladas.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000979', 'translate', 'trænsˈleɪt', 'verb', 'traduzir', 'This document needs to be translated.', 'Esse documento precisa ser traduzido.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000980', 'ship', 'ʃɪp', 'verb', 'enviar / transportar', 'Your order was shipped yesterday.', 'Seu pedido foi enviado ontem.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000981', 'pack', 'pæk', 'verb', 'embalar', 'The boxes are packed carefully.', 'As caixas são embaladas com cuidado.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000982', 'print', 'prɪnt', 'verb', 'imprimir', 'The tickets are printed at home.', 'Os ingressos são impressos em casa.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000983', 'employ', 'ɪmˈplɔɪ', 'verb', 'empregar', 'Two hundred people are employed here.', 'Duzentas pessoas são empregadas aqui.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000984', 'offer', 'ˈɔːfər', 'verb', 'oferecer', 'Free coffee is offered to guests.', 'Café grátis é oferecido aos hóspedes.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000985', 'cancel', 'ˈkænsəl', 'verb', 'cancelar', 'The flight was canceled by the storm.', 'O voo foi cancelado pela tempestade.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000986', 'postpone', 'poʊstˈpoʊn', 'verb', 'adiar', 'The meeting has been postponed.', 'A reunião foi adiada.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000987', 'announce', 'əˈnaʊns', 'verb', 'anunciar', 'The results will be announced soon.', 'Os resultados serão anunciados em breve.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000988', 'elect', 'ɪˈlekt', 'verb', 'eleger', 'She was elected president of the company.', 'Ela foi eleita presidente da empresa.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000989', 'own', 'oʊn', 'verb', 'possuir', 'This company is owned by a large group.', 'Essa empresa é de propriedade de um grande grupo.', 'B1', array['passive']),
('30000000-0000-0000-0000-000000000990', 'by', 'baɪ', 'preposition', 'por (agente da passiva)', 'The email was written by my manager.', 'O e-mail foi escrito pelo meu gerente.', 'B1', array['passive']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000033', 'B1', 'Passive Voice', 'Descreva processos e produtos usando a voz passiva no presente, passado e com modais.', 3, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000161', '10000000-0000-0000-0000-000000000033', 'Passive Voice — Introduction', 1, 10),
('20000000-0000-0000-0000-000000000162', '10000000-0000-0000-0000-000000000033', 'Passive Voice — Past Simple', 2, 10),
('20000000-0000-0000-0000-000000000163', '10000000-0000-0000-0000-000000000033', 'Passive Voice — Modals (can/must be)', 3, 10),
('20000000-0000-0000-0000-000000000164', '10000000-0000-0000-0000-000000000033', 'Active vs Passive', 4, 10),
('20000000-0000-0000-0000-000000000165', '10000000-0000-0000-0000-000000000033', 'Products & Processes (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 33.1: Passive Voice — Introduction ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000161', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000961", "show_image": false}'),
('20000000-0000-0000-0000-000000000161', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000962", "show_image": false}'),
('20000000-0000-0000-0000-000000000161', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000963", "show_image": false}'),
('20000000-0000-0000-0000-000000000161', 'multiple_choice', 4, '{"question": "Complete: This car ___ made in Japan.", "audio_text": null, "options": ["is", "are", "was"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000161', 'multiple_choice', 5, '{"question": "Complete: These products ___ sold online.", "audio_text": null, "options": ["is", "are", "was"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000161', 'matching', 6, '{"pairs": [{"left": "make", "right": "fazer / fabricar"}, {"left": "produce", "right": "produzir"}, {"left": "sell", "right": "vender"}, {"left": "use", "right": "usar"}, {"left": "open", "right": "abrir"}, {"left": "close", "right": "fechar"}]}'),
('20000000-0000-0000-0000-000000000161', 'fill_blank', 7, '{"sentence": "This tool ___ used every day.", "options": ["is", "are", "was"], "correct": "is", "translation": "Essa ferramenta é usada todo dia."}'),
('20000000-0000-0000-0000-000000000161', 'fill_blank', 8, '{"sentence": "The store ___ opened at nine every day.", "options": ["is", "are", "was"], "correct": "is", "translation": "A loja é aberta às nove todo dia."}'),
('20000000-0000-0000-0000-000000000161', 'word_order', 9, '{"words": ["Japan", "in", "made", "is", "This", "car"], "correct_sentence": "This car is made in Japan", "translation": "Este carro é fabricado no Japão"}'),
('20000000-0000-0000-0000-000000000161', 'word_order', 10, '{"words": ["Sundays", "closed", "is", "on", "The", "office"], "correct_sentence": "The office is closed on Sundays", "translation": "O escritório é fechado aos domingos"}'),
('20000000-0000-0000-0000-000000000161', 'reading', 11, '{"passage": "This factory produces cars for the whole country. Every car is made with modern machines, and it is checked carefully before it is sold. About five hundred cars are produced every month.", "translation": "Essa fábrica produz carros para o país inteiro. Todo carro é fabricado com máquinas modernas, e é verificado cuidadosamente antes de ser vendido. Cerca de quinhentos carros são produzidos por mês.", "question": "How often are cars produced according to the text?", "options": ["Every day", "Every month", "Every year"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000161', 'listening', 12, '{"audio_text": "This tool is used every day at the platform, and it is checked before it is used again.", "question": "What happens to the tool before it is used again?", "options": ["It is sold", "It is checked", "It is closed"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000161', 'dictation', 13, '{"audio_text": "This tool is used every day, and the office is closed on Sundays.", "expected": "This tool is used every day, and the office is closed on Sundays."}'),
('20000000-0000-0000-0000-000000000161', 'typing', 14, '{"prompt_pt": "Traduza: ''Esses produtos são vendidos online.''", "expected": "These products are sold online.", "ai_review": true}');

-- ---------- Lição 33.2: Passive Voice — Past Simple ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000162', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000965", "show_image": false}'),
('20000000-0000-0000-0000-000000000162', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000968", "show_image": false}'),
('20000000-0000-0000-0000-000000000162', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000971", "show_image": false}'),
('20000000-0000-0000-0000-000000000162', 'multiple_choice', 4, '{"question": "Complete: The keys ___ found under the sofa.", "audio_text": null, "options": ["was", "were", "are"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000162', 'multiple_choice', 5, '{"question": "Complete: The bridge ___ built in two years.", "audio_text": null, "options": ["was", "were", "is"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000162', 'matching', 6, '{"pairs": [{"left": "find", "right": "encontrar"}, {"left": "create", "right": "criar"}, {"left": "design", "right": "projetar"}, {"left": "build", "right": "construir"}, {"left": "invent", "right": "inventar"}, {"left": "discover", "right": "descobrir"}]}'),
('20000000-0000-0000-0000-000000000162', 'fill_blank', 7, '{"sentence": "The telephone ___ invented in 1876.", "options": ["was", "were", "is"], "correct": "was", "translation": "O telefone foi inventado em 1876."}'),
('20000000-0000-0000-0000-000000000162', 'fill_blank', 8, '{"sentence": "This island ___ discovered centuries ago.", "options": ["was", "were", "is"], "correct": "was", "translation": "Essa ilha foi descoberta séculos atrás."}'),
('20000000-0000-0000-0000-000000000162', 'word_order', 9, '{"words": ["The", "building", "was", "designed", "by", "a", "famous", "architect"], "correct_sentence": "The building was designed by a famous architect", "translation": "O prédio foi projetado por um arquiteto famoso"}'),
('20000000-0000-0000-0000-000000000162', 'word_order', 10, '{"words": ["The", "bridge", "was", "built", "in", "two", "years"], "correct_sentence": "The bridge was built in two years", "translation": "A ponte foi construída em dois anos"}'),
('20000000-0000-0000-0000-000000000162', 'reading', 11, '{"passage": "The telephone was invented in 1876 by Alexander Graham Bell. It was designed to send voice over wires. Many other devices were created after that, and new technology is still being discovered today.", "translation": "O telefone foi inventado em 1876 por Alexander Graham Bell. Ele foi projetado para enviar voz por fios. Muitos outros aparelhos foram criados depois disso, e novas tecnologias ainda estão sendo descobertas hoje.", "question": "Who invented the telephone?", "options": ["Alexander Graham Bell", "A small team", "A famous architect"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000162', 'listening', 12, '{"audio_text": "This app was created by a small team, and the building where they worked was designed by a famous architect.", "question": "Who created the app?", "options": ["A famous architect", "A small team", "Alexander Graham Bell"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000162', 'dictation', 13, '{"audio_text": "The telephone was invented in 1876, and this island was discovered centuries ago.", "expected": "The telephone was invented in 1876, and this island was discovered centuries ago."}'),
('20000000-0000-0000-0000-000000000162', 'typing', 14, '{"prompt_pt": "Traduza: ''Essa ilha foi descoberta séculos atrás.''", "expected": "This island was discovered centuries ago.", "ai_review": true}');

-- ---------- Lição 33.3: Passive Voice — Modals (can/must be) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000163', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000973", "show_image": false}'),
('20000000-0000-0000-0000-000000000163', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000974", "show_image": false}'),
('20000000-0000-0000-0000-000000000163', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000978", "show_image": false}'),
('20000000-0000-0000-0000-000000000163', 'multiple_choice', 4, '{"question": "Complete: The package ___ be delivered tomorrow.", "audio_text": null, "options": ["will", "is", "was"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000163', 'multiple_choice', 5, '{"question": "Complete: Plastic bottles ___ be recycled.", "audio_text": null, "options": ["can", "is", "was"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000163', 'matching', 6, '{"pairs": [{"left": "deliver", "right": "entregar"}, {"left": "install", "right": "instalar"}, {"left": "repair", "right": "consertar"}, {"left": "recycle", "right": "reciclar"}, {"left": "translate", "right": "traduzir"}, {"left": "postpone", "right": "adiar"}]}'),
('20000000-0000-0000-0000-000000000163', 'fill_blank', 7, '{"sentence": "The software must ___ installed first.", "options": ["be", "is", "was"], "correct": "be", "translation": "O software deve ser instalado primeiro."}'),
('20000000-0000-0000-0000-000000000163', 'fill_blank', 8, '{"sentence": "This document needs to ___ translated.", "options": ["be", "is", "was"], "correct": "be", "translation": "Esse documento precisa ser traduzido."}'),
('20000000-0000-0000-0000-000000000163', 'word_order', 9, '{"words": ["The", "meeting", "has", "been", "postponed"], "correct_sentence": "The meeting has been postponed", "translation": "A reunião foi adiada"}'),
('20000000-0000-0000-0000-000000000163', 'word_order', 10, '{"words": ["The", "engine", "is", "being", "repaired"], "correct_sentence": "The engine is being repaired", "translation": "O motor está sendo consertado"}'),
('20000000-0000-0000-0000-000000000163', 'reading', 11, '{"passage": "At the platform, all safety equipment must be checked every month. If something is broken, it must be repaired immediately. New parts can be delivered by helicopter when needed, and old equipment must be recycled properly.", "translation": "Na plataforma, todo equipamento de segurança deve ser verificado todo mês. Se algo está quebrado, deve ser consertado imediatamente. Peças novas podem ser entregues de helicóptero quando necessário, e equipamentos velhos devem ser reciclados corretamente.", "question": "How can new parts be delivered to the platform?", "options": ["By boat", "By helicopter", "By truck"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000163', 'listening', 12, '{"audio_text": "The meeting has been postponed because the report must be translated first. It will probably be delivered next week.", "question": "Why has the meeting been postponed?", "options": ["The report must be translated", "The engine is being repaired", "The equipment must be recycled"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000163', 'dictation', 13, '{"audio_text": "The software must be installed first, and the document needs to be translated.", "expected": "The software must be installed first, and the document needs to be translated."}'),
('20000000-0000-0000-0000-000000000163', 'typing', 14, '{"prompt_pt": "Traduza: ''A reunião foi adiada.''", "expected": "The meeting has been postponed.", "ai_review": true}');

-- ---------- Lição 33.4: Active vs Passive ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000164', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000977", "show_image": false}'),
('20000000-0000-0000-0000-000000000164', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000985", "show_image": false}'),
('20000000-0000-0000-0000-000000000164', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000990", "show_image": false}'),
('20000000-0000-0000-0000-000000000164', 'multiple_choice', 4, '{"question": "Complete: The new phone will ___ launched next month.", "audio_text": null, "options": ["be", "is", "was"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000164', 'multiple_choice', 5, '{"question": "Complete: The email was written ___ my manager.", "audio_text": null, "options": ["by", "from", "with"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000164', 'matching', 6, '{"pairs": [{"left": "launch", "right": "lançar"}, {"left": "ship", "right": "enviar / transportar"}, {"left": "print", "right": "imprimir"}, {"left": "cancel", "right": "cancelar"}, {"left": "announce", "right": "anunciar"}, {"left": "by", "right": "por (agente)"}]}'),
('20000000-0000-0000-0000-000000000164', 'fill_blank', 7, '{"sentence": "This painting was created ___ a famous artist.", "options": ["by", "from", "of"], "correct": "by", "translation": "Esta pintura foi criada por um artista famoso."}'),
('20000000-0000-0000-0000-000000000164', 'fill_blank', 8, '{"sentence": "Your order ___ shipped yesterday.", "options": ["was", "is", "were"], "correct": "was", "translation": "Seu pedido foi enviado ontem."}'),
('20000000-0000-0000-0000-000000000164', 'word_order', 9, '{"words": ["The", "results", "will", "be", "announced", "soon"], "correct_sentence": "The results will be announced soon", "translation": "Os resultados serão anunciados em breve"}'),
('20000000-0000-0000-0000-000000000164', 'word_order', 10, '{"words": ["The", "tickets", "are", "printed", "at", "home"], "correct_sentence": "The tickets are printed at home", "translation": "Os ingressos são impressos em casa"}'),
('20000000-0000-0000-0000-000000000164', 'reading', 11, '{"passage": "Someone canceled the flight because of the storm. The flight was canceled because of the storm. Both sentences mean the same thing, but the passive version focuses on the flight, not on who canceled it. Companies often use the passive voice to announce news, like ''The results will be announced soon.''", "translation": "Alguém cancelou o voo por causa da tempestade. O voo foi cancelado por causa da tempestade. As duas frases têm o mesmo significado, mas a versão passiva foca no voo, não em quem cancelou. Empresas costumam usar a voz passiva para anunciar notícias, como ''Os resultados serão anunciados em breve.''", "question": "What does the passive voice focus on?", "options": ["The person who did the action", "The thing that receives the action", "The time of the action"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000164', 'listening', 12, '{"audio_text": "Your order was shipped yesterday, and it will be delivered by Friday.", "question": "When will the order be delivered?", "options": ["Yesterday", "By Friday", "Next month"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000164', 'dictation', 13, '{"audio_text": "The results will be announced soon, and the tickets are printed at home.", "expected": "The results will be announced soon, and the tickets are printed at home."}'),
('20000000-0000-0000-0000-000000000164', 'typing', 14, '{"prompt_pt": "Traduza: ''O e-mail foi escrito pelo meu gerente.''", "expected": "The email was written by my manager.", "ai_review": true}');

-- ---------- Lição 33.5: Products & Processes (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000165', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000976", "show_image": false}'),
('20000000-0000-0000-0000-000000000165', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000984", "show_image": false}'),
('20000000-0000-0000-0000-000000000165', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000000989", "show_image": false}'),
('20000000-0000-0000-0000-000000000165', 'multiple_choice', 4, '{"question": "Complete: The book ___ published last year.", "audio_text": null, "options": ["was", "is", "were"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000165', 'multiple_choice', 5, '{"question": "Complete: Two hundred people ___ employed here.", "audio_text": null, "options": ["is", "are", "was"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000165', 'matching', 6, '{"pairs": [{"left": "publish", "right": "publicar"}, {"left": "pack", "right": "embalar"}, {"left": "employ", "right": "empregar"}, {"left": "offer", "right": "oferecer"}, {"left": "elect", "right": "eleger"}, {"left": "own", "right": "possuir"}]}'),
('20000000-0000-0000-0000-000000000165', 'fill_blank', 7, '{"sentence": "Free coffee ___ offered to guests.", "options": ["is", "are", "was"], "correct": "is", "translation": "Café grátis é oferecido aos hóspedes."}'),
('20000000-0000-0000-0000-000000000165', 'fill_blank', 8, '{"sentence": "This company is ___ by a large group.", "options": ["owned", "own", "owning"], "correct": "owned", "translation": "Essa empresa é de propriedade de um grande grupo."}'),
('20000000-0000-0000-0000-000000000165', 'word_order', 9, '{"words": ["She", "was", "elected", "president", "of", "the", "company"], "correct_sentence": "She was elected president of the company", "translation": "Ela foi eleita presidente da empresa"}'),
('20000000-0000-0000-0000-000000000165', 'word_order', 10, '{"words": ["The", "boxes", "are", "packed", "carefully"], "correct_sentence": "The boxes are packed carefully", "translation": "As caixas são embaladas com cuidado"}'),
('20000000-0000-0000-0000-000000000165', 'reading', 11, '{"passage": "This company was created twenty years ago. Today, it is owned by a large group, and two hundred people are employed here. New products are designed, produced, and packed every day, then they are shipped all over the country. Every year, a new catalog is published, and free samples are offered to customers.", "translation": "Essa empresa foi criada há vinte anos. Hoje, ela pertence a um grande grupo, e duzentas pessoas são empregadas aqui. Novos produtos são projetados, produzidos e embalados todo dia, depois são enviados para o país inteiro. Todo ano, um novo catálogo é publicado, e amostras grátis são oferecidas aos clientes.", "question": "How many people are employed at the company?", "options": ["Fifty", "Two hundred", "Five hundred"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000165', 'listening', 12, '{"audio_text": "This company was founded years ago. Today it is owned by a large group, and new products are launched every year.", "question": "Who owns the company today?", "options": ["A small team", "A large group", "The government"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000165', 'dictation', 13, '{"audio_text": "This company is owned by a large group, and new products are designed every day.", "expected": "This company is owned by a large group, and new products are designed every day."}'),
('20000000-0000-0000-0000-000000000165', 'typing', 14, '{"prompt_pt": "Traduza: ''Ela foi eleita presidente da empresa.''", "expected": "She was elected president of the company.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000165', 'typing', 15, '{"prompt_pt": "Traduza: ''As caixas são embaladas com cuidado.''", "expected": "The boxes are packed carefully.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 3 (PASSIVE VOICE)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

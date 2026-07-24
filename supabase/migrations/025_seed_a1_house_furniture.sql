-- ============================================================================
-- EnglishFlow — Seed de conteúdo A1: módulo 10 "House & Furniture"
-- 1 módulo, 5 lições, 30 palavras de vocabulário
-- Continua a numeração de 023_seed_a1_body_health.sql (vocabulário
-- 541-570, módulo 10000000-...-000019, lições 20000000-...-000091 a 095).
-- ============================================================================

-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000000541', 'house', 'haʊs', 'noun', 'casa', 'This is my house.', 'Essa é a minha casa.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000542', 'apartment', 'əˈpɑːrtmənt', 'noun', 'apartamento', 'I live in an apartment.', 'Eu moro em um apartamento.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000543', 'kitchen', 'ˈkɪtʃɪn', 'noun', 'cozinha', 'The kitchen is small but nice.', 'A cozinha é pequena mas bonita.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000544', 'living room', 'ˈlɪvɪŋ ruːm', 'noun', 'sala de estar', 'We watch TV in the living room.', 'Nós assistimos TV na sala de estar.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000545', 'bedroom', 'ˈbedruːm', 'noun', 'quarto', 'My bedroom is upstairs.', 'Meu quarto é no andar de cima.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000546', 'bathroom', 'ˈbæθruːm', 'noun', 'banheiro', 'The bathroom is next to the bedroom.', 'O banheiro é ao lado do quarto.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000547', 'garden', 'ˈɡɑːrdn', 'noun', 'jardim', 'We have a small garden.', 'Nós temos um jardim pequeno.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000548', 'garage', 'ɡəˈrɑːʒ', 'noun', 'garagem', 'The car is in the garage.', 'O carro está na garagem.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000549', 'stairs', 'steərz', 'noun', 'escadas', 'Be careful on the stairs.', 'Cuidado nas escadas.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000550', 'floor', 'flɔːr', 'noun', 'chão / andar', 'My apartment is on the third floor.', 'Meu apartamento é no terceiro andar.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000551', 'wall', 'wɔːl', 'noun', 'parede', 'The picture is on the wall.', 'O quadro está na parede.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000552', 'window', 'ˈwɪndoʊ', 'noun', 'janela', 'Open the window, please.', 'Abra a janela, por favor.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000553', 'door', 'dɔːr', 'noun', 'porta', 'Close the door.', 'Feche a porta.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000554', 'table', 'ˈteɪbl', 'noun', 'mesa', 'The table is in the kitchen.', 'A mesa está na cozinha.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000555', 'chair', 'tʃeər', 'noun', 'cadeira', 'There are four chairs.', 'Há quatro cadeiras.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000556', 'bed', 'bed', 'noun', 'cama', 'The bed is very comfortable.', 'A cama é muito confortável.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000557', 'sofa', 'ˈsoʊfə', 'noun', 'sofá', 'We sit on the sofa to watch TV.', 'Nós sentamos no sofá para assistir TV.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000558', 'shelf', 'ʃelf', 'noun', 'prateleira', 'The books are on the shelf.', 'Os livros estão na prateleira.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000559', 'wardrobe', 'ˈwɔːrdroʊb', 'noun', 'guarda-roupa', 'My clothes are in the wardrobe.', 'Minhas roupas estão no guarda-roupa.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000560', 'mirror', 'ˈmɪrər', 'noun', 'espelho', 'There is a mirror in the bathroom.', 'Há um espelho no banheiro.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000561', 'lamp', 'læmp', 'noun', 'luminária / abajur', 'Turn on the lamp, please.', 'Acenda a luminária, por favor.', 'A1', array['furniture']),
('30000000-0000-0000-0000-000000000562', 'fridge', 'frɪdʒ', 'noun', 'geladeira', 'The milk is in the fridge.', 'O leite está na geladeira.', 'A1', array['appliances']),
('30000000-0000-0000-0000-000000000563', 'stove', 'stoʊv', 'noun', 'fogão', 'She is cooking on the stove.', 'Ela está cozinhando no fogão.', 'A1', array['appliances']),
('30000000-0000-0000-0000-000000000564', 'oven', 'ˈʌvn', 'noun', 'forno', 'The pizza is in the oven.', 'A pizza está no forno.', 'A1', array['appliances']),
('30000000-0000-0000-0000-000000000565', 'washing machine', 'ˈwɒʃɪŋ məˈʃiːn', 'noun', 'máquina de lavar', 'The washing machine is broken.', 'A máquina de lavar está quebrada.', 'A1', array['appliances']),
('30000000-0000-0000-0000-000000000566', 'to clean', 'tuː kliːn', 'verb', 'limpar', 'I clean my room every week.', 'Eu limpo meu quarto toda semana.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000567', 'to move (house)', 'tuː muːv', 'verb', 'se mudar', 'We are moving to a new house.', 'Nós estamos nos mudando para uma casa nova.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000568', 'to rent', 'tuː rent', 'verb', 'alugar', 'They rent an apartment downtown.', 'Eles alugam um apartamento no centro.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000569', 'neighbor', 'ˈneɪbər', 'noun', 'vizinho', 'My neighbor is very friendly.', 'Meu vizinho é muito simpático.', 'A1', array['house']),
('30000000-0000-0000-0000-000000000570', 'address', 'əˈdres', 'noun', 'endereço', 'What is your address?', 'Qual é o seu endereço?', 'A1', array['house']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000019', 'A1', 'House & Furniture', 'Cômodos da casa, móveis, eletrodomésticos e vocabulário de moradia.', 10, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000091', '10000000-0000-0000-0000-000000000019', 'Rooms of the House', 1, 10),
('20000000-0000-0000-0000-000000000092', '10000000-0000-0000-0000-000000000019', 'Furniture', 2, 10),
('20000000-0000-0000-0000-000000000093', '10000000-0000-0000-0000-000000000019', 'Appliances', 3, 10),
('20000000-0000-0000-0000-000000000094', '10000000-0000-0000-0000-000000000019', 'Home Life', 4, 10),
('20000000-0000-0000-0000-000000000095', '10000000-0000-0000-0000-000000000019', 'My House (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 10.1: Rooms of the House ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000091', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000543"}'),
('20000000-0000-0000-0000-000000000091', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000545"}'),
('20000000-0000-0000-0000-000000000091', 'multiple_choice', 3, '{"question": "Complete: We watch TV in the ___.", "audio_text": null, "options": ["living room", "bathroom", "garage"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000091', 'fill_blank', 4, '{"sentence": "My apartment is on the third ___.", "options": ["floor", "wall", "stairs"], "correct": "floor", "translation": "Meu apartamento é no terceiro andar."}'),
('20000000-0000-0000-0000-000000000091', 'matching', 5, '{"pairs": [{"left": "kitchen", "right": "cozinha"}, {"left": "bedroom", "right": "quarto"}, {"left": "bathroom", "right": "banheiro"}, {"left": "garden", "right": "jardim"}]}'),
('20000000-0000-0000-0000-000000000091', 'word_order', 6, '{"words": ["upstairs", "is", "bedroom", "My"], "correct_sentence": "My bedroom is upstairs", "translation": "Meu quarto é no andar de cima"}'),
('20000000-0000-0000-0000-000000000091', 'listening', 7, '{"audio_text": "The bathroom is next to the bedroom, and the kitchen is downstairs.", "question": "Where is the bathroom?", "options": ["next to the bedroom", "in the garage", "in the garden"], "correct_index": 0}');

-- ---------- Lição 10.2: Furniture ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000092', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000554"}'),
('20000000-0000-0000-0000-000000000092', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000557"}'),
('20000000-0000-0000-0000-000000000092', 'multiple_choice', 3, '{"question": "Complete: We sit on the ___ to watch TV.", "audio_text": null, "options": ["sofa", "shelf", "wardrobe"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000092', 'fill_blank', 4, '{"sentence": "The books are on the ___.", "options": ["shelf", "mirror", "lamp"], "correct": "shelf", "translation": "Os livros estão na prateleira."}'),
('20000000-0000-0000-0000-000000000092', 'matching', 5, '{"pairs": [{"left": "table", "right": "mesa"}, {"left": "chair", "right": "cadeira"}, {"left": "bed", "right": "cama"}, {"left": "wardrobe", "right": "guarda-roupa"}]}'),
('20000000-0000-0000-0000-000000000092', 'word_order', 6, '{"words": ["four", "There", "chairs", "are"], "correct_sentence": "There are four chairs", "translation": "Há quatro cadeiras"}'),
('20000000-0000-0000-0000-000000000092', 'dictation', 7, '{"audio_text": "My clothes are in the wardrobe, and there is a mirror on the wall.", "expected": "My clothes are in the wardrobe, and there is a mirror on the wall."}');

-- ---------- Lição 10.3: Appliances ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000093', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000562"}'),
('20000000-0000-0000-0000-000000000093', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000565"}'),
('20000000-0000-0000-0000-000000000093', 'multiple_choice', 3, '{"question": "Complete: The milk is in the ___.", "audio_text": null, "options": ["fridge", "oven", "stove"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000093', 'fill_blank', 4, '{"sentence": "The pizza is in the ___.", "options": ["oven", "fridge", "shelf"], "correct": "oven", "translation": "A pizza está no forno."}'),
('20000000-0000-0000-0000-000000000093', 'matching', 5, '{"pairs": [{"left": "fridge", "right": "geladeira"}, {"left": "stove", "right": "fogão"}, {"left": "oven", "right": "forno"}, {"left": "washing machine", "right": "máquina de lavar"}]}'),
('20000000-0000-0000-0000-000000000093', 'word_order', 6, '{"words": ["broken", "machine", "washing", "The", "is"], "correct_sentence": "The washing machine is broken", "translation": "A máquina de lavar está quebrada"}'),
('20000000-0000-0000-0000-000000000093', 'listening', 7, '{"audio_text": "She is cooking on the stove while the oven is heating up.", "question": "What is she doing?", "options": ["cooking on the stove", "washing clothes", "cleaning the fridge"], "correct_index": 0}');

-- ---------- Lição 10.4: Home Life ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000094', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000566"}'),
('20000000-0000-0000-0000-000000000094', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000568"}'),
('20000000-0000-0000-0000-000000000094', 'multiple_choice', 3, '{"question": "Complete: I ___ my room every week.", "audio_text": null, "options": ["clean", "rent", "move"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000094', 'fill_blank', 4, '{"sentence": "They ___ an apartment downtown.", "options": ["rent", "clean", "move"], "correct": "rent", "translation": "Eles alugam um apartamento no centro."}'),
('20000000-0000-0000-0000-000000000094', 'matching', 5, '{"pairs": [{"left": "to clean", "right": "limpar"}, {"left": "to move (house)", "right": "se mudar"}, {"left": "to rent", "right": "alugar"}, {"left": "neighbor", "right": "vizinho"}]}'),
('20000000-0000-0000-0000-000000000094', 'word_order', 6, '{"words": ["friendly", "is", "very", "My", "neighbor"], "correct_sentence": "My neighbor is very friendly", "translation": "Meu vizinho é muito simpático"}'),
('20000000-0000-0000-0000-000000000094', 'typing', 7, '{"prompt_pt": "Traduza: ''Qual é o seu endereço?''", "expected": "What is your address?", "ai_review": true}');

-- ---------- Lição 10.5: My House (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000095', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000000542"}'),
('20000000-0000-0000-0000-000000000095', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000000552"}'),
('20000000-0000-0000-0000-000000000095', 'multiple_choice', 3, '{"question": "Complete: We are ___ to a new house.", "audio_text": null, "options": ["moving", "renting", "cleaning"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000095', 'fill_blank', 4, '{"sentence": "The car is in the ___.", "options": ["garage", "garden", "living room"], "correct": "garage", "translation": "O carro está na garagem."}'),
('20000000-0000-0000-0000-000000000095', 'matching', 5, '{"pairs": [{"left": "house", "right": "casa"}, {"left": "window", "right": "janela"}, {"left": "door", "right": "porta"}, {"left": "address", "right": "endereço"}]}'),
('20000000-0000-0000-0000-000000000095', 'word_order', 6, '{"words": ["window", "please", "the", "Open"], "correct_sentence": "Open the window please", "translation": "Abra a janela, por favor"}'),
('20000000-0000-0000-0000-000000000095', 'listening', 7, '{"audio_text": "Be careful on the stairs, and please close the door.", "question": "What should you be careful with?", "options": ["the stairs", "the door", "the window"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000095', 'typing', 8, '{"prompt_pt": "Traduza: ''Nós temos um jardim pequeno.''", "expected": "We have a small garden.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED
-- Total: 30 vocabulário | 1 módulo | 5 lições | 36 exercícios
-- ============================================================================

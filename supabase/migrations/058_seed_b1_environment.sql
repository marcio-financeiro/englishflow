-- ============================================================
-- Migration 058: Conteúdo B1 — Módulo 17 "Meio Ambiente e Sustentabilidade"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-057)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001381', 'environment', '/ɪnˈvaɪrənmənt/', 'noun', 'meio ambiente', 'We need to protect the environment.', 'Precisamos proteger o meio ambiente.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001382', 'pollution', '/pəˈluːʃən/', 'noun', 'poluição', 'Air pollution is a big problem in cities.', 'A poluição do ar é um grande problema nas cidades.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001383', 'climate change', '/ˈklaɪmət tʃeɪndʒ/', 'noun', 'mudança climática', 'Climate change affects the whole planet.', 'A mudança climática afeta o planeta todo.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001384', 'recycle', '/riːˈsaɪkəl/', 'verb', 'reciclar', 'We recycle paper, glass, and plastic at home.', 'Reciclamos papel, vidro e plástico em casa.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001385', 'reduce', '/rɪˈdjuːs/', 'verb', 'reduzir', 'We should reduce the amount of waste we produce.', 'Deveríamos reduzir a quantidade de lixo que produzimos.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001386', 'reuse', '/riːˈjuːz/', 'verb', 'reutilizar', 'Try to reuse bags instead of buying new ones.', 'Tente reutilizar sacolas em vez de comprar novas.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001387', 'renewable', '/rɪˈnuːəbəl/', 'adjective', 'renovável', 'Renewable energy comes from the sun and the wind.', 'Energia renovável vem do sol e do vento.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001388', 'sustainable', '/səˈsteɪnəbəl/', 'adjective', 'sustentável', 'The company adopted more sustainable practices.', 'A empresa adotou práticas mais sustentáveis.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001389', 'waste', '/weɪst/', 'noun', 'lixo, desperdício', 'A lot of food waste ends up in landfills.', 'Muito desperdício de comida acaba em aterros.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001390', 'plastic', '/ˈplæstɪk/', 'noun', 'plástico', 'Plastic takes hundreds of years to decompose.', 'O plástico leva centenas de anos para se decompor.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001391', 'greenhouse gas', '/ˈɡriːnhaʊs ɡæs/', 'noun', 'gás do efeito estufa', 'Greenhouse gases trap heat in the atmosphere.', 'Os gases do efeito estufa retêm calor na atmosfera.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001392', 'global warming', '/ˈɡloʊbəl ˈwɔːrmɪŋ/', 'noun', 'aquecimento global', 'Global warming is raising sea levels.', 'O aquecimento global está elevando o nível do mar.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001393', 'carbon footprint', '/ˈkɑːrbən ˈfʊtprɪnt/', 'noun', 'pegada de carbono', 'Flying often increases your carbon footprint.', 'Voar com frequência aumenta sua pegada de carbono.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001394', 'endangered', '/ɪnˈdeɪndʒərd/', 'adjective', 'ameaçado de extinção', 'Tigers are an endangered species.', 'Os tigres são uma espécie ameaçada de extinção.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001395', 'extinct', '/ɪkˈstɪŋkt/', 'adjective', 'extinto', 'That species became extinct many years ago.', 'Aquela espécie se tornou extinta há muitos anos.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001396', 'conservation', '/ˌkɒnsərˈveɪʃən/', 'noun', 'conservação', 'The park focuses on wildlife conservation.', 'O parque se concentra na conservação da vida selvagem.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001397', 'wildlife', '/ˈwaɪldlaɪf/', 'noun', 'vida selvagem', 'The reserve protects local wildlife.', 'A reserva protege a vida selvagem local.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001398', 'deforestation', '/diːˌfɒrɪˈsteɪʃən/', 'noun', 'desmatamento', 'Deforestation destroys the habitat of many animals.', 'O desmatamento destrói o habitat de muitos animais.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001399', 'ecosystem', '/ˈiːkoʊsɪstəm/', 'noun', 'ecossistema', 'Every plant plays a role in the ecosystem.', 'Cada planta tem um papel no ecossistema.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001400', 'natural resources', '/ˈnætʃərəl rɪˈsɔːrsɪz/', 'noun', 'recursos naturais', 'We must use natural resources responsibly.', 'Devemos usar os recursos naturais com responsabilidade.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001401', 'solar energy', '/ˈsoʊlər ˈenərdʒi/', 'noun', 'energia solar', 'Solar energy is becoming cheaper every year.', 'A energia solar está ficando mais barata a cada ano.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001402', 'wind energy', '/wɪnd ˈenərdʒi/', 'noun', 'energia eólica', 'Wind energy is common in coastal areas.', 'A energia eólica é comum em áreas litorâneas.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001403', 'fossil fuels', '/ˈfɒsəl fjuːəlz/', 'noun', 'combustíveis fósseis', 'Fossil fuels release a lot of carbon dioxide.', 'Combustíveis fósseis liberam muito dióxido de carbono.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001404', 'emission', '/ɪˈmɪʃən/', 'noun', 'emissão', 'The city wants to cut carbon emissions in half.', 'A cidade quer cortar as emissões de carbono pela metade.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001405', 'eco-friendly', '/ˈiːkoʊ ˈfrendli/', 'adjective', 'ecológico, sustentável', 'They only sell eco-friendly products.', 'Eles só vendem produtos ecológicos.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001406', 'organic', '/ɔːrˈɡænɪk/', 'adjective', 'orgânico', 'We buy organic vegetables at the market.', 'Compramos verduras orgânicas na feira.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001407', 'litter', '/ˈlɪtər/', 'noun', 'lixo jogado no chão', 'Please don''t leave litter on the beach.', 'Por favor, não deixe lixo na praia.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001408', 'contaminate', '/kənˈtæmɪneɪt/', 'verb', 'contaminar', 'Chemicals can contaminate the water supply.', 'Produtos químicos podem contaminar o abastecimento de água.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001409', 'protect', '/prəˈtekt/', 'verb', 'proteger', 'It is our duty to protect endangered species.', 'É nosso dever proteger espécies ameaçadas.', 'B1', array['environment']),
('30000000-0000-0000-0000-000000001410', 'threat', '/θret/', 'noun', 'ameaça', 'Deforestation is a serious threat to wildlife.', 'O desmatamento é uma séria ameaça à vida selvagem.', 'B1', array['environment']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000047', 'B1', 'Meio Ambiente e Sustentabilidade', 'Amplie seu vocabulário sobre meio ambiente, energia renovável, mudanças climáticas e conservação da natureza.', 17, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000231', '10000000-0000-0000-0000-000000000047', 'Meio ambiente básico', 1, 20),
('20000000-0000-0000-0000-000000000232', '10000000-0000-0000-0000-000000000047', 'Energia e sustentabilidade', 2, 20),
('20000000-0000-0000-0000-000000000233', '10000000-0000-0000-0000-000000000047', 'Aquecimento global', 3, 20),
('20000000-0000-0000-0000-000000000234', '10000000-0000-0000-0000-000000000047', 'Vida selvagem e conservação', 4, 20),
('20000000-0000-0000-0000-000000000235', '10000000-0000-0000-0000-000000000047', 'Revisão: agindo pelo planeta', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 231: Meio ambiente básico (environment, pollution, climate change, recycle, reduce, reuse)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000231', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001381", "show_image": false}'),
('20000000-0000-0000-0000-000000000231', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001382", "show_image": false}'),
('20000000-0000-0000-0000-000000000231', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001384", "show_image": false}'),
('20000000-0000-0000-0000-000000000231', 'multiple_choice', 4, '{"question": "Air ___ is a big problem in cities.", "audio_text": null, "options": ["pollution", "recycle", "waste"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000231', 'multiple_choice', 5, '{"question": "What does ''recycle'' mean?", "audio_text": null, "options": ["Reciclar", "Reduzir", "Poluir"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000231', 'matching', 6, '{"pairs": [{"left": "environment", "right": "meio ambiente"}, {"left": "pollution", "right": "poluição"}, {"left": "climate change", "right": "mudança climática"}, {"left": "recycle", "right": "reciclar"}, {"left": "reduce", "right": "reduzir"}, {"left": "reuse", "right": "reutilizar"}]}'),
('20000000-0000-0000-0000-000000000231', 'fill_blank', 7, '{"sentence": "We need to ___ the environment.", "options": ["protect", "contaminate", "waste"], "correct": "protect", "translation": "Precisamos proteger o meio ambiente."}'),
('20000000-0000-0000-0000-000000000231', 'fill_blank', 8, '{"sentence": "Try to ___ bags instead of buying new ones.", "options": ["reuse", "reduce", "recycle"], "correct": "reuse", "translation": "Tente reutilizar sacolas em vez de comprar novas."}'),
('20000000-0000-0000-0000-000000000231', 'word_order', 9, '{"words": ["We", "recycle", "paper", "glass", "and", "plastic"], "correct_sentence": "We recycle paper glass and plastic", "translation": "Reciclamos papel, vidro e plástico"}'),
('20000000-0000-0000-0000-000000000231', 'word_order', 10, '{"words": ["Climate", "change", "affects", "the", "whole", "planet"], "correct_sentence": "Climate change affects the whole planet", "translation": "A mudança climática afeta o planeta todo"}'),
('20000000-0000-0000-0000-000000000231', 'reading', 11, '{"passage": "Protecting the environment starts with small actions. We can recycle paper and plastic, reduce the amount of waste we produce, and reuse things instead of throwing them away. These habits help fight pollution and slow down climate change.", "translation": "Proteger o meio ambiente começa com pequenas ações. Podemos reciclar papel e plástico, reduzir a quantidade de lixo que produzimos e reutilizar coisas em vez de jogá-las fora. Esses hábitos ajudam a combater a poluição e desacelerar a mudança climática.", "question": "What three habits does the text mention?", "options": ["Recycle, reduce, reuse", "Buy, sell, waste", "Drive, fly, pollute"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000231', 'listening', 12, '{"audio_text": "We need to protect the environment. Air pollution is a big problem, and climate change affects the whole planet.", "question": "What is a big problem in cities, according to the audio?", "options": ["Recycling", "Air pollution", "Reusing bags"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000231', 'dictation', 13, '{"audio_text": "We need to protect the environment.", "expected": "We need to protect the environment."}'),
('20000000-0000-0000-0000-000000000231', 'typing', 14, '{"prompt_pt": "Traduza: ''Precisamos reduzir a poluição e reciclar mais.''", "expected": "We need to reduce pollution and recycle more.", "ai_review": true}'),

-- Lição 232: Energia e sustentabilidade (renewable, sustainable, solar energy, wind energy, fossil fuels, eco-friendly)
('20000000-0000-0000-0000-000000000232', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001387", "show_image": false}'),
('20000000-0000-0000-0000-000000000232', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001401", "show_image": false}'),
('20000000-0000-0000-0000-000000000232', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001403", "show_image": false}'),
('20000000-0000-0000-0000-000000000232', 'multiple_choice', 4, '{"question": "___ energy comes from the sun and the wind.", "audio_text": null, "options": ["Renewable", "Fossil", "Wasted"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000232', 'multiple_choice', 5, '{"question": "What does ''sustainable'' mean?", "audio_text": null, "options": ["Sustentável", "Poluente", "Extinto"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000232', 'matching', 6, '{"pairs": [{"left": "renewable", "right": "renovável"}, {"left": "sustainable", "right": "sustentável"}, {"left": "solar energy", "right": "energia solar"}, {"left": "wind energy", "right": "energia eólica"}, {"left": "fossil fuels", "right": "combustíveis fósseis"}, {"left": "eco-friendly", "right": "ecológico"}]}'),
('20000000-0000-0000-0000-000000000232', 'fill_blank', 7, '{"sentence": "They only sell ___ products.", "options": ["eco-friendly", "fossil", "wasted"], "correct": "eco-friendly", "translation": "Eles só vendem produtos ecológicos."}'),
('20000000-0000-0000-0000-000000000232', 'fill_blank', 8, '{"sentence": "___ energy is common in coastal areas.", "options": ["Wind", "Fossil", "Plastic"], "correct": "Wind", "translation": "A energia eólica é comum em áreas litorâneas."}'),
('20000000-0000-0000-0000-000000000232', 'word_order', 9, '{"words": ["Solar", "energy", "is", "becoming", "cheaper", "every", "year"], "correct_sentence": "Solar energy is becoming cheaper every year", "translation": "A energia solar está ficando mais barata a cada ano"}'),
('20000000-0000-0000-0000-000000000232', 'word_order', 10, '{"words": ["The", "company", "adopted", "more", "sustainable", "practices"], "correct_sentence": "The company adopted more sustainable practices", "translation": "A empresa adotou práticas mais sustentáveis"}'),
('20000000-0000-0000-0000-000000000232', 'reading', 11, '{"passage": "More countries are investing in renewable energy, like solar and wind energy, instead of fossil fuels. Choosing eco-friendly products and supporting sustainable companies are simple ways for individuals to make a difference.", "translation": "Mais países estão investindo em energia renovável, como energia solar e eólica, em vez de combustíveis fósseis. Escolher produtos ecológicos e apoiar empresas sustentáveis são formas simples de indivíduos fazerem a diferença.", "question": "What are countries investing in instead of fossil fuels?", "options": ["Plastic production", "Renewable energy", "Deforestation"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000232', 'listening', 12, '{"audio_text": "Renewable energy comes from the sun and the wind. Solar energy is becoming cheaper. The company adopted more sustainable practices.", "question": "What is becoming cheaper, according to the audio?", "options": ["Fossil fuels", "Solar energy", "Plastic"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000232', 'dictation', 13, '{"audio_text": "Renewable energy comes from the sun and the wind.", "expected": "Renewable energy comes from the sun and the wind."}'),
('20000000-0000-0000-0000-000000000232', 'typing', 14, '{"prompt_pt": "Traduza: ''Energia solar e eólica são mais sustentáveis que combustíveis fósseis.''", "expected": "Solar and wind energy are more sustainable than fossil fuels.", "ai_review": true}'),

-- Lição 233: Aquecimento global (greenhouse gas, global warming, carbon footprint, emission, waste, plastic)
('20000000-0000-0000-0000-000000000233', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001391", "show_image": false}'),
('20000000-0000-0000-0000-000000000233', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001392", "show_image": false}'),
('20000000-0000-0000-0000-000000000233', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001393", "show_image": false}'),
('20000000-0000-0000-0000-000000000233', 'multiple_choice', 4, '{"question": "___ is raising sea levels around the world.", "audio_text": null, "options": ["Global warming", "Recycling", "Conservation"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000233', 'multiple_choice', 5, '{"question": "What does ''emission'' mean?", "audio_text": null, "options": ["Emissão", "Conservação", "Reciclagem"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000233', 'matching', 6, '{"pairs": [{"left": "greenhouse gas", "right": "gás do efeito estufa"}, {"left": "global warming", "right": "aquecimento global"}, {"left": "carbon footprint", "right": "pegada de carbono"}, {"left": "emission", "right": "emissão"}, {"left": "waste", "right": "lixo, desperdício"}, {"left": "plastic", "right": "plástico"}]}'),
('20000000-0000-0000-0000-000000000233', 'fill_blank', 7, '{"sentence": "Flying often increases your carbon ___.", "options": ["footprint", "emission", "waste"], "correct": "footprint", "translation": "Voar com frequência aumenta sua pegada de carbono."}'),
('20000000-0000-0000-0000-000000000233', 'fill_blank', 8, '{"sentence": "___ takes hundreds of years to decompose.", "options": ["Plastic", "Waste", "Gas"], "correct": "Plastic", "translation": "O plástico leva centenas de anos para se decompor."}'),
('20000000-0000-0000-0000-000000000233', 'word_order', 9, '{"words": ["Greenhouse", "gases", "trap", "heat", "in", "the", "atmosphere"], "correct_sentence": "Greenhouse gases trap heat in the atmosphere", "translation": "Os gases do efeito estufa retêm calor na atmosfera"}'),
('20000000-0000-0000-0000-000000000233', 'word_order', 10, '{"words": ["The", "city", "wants", "to", "cut", "carbon", "emissions"], "correct_sentence": "The city wants to cut carbon emissions", "translation": "A cidade quer cortar as emissões de carbono"}'),
('20000000-0000-0000-0000-000000000233', 'reading', 11, '{"passage": "Greenhouse gases trap heat in the atmosphere, causing global warming. Every flight, car trip, and piece of plastic waste adds to a person''s carbon footprint. Cities around the world are now trying to cut emissions and reduce waste.", "translation": "Os gases do efeito estufa retêm calor na atmosfera, causando o aquecimento global. Cada voo, viagem de carro e pedaço de lixo plástico contribui para a pegada de carbono de uma pessoa. Cidades ao redor do mundo estão tentando cortar emissões e reduzir o lixo.", "question": "What are greenhouse gases causing, according to the text?", "options": ["Deforestation", "Global warming", "Recycling programs"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000233', 'listening', 12, '{"audio_text": "Greenhouse gases trap heat, causing global warming. Cities are trying to cut carbon emissions and reduce plastic waste.", "question": "What are cities trying to cut, according to the audio?", "options": ["Recycling programs", "Carbon emissions", "Solar energy use"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000233', 'dictation', 13, '{"audio_text": "Global warming is raising sea levels.", "expected": "Global warming is raising sea levels."}'),
('20000000-0000-0000-0000-000000000233', 'typing', 14, '{"prompt_pt": "Traduza: ''Precisamos reduzir as emissões para combater o aquecimento global.''", "expected": "We need to reduce emissions to fight global warming.", "ai_review": true}'),

-- Lição 234: Vida selvagem e conservação (endangered, extinct, conservation, wildlife, deforestation, ecosystem)
('20000000-0000-0000-0000-000000000234', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001394", "show_image": false}'),
('20000000-0000-0000-0000-000000000234', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001397", "show_image": false}'),
('20000000-0000-0000-0000-000000000234', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001399", "show_image": false}'),
('20000000-0000-0000-0000-000000000234', 'multiple_choice', 4, '{"question": "Tigers are an ___ species.", "audio_text": null, "options": ["endangered", "extinct", "renewable"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000234', 'multiple_choice', 5, '{"question": "What does ''deforestation'' mean?", "audio_text": null, "options": ["Desmatamento", "Conservação", "Poluição"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000234', 'matching', 6, '{"pairs": [{"left": "endangered", "right": "ameaçado de extinção"}, {"left": "extinct", "right": "extinto"}, {"left": "conservation", "right": "conservação"}, {"left": "wildlife", "right": "vida selvagem"}, {"left": "deforestation", "right": "desmatamento"}, {"left": "ecosystem", "right": "ecossistema"}]}'),
('20000000-0000-0000-0000-000000000234', 'fill_blank', 7, '{"sentence": "The park focuses on wildlife ___.", "options": ["conservation", "deforestation", "pollution"], "correct": "conservation", "translation": "O parque se concentra na conservação da vida selvagem."}'),
('20000000-0000-0000-0000-000000000234', 'fill_blank', 8, '{"sentence": "That species became ___ many years ago.", "options": ["extinct", "endangered", "sustainable"], "correct": "extinct", "translation": "Aquela espécie se tornou extinta há muitos anos."}'),
('20000000-0000-0000-0000-000000000234', 'word_order', 9, '{"words": ["Deforestation", "destroys", "the", "habitat", "of", "many", "animals"], "correct_sentence": "Deforestation destroys the habitat of many animals", "translation": "O desmatamento destrói o habitat de muitos animais"}'),
('20000000-0000-0000-0000-000000000234', 'word_order', 10, '{"words": ["Every", "plant", "plays", "a", "role", "in", "the", "ecosystem"], "correct_sentence": "Every plant plays a role in the ecosystem", "translation": "Cada planta tem um papel no ecossistema"}'),
('20000000-0000-0000-0000-000000000234', 'reading', 11, '{"passage": "Deforestation is one of the biggest threats to wildlife because it destroys entire ecosystems. Many animals become endangered, and some eventually go extinct. Conservation programs try to protect these species before it is too late.", "translation": "O desmatamento é uma das maiores ameaças à vida selvagem porque destrói ecossistemas inteiros. Muitos animais ficam ameaçados de extinção, e alguns eventualmente se tornam extintos. Programas de conservação tentam proteger essas espécies antes que seja tarde demais.", "question": "What do conservation programs try to do?", "options": ["Cause deforestation", "Protect endangered species", "Increase pollution"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000234', 'listening', 12, '{"audio_text": "Deforestation destroys ecosystems. Many animals become endangered, and some go extinct. Conservation programs try to protect these species.", "question": "What happens to some animals eventually, according to the audio?", "options": ["They become extinct", "They become sustainable", "They become renewable"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000234', 'dictation', 13, '{"audio_text": "Deforestation destroys the habitat of many animals.", "expected": "Deforestation destroys the habitat of many animals."}'),
('20000000-0000-0000-0000-000000000234', 'typing', 14, '{"prompt_pt": "Traduza: ''O desmatamento ameaça o ecossistema e a vida selvagem.''", "expected": "Deforestation threatens the ecosystem and wildlife.", "ai_review": true}'),

-- Lição 235: Revisão + agindo pelo planeta (natural resources, organic, litter, contaminate, protect, threat)
('20000000-0000-0000-0000-000000000235', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001400", "show_image": false}'),
('20000000-0000-0000-0000-000000000235', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001409", "show_image": false}'),
('20000000-0000-0000-0000-000000000235', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001410", "show_image": false}'),
('20000000-0000-0000-0000-000000000235', 'multiple_choice', 4, '{"question": "We must use ___ responsibly, like water and forests.", "audio_text": null, "options": ["natural resources", "litter", "emissions"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000235', 'multiple_choice', 5, '{"question": "What does ''contaminate'' mean?", "audio_text": null, "options": ["Contaminar", "Proteger", "Reduzir"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000235', 'matching', 6, '{"pairs": [{"left": "natural resources", "right": "recursos naturais"}, {"left": "organic", "right": "orgânico"}, {"left": "litter", "right": "lixo jogado no chão"}, {"left": "contaminate", "right": "contaminar"}, {"left": "protect", "right": "proteger"}, {"left": "threat", "right": "ameaça"}]}'),
('20000000-0000-0000-0000-000000000235', 'fill_blank', 7, '{"sentence": "Please don''t leave ___ on the beach.", "options": ["litter", "organic", "energy"], "correct": "litter", "translation": "Por favor, não deixe lixo na praia."}'),
('20000000-0000-0000-0000-000000000235', 'fill_blank', 8, '{"sentence": "Chemicals can ___ the water supply.", "options": ["contaminate", "protect", "recycle"], "correct": "contaminate", "translation": "Produtos químicos podem contaminar o abastecimento de água."}'),
('20000000-0000-0000-0000-000000000235', 'word_order', 9, '{"words": ["We", "buy", "organic", "vegetables", "at", "the", "market"], "correct_sentence": "We buy organic vegetables at the market", "translation": "Compramos verduras orgânicas na feira"}'),
('20000000-0000-0000-0000-000000000235', 'word_order', 10, '{"words": ["It", "is", "our", "duty", "to", "protect", "endangered", "species"], "correct_sentence": "It is our duty to protect endangered species", "translation": "É nosso dever proteger espécies ameaçadas"}'),
('20000000-0000-0000-0000-000000000235', 'reading', 11, '{"passage": "Protecting the planet means using natural resources responsibly, choosing organic food when possible, and never leaving litter behind. Pollution can contaminate rivers and soil, creating a serious threat to both wildlife and people. Small daily choices can make a real difference.", "translation": "Proteger o planeta significa usar recursos naturais com responsabilidade, escolher alimentos orgânicos quando possível e nunca deixar lixo pelo caminho. A poluição pode contaminar rios e solo, criando uma séria ameaça tanto para a vida selvagem quanto para as pessoas. Pequenas escolhas diárias podem fazer uma diferença real.", "question": "What can pollution do to rivers and soil, according to the text?", "options": ["Protect them", "Contaminate them", "Recycle them"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000235', 'listening', 12, '{"audio_text": "We must use natural resources responsibly. Pollution can contaminate rivers and soil, creating a serious threat to wildlife.", "question": "What creates a serious threat to wildlife, according to the audio?", "options": ["Organic food", "Pollution", "Conservation programs"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000235', 'dictation', 13, '{"audio_text": "It is our duty to protect endangered species.", "expected": "It is our duty to protect endangered species."}'),
('20000000-0000-0000-0000-000000000235', 'typing', 14, '{"prompt_pt": "Traduza: ''A poluição é uma ameaça séria e pode contaminar os recursos naturais.''", "expected": "Pollution is a serious threat and can contaminate natural resources.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000235', 'typing', 15, '{"prompt_pt": "Traduza: ''Precisamos proteger o meio ambiente antes que seja tarde demais.''", "expected": "We need to protect the environment before it is too late.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

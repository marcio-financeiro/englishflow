-- ============================================================
-- Migration 068: Conteúdo B2 — Módulo 7 "Cleft Sentences (Cláusulas de Ênfase)"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos anteriores (042-067)
-- Continua "Ênfase e Inversão": It is/was...who/that..., What...is/was...
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B2')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001681', 'focus', '/ˈfoʊkəs/', 'noun', 'foco', 'The focus of the meeting was the new budget.', 'O foco da reunião foi o novo orçamento.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001682', 'pinpoint', '/ˈpɪnpɔɪnt/', 'verb', 'identificar com precisão', 'It was hard to pinpoint the exact cause.', 'Foi difícil identificar com precisão a causa exata.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001683', 'crucial', '/ˈkruːʃəl/', 'adjective', 'crucial', 'Trust is crucial in any relationship.', 'Confiança é crucial em qualquer relacionamento.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001684', 'essential', '/ɪˈsenʃəl/', 'adjective', 'essencial', 'Practice is essential for learning a language.', 'A prática é essencial para aprender um idioma.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001685', 'priority', '/praɪˈɒrəti/', 'noun', 'prioridade', 'Safety is our top priority.', 'Segurança é nossa principal prioridade.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001686', 'matter', '/ˈmætər/', 'verb', 'importar', 'What really matters is the effort you put in.', 'O que realmente importa é o esforço que você dedica.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001687', 'significant', '/sɪɡˈnɪfɪkənt/', 'adjective', 'significativo', 'It was a significant improvement over last year.', 'Foi uma melhora significativa em relação ao ano passado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001688', 'genuine', '/ˈdʒenjuɪn/', 'adjective', 'genuíno, verdadeiro', 'Her genuine interest surprised everyone.', 'O interesse genuíno dela surpreendeu todo mundo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001689', 'underlying', '/ˌʌndərˈlaɪɪŋ/', 'adjective', 'subjacente', 'The underlying issue was never discussed.', 'A questão subjacente nunca foi discutida.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001690', 'root cause', '/ruːt kɔːz/', 'noun', 'causa raiz', 'They finally found the root cause of the problem.', 'Eles finalmente encontraram a causa raiz do problema.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001691', 'key factor', '/kiː ˈfæktər/', 'noun', 'fator-chave', 'Communication was the key factor in their success.', 'A comunicação foi o fator-chave para o sucesso deles.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001692', 'driving force', '/ˈdraɪvɪŋ fɔːrs/', 'noun', 'força motriz', 'Passion was the driving force behind the project.', 'A paixão foi a força motriz por trás do projeto.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001693', 'spotlight', '/ˈspɒtlaɪt/', 'noun', 'destaque, holofote', 'The award put her in the spotlight.', 'O prêmio a colocou em destaque.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001694', 'attention', '/əˈtenʃən/', 'noun', 'atenção', 'The report needs your full attention.', 'O relatório precisa da sua total atenção.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001695', 'credit', '/ˈkredɪt/', 'noun', 'crédito, mérito', 'She deserves all the credit for this success.', 'Ela merece todo o crédito por esse sucesso.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001696', 'praise', '/preɪz/', 'verb', 'elogiar', 'The manager praised the whole team.', 'O gerente elogiou toda a equipe.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001697', 'accomplishment', '/əˈkɒmplɪʃmənt/', 'noun', 'realização', 'Finishing the marathon was a huge accomplishment.', 'Terminar a maratona foi uma grande realização.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001698', 'contribution', '/ˌkɒntrɪˈbjuːʃən/', 'noun', 'contribuição', 'Her contribution to the project was invaluable.', 'A contribuição dela para o projeto foi inestimável.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001699', 'impact', '/ˈɪmpækt/', 'noun', 'impacto', 'The new policy had a big impact on sales.', 'A nova política teve um grande impacto nas vendas.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001700', 'influence', '/ˈɪnfluəns/', 'noun', 'influência', 'His influence on the team was clear.', 'A influência dele na equipe era clara.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001701', 'difference', '/ˈdɪfərəns/', 'noun', 'diferença', 'One small change made a huge difference.', 'Uma pequena mudança fez uma diferença enorme.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001702', 'distinction', '/dɪˈstɪŋkʃən/', 'noun', 'distinção', 'There is an important distinction between the two ideas.', 'Há uma distinção importante entre as duas ideias.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001703', 'clarity', '/ˈklærəti/', 'noun', 'clareza', 'She explained the plan with great clarity.', 'Ela explicou o plano com muita clareza.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001704', 'precisely', '/prɪˈsaɪsli/', 'adverb', 'precisamente', 'That is precisely what I meant.', 'Isso é precisamente o que eu quis dizer.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001705', 'specifically', '/spəˈsɪfɪkli/', 'adverb', 'especificamente', 'She was talking specifically about the deadline.', 'Ela estava falando especificamente sobre o prazo.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001706', 'particular', '/pərˈtɪkjələr/', 'adjective', 'particular, específico', 'There is one particular detail worth mentioning.', 'Há um detalhe particular que vale a pena mencionar.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001707', 'concern', '/kənˈsɜːrn/', 'noun', 'preocupação', 'Her main concern was the tight deadline.', 'A principal preocupação dela era o prazo apertado.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001708', 'overlook', '/ˌoʊvərˈlʊk/', 'verb', 'ignorar, deixar passar', 'We can''t overlook this small but important detail.', 'Não podemos deixar passar esse detalhe pequeno mas importante.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001709', 'acknowledge', '/əkˈnɒlɪdʒ/', 'verb', 'reconhecer', 'It is important to acknowledge everyone''s effort.', 'É importante reconhecer o esforço de todos.', 'B2', array['grammar']),
('30000000-0000-0000-0000-000000001710', 'recognize', '/ˈrekəɡnaɪz/', 'verb', 'reconhecer', 'The company decided to recognize her achievements.', 'A empresa decidiu reconhecer as conquistas dela.', 'B2', array['grammar']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000057', 'B2', 'Cleft Sentences (Cláusulas de Ênfase)', 'Aprenda a dar ênfase a partes específicas de uma frase com cleft sentences: "It was... who/that..." e "What... is/was...". Continua "Ênfase e Inversão".', 7, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000281', '10000000-0000-0000-0000-000000000057', '''It is/was... who/that'' — introdução', 1, 20),
('20000000-0000-0000-0000-000000000282', '10000000-0000-0000-0000-000000000057', '''What... is/was'' — cláusulas com What', 2, 20),
('20000000-0000-0000-0000-000000000283', '10000000-0000-0000-0000-000000000057', 'Dando crédito e reconhecimento', 3, 20),
('20000000-0000-0000-0000-000000000284', '10000000-0000-0000-0000-000000000057', 'Impacto e diferença', 4, 20),
('20000000-0000-0000-0000-000000000285', '10000000-0000-0000-0000-000000000057', 'Revisão: dando ênfase com clareza', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 281: 'It is/was... who/that' — introdução (focus, pinpoint, crucial, essential, priority, matter)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000281', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001681", "show_image": false}'),
('20000000-0000-0000-0000-000000000281', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001683", "show_image": false}'),
('20000000-0000-0000-0000-000000000281', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001685", "show_image": false}'),
('20000000-0000-0000-0000-000000000281', 'multiple_choice', 4, '{"question": "It was ___ who solved the problem.", "audio_text": null, "options": ["Ana", "Ana did", "that Ana"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000281', 'multiple_choice', 5, '{"question": "What does ''pinpoint'' mean?", "audio_text": null, "options": ["Identificar com precisão", "Ignorar", "Elogiar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000281', 'matching', 6, '{"pairs": [{"left": "focus", "right": "foco"}, {"left": "pinpoint", "right": "identificar com precisão"}, {"left": "crucial", "right": "crucial"}, {"left": "essential", "right": "essencial"}, {"left": "priority", "right": "prioridade"}, {"left": "matter", "right": "importar"}]}'),
('20000000-0000-0000-0000-000000000281', 'fill_blank', 7, '{"sentence": "It was in 2020 ___ they moved to Brazil.", "options": ["that", "who", "what"], "correct": "that", "translation": "Foi em 2020 que eles se mudaram para o Brasil."}'),
('20000000-0000-0000-0000-000000000281', 'fill_blank', 8, '{"sentence": "Trust is ___ in any relationship.", "options": ["crucial", "particular", "genuine"], "correct": "crucial", "translation": "Confiança é crucial em qualquer relacionamento."}'),
('20000000-0000-0000-0000-000000000281', 'word_order', 9, '{"words": ["It", "was", "hard", "to", "pinpoint", "the", "exact", "cause"], "correct_sentence": "It was hard to pinpoint the exact cause", "translation": "Foi difícil identificar com precisão a causa exata"}'),
('20000000-0000-0000-0000-000000000281', 'word_order', 10, '{"words": ["Safety", "is", "our", "top", "priority"], "correct_sentence": "Safety is our top priority", "translation": "Segurança é nossa principal prioridade"}'),
('20000000-0000-0000-0000-000000000281', 'reading', 11, '{"passage": "Cleft sentences with ''It is/was... who/that...'' put the focus on one specific part of a sentence. For example, instead of saying ''Ana solved the problem'', we can say ''It was Ana who solved the problem'' to emphasize who did it. This is often used to pinpoint exactly what matters.", "translation": "Cleft sentences com ''It is/was... who/that...'' colocam o foco em uma parte específica de uma frase. Por exemplo, em vez de dizer ''Ana solved the problem'', podemos dizer ''It was Ana who solved the problem'' para enfatizar quem fez isso. Isso é frequentemente usado para identificar com precisão o que realmente importa.", "question": "What do cleft sentences with ''It was... who...'' do, according to the text?", "options": ["Hide information", "Put focus on a specific part", "Remove the subject"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000281', 'listening', 12, '{"audio_text": "It was Ana who solved the problem. Trust is crucial in any relationship. Safety is our top priority.", "question": "Who solved the problem, according to the audio?", "options": ["Ana", "The team", "It was not mentioned"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000281', 'dictation', 13, '{"audio_text": "It was Ana who solved the problem.", "expected": "It was Ana who solved the problem."}'),
('20000000-0000-0000-0000-000000000281', 'typing', 14, '{"prompt_pt": "Traduza usando cleft sentence: ''Foi o professor que explicou tudo.''", "expected": "It was the teacher who explained everything.", "ai_review": true}'),

-- Lição 282: 'What... is/was' (significant, genuine, underlying, root cause, key factor, driving force)
('20000000-0000-0000-0000-000000000282', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001687", "show_image": false}'),
('20000000-0000-0000-0000-000000000282', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001690", "show_image": false}'),
('20000000-0000-0000-0000-000000000282', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001692", "show_image": false}'),
('20000000-0000-0000-0000-000000000282', 'multiple_choice', 4, '{"question": "What really matters ___ your effort.", "audio_text": null, "options": ["is", "was that", "matters"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000282', 'multiple_choice', 5, '{"question": "What does ''driving force'' mean?", "audio_text": null, "options": ["Força motriz", "Causa raiz", "Prioridade"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000282', 'matching', 6, '{"pairs": [{"left": "significant", "right": "significativo"}, {"left": "genuine", "right": "genuíno"}, {"left": "underlying", "right": "subjacente"}, {"left": "root cause", "right": "causa raiz"}, {"left": "key factor", "right": "fator-chave"}, {"left": "driving force", "right": "força motriz"}]}'),
('20000000-0000-0000-0000-000000000282', 'fill_blank', 7, '{"sentence": "The ___ issue was never discussed.", "options": ["underlying", "genuine", "significant"], "correct": "underlying", "translation": "A questão subjacente nunca foi discutida."}'),
('20000000-0000-0000-0000-000000000282', 'fill_blank', 8, '{"sentence": "They finally found the ___ of the problem.", "options": ["root cause", "key factor", "focus"], "correct": "root cause", "translation": "Eles finalmente encontraram a causa raiz do problema."}'),
('20000000-0000-0000-0000-000000000282', 'word_order', 9, '{"words": ["It", "was", "a", "significant", "improvement", "over", "last", "year"], "correct_sentence": "It was a significant improvement over last year", "translation": "Foi uma melhora significativa em relação ao ano passado"}'),
('20000000-0000-0000-0000-000000000282', 'word_order', 10, '{"words": ["Passion", "was", "the", "driving", "force", "behind", "the", "project"], "correct_sentence": "Passion was the driving force behind the project", "translation": "A paixão foi a força motriz por trás do projeto"}'),
('20000000-0000-0000-0000-000000000282', 'reading', 11, '{"passage": "Another way to give emphasis is with ''What... is/was...''. Instead of saying ''Practice matters most'', we can say ''What matters most is practice''. This structure highlights the key factor or the underlying reason behind something, often the true driving force of a situation.", "translation": "Outra forma de dar ênfase é com ''What... is/was...''. Em vez de dizer ''Practice matters most'', podemos dizer ''What matters most is practice''. Essa estrutura destaca o fator-chave ou a razão subjacente por trás de algo, geralmente a verdadeira força motriz de uma situação.", "question": "What does ''What... is/was...'' highlight, according to the text?", "options": ["A random detail", "The key factor or underlying reason", "The grammar rule itself"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000282', 'listening', 12, '{"audio_text": "What really matters is the effort you put in. The underlying issue was never discussed. Passion was the driving force behind the project.", "question": "What really matters, according to the audio?", "options": ["The result", "The effort you put in", "The underlying issue"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000282', 'dictation', 13, '{"audio_text": "What really matters is the effort you put in.", "expected": "What really matters is the effort you put in."}'),
('20000000-0000-0000-0000-000000000282', 'typing', 14, '{"prompt_pt": "Traduza usando ''What... is'': ''O que importa é a qualidade, não a quantidade.''", "expected": "What matters is the quality, not the quantity.", "ai_review": true}'),

-- Lição 283: Dando crédito e reconhecimento (spotlight, attention, credit, praise, accomplishment, contribution)
('20000000-0000-0000-0000-000000000283', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001693", "show_image": false}'),
('20000000-0000-0000-0000-000000000283', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001695", "show_image": false}'),
('20000000-0000-0000-0000-000000000283', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001697", "show_image": false}'),
('20000000-0000-0000-0000-000000000283', 'multiple_choice', 4, '{"question": "She deserves all the ___ for this success.", "audio_text": null, "options": ["credit", "attention", "spotlight"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000283', 'multiple_choice', 5, '{"question": "What does ''praise'' mean as a verb?", "audio_text": null, "options": ["Elogiar", "Criticar", "Ignorar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000283', 'matching', 6, '{"pairs": [{"left": "spotlight", "right": "destaque"}, {"left": "attention", "right": "atenção"}, {"left": "credit", "right": "crédito, mérito"}, {"left": "praise", "right": "elogiar"}, {"left": "accomplishment", "right": "realização"}, {"left": "contribution", "right": "contribuição"}]}'),
('20000000-0000-0000-0000-000000000283', 'fill_blank', 7, '{"sentence": "The award put her in the ___.", "options": ["spotlight", "credit", "praise"], "correct": "spotlight", "translation": "O prêmio a colocou em destaque."}'),
('20000000-0000-0000-0000-000000000283', 'fill_blank', 8, '{"sentence": "Her ___ to the project was invaluable.", "options": ["contribution", "attention", "spotlight"], "correct": "contribution", "translation": "A contribuição dela para o projeto foi inestimável."}'),
('20000000-0000-0000-0000-000000000283', 'word_order', 9, '{"words": ["The", "manager", "praised", "the", "whole", "team"], "correct_sentence": "The manager praised the whole team", "translation": "O gerente elogiou toda a equipe"}'),
('20000000-0000-0000-0000-000000000283', 'word_order', 10, '{"words": ["Finishing", "the", "marathon", "was", "a", "huge", "accomplishment"], "correct_sentence": "Finishing the marathon was a huge accomplishment", "translation": "Terminar a maratona foi uma grande realização"}'),
('20000000-0000-0000-0000-000000000283', 'reading', 11, '{"passage": "It was her contribution that made the project a success, and it was the whole team that deserved the spotlight. Even though she received all the attention, she made sure to praise everyone for their accomplishments.", "translation": "Foi a contribuição dela que fez o projeto ser um sucesso, e foi a equipe toda que mereceu o destaque. Mesmo recebendo toda a atenção, ela fez questão de elogiar todo mundo por suas realizações.", "question": "What did she make sure to do, according to the text?", "options": ["Keep all the credit", "Praise everyone", "Avoid attention"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000283', 'listening', 12, '{"audio_text": "She deserves all the credit for this success. The manager praised the whole team. Finishing the marathon was a huge accomplishment.", "question": "Who deserves all the credit, according to the audio?", "options": ["The manager", "She", "The team"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000283', 'dictation', 13, '{"audio_text": "She deserves all the credit for this success.", "expected": "She deserves all the credit for this success."}'),
('20000000-0000-0000-0000-000000000283', 'typing', 14, '{"prompt_pt": "Traduza usando cleft sentence: ''Foi a equipe que mereceu todo o crédito.''", "expected": "It was the team that deserved all the credit.", "ai_review": true}'),

-- Lição 284: Impacto e diferença (impact, influence, difference, distinction, clarity, precisely)
('20000000-0000-0000-0000-000000000284', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001699", "show_image": false}'),
('20000000-0000-0000-0000-000000000284', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001701", "show_image": false}'),
('20000000-0000-0000-0000-000000000284', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001703", "show_image": false}'),
('20000000-0000-0000-0000-000000000284', 'multiple_choice', 4, '{"question": "One small change made a huge ___.", "audio_text": null, "options": ["difference", "distinction", "clarity"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000284', 'multiple_choice', 5, '{"question": "What does ''precisely'' mean?", "audio_text": null, "options": ["Precisamente", "Provavelmente", "Raramente"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000284', 'matching', 6, '{"pairs": [{"left": "impact", "right": "impacto"}, {"left": "influence", "right": "influência"}, {"left": "difference", "right": "diferença"}, {"left": "distinction", "right": "distinção"}, {"left": "clarity", "right": "clareza"}, {"left": "precisely", "right": "precisamente"}]}'),
('20000000-0000-0000-0000-000000000284', 'fill_blank', 7, '{"sentence": "His ___ on the team was clear.", "options": ["influence", "clarity", "distinction"], "correct": "influence", "translation": "A influência dele na equipe era clara."}'),
('20000000-0000-0000-0000-000000000284', 'fill_blank', 8, '{"sentence": "That is ___ what I meant.", "options": ["precisely", "impact", "distinction"], "correct": "precisely", "translation": "Isso é precisamente o que eu quis dizer."}'),
('20000000-0000-0000-0000-000000000284', 'word_order', 9, '{"words": ["The", "new", "policy", "had", "a", "big", "impact", "on", "sales"], "correct_sentence": "The new policy had a big impact on sales", "translation": "A nova política teve um grande impacto nas vendas"}'),
('20000000-0000-0000-0000-000000000284', 'word_order', 10, '{"words": ["She", "explained", "the", "plan", "with", "great", "clarity"], "correct_sentence": "She explained the plan with great clarity", "translation": "Ela explicou o plano com muita clareza"}'),
('20000000-0000-0000-0000-000000000284', 'reading', 11, '{"passage": "It was the small change that made the biggest difference, and it was precisely this distinction that impressed the investors. What had the greatest impact was not the size of the change, but the clarity with which the team explained it.", "translation": "Foi a pequena mudança que fez a maior diferença, e foi precisamente essa distinção que impressionou os investidores. O que teve o maior impacto não foi o tamanho da mudança, mas a clareza com que a equipe a explicou.", "question": "What had the greatest impact, according to the text?", "options": ["The size of the change", "The clarity of the explanation", "The investors"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000284', 'listening', 12, '{"audio_text": "One small change made a huge difference. His influence on the team was clear. She explained the plan with great clarity.", "question": "What made a huge difference, according to the audio?", "options": ["A huge project", "One small change", "The influence"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000284', 'dictation', 13, '{"audio_text": "One small change made a huge difference.", "expected": "One small change made a huge difference."}'),
('20000000-0000-0000-0000-000000000284', 'typing', 14, '{"prompt_pt": "Traduza usando ''What...'': ''O que teve o maior impacto foi a clareza da explicação.''", "expected": "What had the greatest impact was the clarity of the explanation.", "ai_review": true}'),

-- Lição 285: Revisão + dando ênfase com clareza (specifically, particular, concern, overlook, acknowledge, recognize)
('20000000-0000-0000-0000-000000000285', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001705", "show_image": false}'),
('20000000-0000-0000-0000-000000000285', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001707", "show_image": false}'),
('20000000-0000-0000-0000-000000000285', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001710", "show_image": false}'),
('20000000-0000-0000-0000-000000000285', 'multiple_choice', 4, '{"question": "We can''t ___ this small but important detail.", "audio_text": null, "options": ["overlook", "acknowledge", "recognize"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000285', 'multiple_choice', 5, '{"question": "What does ''acknowledge'' mean?", "audio_text": null, "options": ["Reconhecer", "Ignorar", "Esconder"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000285', 'matching', 6, '{"pairs": [{"left": "specifically", "right": "especificamente"}, {"left": "particular", "right": "particular, específico"}, {"left": "concern", "right": "preocupação"}, {"left": "overlook", "right": "ignorar, deixar passar"}, {"left": "acknowledge", "right": "reconhecer"}, {"left": "recognize", "right": "reconhecer"}]}'),
('20000000-0000-0000-0000-000000000285', 'fill_blank', 7, '{"sentence": "Her main ___ was the tight deadline.", "options": ["concern", "distinction", "focus"], "correct": "concern", "translation": "A principal preocupação dela era o prazo apertado."}'),
('20000000-0000-0000-0000-000000000285', 'fill_blank', 8, '{"sentence": "The company decided to ___ her achievements.", "options": ["recognize", "overlook", "matter"], "correct": "recognize", "translation": "A empresa decidiu reconhecer as conquistas dela."}'),
('20000000-0000-0000-0000-000000000285', 'word_order', 9, '{"words": ["She", "was", "talking", "specifically", "about", "the", "deadline"], "correct_sentence": "She was talking specifically about the deadline", "translation": "Ela estava falando especificamente sobre o prazo"}'),
('20000000-0000-0000-0000-000000000285', 'word_order', 10, '{"words": ["It", "is", "important", "to", "acknowledge", "everyone''s", "effort"], "correct_sentence": "It is important to acknowledge everyone''s effort", "translation": "É importante reconhecer o esforço de todos"}'),
('20000000-0000-0000-0000-000000000285', 'reading', 11, '{"passage": "It was one particular concern, mentioned specifically in the report, that nobody wanted to overlook. What the team finally did was acknowledge every issue and recognize the people who had raised it first, giving clarity to a process that had been confusing for months.", "translation": "Foi uma preocupação particular, mencionada especificamente no relatório, que ninguém queria deixar passar. O que a equipe finalmente fez foi reconhecer cada questão e valorizar as pessoas que a levantaram primeiro, dando clareza a um processo que vinha confuso há meses.", "question": "What did nobody want to do with the particular concern, according to the text?", "options": ["Overlook it", "Praise it", "Forget about it completely"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000285', 'listening', 12, '{"audio_text": "We can''t overlook this small but important detail. It is important to acknowledge everyone''s effort. The company decided to recognize her achievements.", "question": "What can''t be overlooked, according to the audio?", "options": ["A small but important detail", "The deadline", "The team''s effort"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000285', 'dictation', 13, '{"audio_text": "It is important to acknowledge everyone''s effort.", "expected": "It is important to acknowledge everyone''s effort."}'),
('20000000-0000-0000-0000-000000000285', 'typing', 14, '{"prompt_pt": "Traduza usando cleft sentence: ''Foi essa preocupação específica que ninguém quis ignorar.''", "expected": "It was this particular concern that nobody wanted to overlook.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000285', 'typing', 15, '{"prompt_pt": "Traduza usando ''What...'': ''O que precisamos fazer é reconhecer o esforço de todos.''", "expected": "What we need to do is acknowledge everyone''s effort.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

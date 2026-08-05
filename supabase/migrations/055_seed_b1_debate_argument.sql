-- ============================================================
-- Migration 055: Conteúdo B1 — Módulo 14 "Debate e Argumentação"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-054)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001291', 'opinion', '/əˈpɪnjən/', 'noun', 'opinião', 'In my opinion, this plan is a good idea.', 'Na minha opinião, esse plano é uma boa ideia.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001292', 'argue', '/ˈɑːrɡjuː/', 'verb', 'argumentar', 'She argued that the new policy was unfair.', 'Ela argumentou que a nova política era injusta.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001293', 'agree', '/əˈɡriː/', 'verb', 'concordar', 'I agree with you on this point.', 'Eu concordo com você nesse ponto.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001294', 'disagree', '/ˌdɪsəˈɡriː/', 'verb', 'discordar', 'I disagree, I think it is too risky.', 'Eu discordo, acho arriscado demais.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001295', 'point of view', '/pɔɪnt əv vjuː/', 'noun', 'ponto de vista', 'From my point of view, the price is too high.', 'Do meu ponto de vista, o preço é alto demais.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001296', 'however', '/haʊˈevər/', 'adverb', 'porém, no entanto', 'The plan is good; however, it is expensive.', 'O plano é bom; porém, é caro.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001297', 'therefore', '/ˈðerfɔːr/', 'adverb', 'portanto', 'It rained all day; therefore, we stayed home.', 'Choveu o dia todo; portanto, ficamos em casa.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001298', 'on the other hand', '/ɒn ði ˈʌðər hænd/', 'phrase', 'por outro lado', 'It is expensive; on the other hand, it lasts longer.', 'É caro; por outro lado, dura mais.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001299', 'evidence', '/ˈevɪdəns/', 'noun', 'evidência', 'There is no evidence to support that claim.', 'Não há evidência que sustente essa alegação.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001300', 'convince', '/kənˈvɪns/', 'verb', 'convencer', 'He convinced the team to change the plan.', 'Ele convenceu a equipe a mudar o plano.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001301', 'debate', '/dɪˈbeɪt/', 'noun', 'debate', 'The debate lasted almost two hours.', 'O debate durou quase duas horas.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001302', 'argument', '/ˈɑːrɡjumənt/', 'noun', 'argumento', 'Her argument was clear and well organized.', 'O argumento dela era claro e bem organizado.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001303', 'claim', '/kleɪm/', 'verb', 'alegar, afirmar', 'They claim the product is completely safe.', 'Eles alegam que o produto é totalmente seguro.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001304', 'support', '/səˈpɔːrt/', 'verb', 'apoiar', 'Most people support the new law.', 'A maioria das pessoas apoia a nova lei.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001305', 'oppose', '/əˈpoʊz/', 'verb', 'opor-se', 'Some residents oppose the construction project.', 'Alguns moradores se opõem ao projeto de construção.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001306', 'perspective', '/pərˈspektɪv/', 'noun', 'perspectiva', 'Try to see it from a different perspective.', 'Tente ver isso de uma perspectiva diferente.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001307', 'controversial', '/ˌkɒntrəˈvɜːrʃəl/', 'adjective', 'controverso', 'It is a controversial topic in the office.', 'É um assunto controverso no escritório.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001308', 'issue', '/ˈɪʃuː/', 'noun', 'questão, problema', 'We need to discuss this issue calmly.', 'Precisamos discutir essa questão com calma.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001309', 'benefit', '/ˈbenɪfɪt/', 'noun', 'benefício', 'The main benefit is lower costs.', 'O principal benefício é o custo menor.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001310', 'drawback', '/ˈdrɔːbæk/', 'noun', 'desvantagem', 'The only drawback is the long waiting time.', 'A única desvantagem é o tempo de espera longo.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001311', 'advantage', '/ədˈvæntɪdʒ/', 'noun', 'vantagem', 'Working from home has many advantages.', 'Trabalhar de casa tem muitas vantagens.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001312', 'disadvantage', '/ˌdɪsədˈvæntɪdʒ/', 'noun', 'desvantagem', 'One disadvantage is the lack of social contact.', 'Uma desvantagem é a falta de contato social.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001313', 'conclude', '/kənˈkluːd/', 'verb', 'concluir', 'We can conclude that the plan worked well.', 'Podemos concluir que o plano funcionou bem.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001314', 'conclusion', '/kənˈkluːʒən/', 'noun', 'conclusão', 'In conclusion, the results were positive.', 'Em conclusão, os resultados foram positivos.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001315', 'persuade', '/pərˈsweɪd/', 'verb', 'persuadir', 'She tried to persuade him to stay.', 'Ela tentou persuadi-lo a ficar.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001316', 'contradict', '/ˌkɒntrəˈdɪkt/', 'verb', 'contradizer', 'His new statement contradicts what he said before.', 'A nova declaração dele contradiz o que ele disse antes.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001317', 'valid', '/ˈvælɪd/', 'adjective', 'válido', 'That is a valid point, I hadn''t thought of it.', 'Esse é um ponto válido, eu não tinha pensado nisso.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001318', 'statement', '/ˈsteɪtmənt/', 'noun', 'declaração', 'The company released an official statement.', 'A empresa divulgou uma declaração oficial.', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001319', 'reason', '/ˈriːzən/', 'noun', 'razão, motivo', 'What is the main reason for the delay?', 'Qual é o principal motivo do atraso?', 'B1', array['debate']),
('30000000-0000-0000-0000-000000001320', 'compromise', '/ˈkɒmprəmaɪz/', 'noun', 'meio-termo, acordo', 'They reached a compromise after a long talk.', 'Eles chegaram a um meio-termo depois de uma longa conversa.', 'B1', array['debate']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000044', 'B1', 'Debate e Argumentação', 'Aprenda a dar sua opinião, concordar e discordar, usar conectivos de argumentação e pesar vantagens e desvantagens em inglês.', 14, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000216', '10000000-0000-0000-0000-000000000044', 'Dando opinião', 1, 20),
('20000000-0000-0000-0000-000000000217', '10000000-0000-0000-0000-000000000044', 'Concordando e discordando', 2, 20),
('20000000-0000-0000-0000-000000000218', '10000000-0000-0000-0000-000000000044', 'Conectivos de argumentação', 3, 20),
('20000000-0000-0000-0000-000000000219', '10000000-0000-0000-0000-000000000044', 'Vantagens x desvantagens', 4, 20),
('20000000-0000-0000-0000-000000000220', '10000000-0000-0000-0000-000000000044', 'Revisão: debate completo', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 216: Dando opinião (opinion, argue, agree, disagree, point of view, however)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000216', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001291", "show_image": false}'),
('20000000-0000-0000-0000-000000000216', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001292", "show_image": false}'),
('20000000-0000-0000-0000-000000000216', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001293", "show_image": false}'),
('20000000-0000-0000-0000-000000000216', 'multiple_choice', 4, '{"question": "In my ___, this is the best option.", "audio_text": null, "options": ["opinion", "argue", "however"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000216', 'multiple_choice', 5, '{"question": "What does ''point of view'' mean?", "audio_text": null, "options": ["Ponto de vista", "Discordar", "Evidência"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000216', 'matching', 6, '{"pairs": [{"left": "opinion", "right": "opinião"}, {"left": "argue", "right": "argumentar"}, {"left": "agree", "right": "concordar"}, {"left": "disagree", "right": "discordar"}, {"left": "point of view", "right": "ponto de vista"}, {"left": "however", "right": "porém"}]}'),
('20000000-0000-0000-0000-000000000216', 'fill_blank', 7, '{"sentence": "I ___ with your idea, it makes sense.", "options": ["agree", "disagree", "argue"], "correct": "agree", "translation": "Eu concordo com sua ideia, faz sentido."}'),
('20000000-0000-0000-0000-000000000216', 'fill_blank', 8, '{"sentence": "From my point of ___, the plan is too risky.", "options": ["view", "opinion", "however"], "correct": "view", "translation": "Do meu ponto de vista, o plano é arriscado demais."}'),
('20000000-0000-0000-0000-000000000216', 'word_order', 9, '{"words": ["In", "my", "opinion", "this", "is", "a", "great", "idea"], "correct_sentence": "In my opinion this is a great idea", "translation": "Na minha opinião isso é uma ótima ideia"}'),
('20000000-0000-0000-0000-000000000216', 'word_order', 10, '{"words": ["I", "disagree", "with", "that", "statement"], "correct_sentence": "I disagree with that statement", "translation": "Eu discordo dessa declaração"}'),
('20000000-0000-0000-0000-000000000216', 'reading', 11, '{"passage": "In every discussion, people share their opinion. Some agree quickly, while others disagree and argue for a different point of view. However, a good discussion listens to all sides before reaching an answer.", "translation": "Em toda discussão, as pessoas compartilham sua opinião. Alguns concordam rapidamente, enquanto outros discordam e argumentam por um ponto de vista diferente. Porém, uma boa discussão ouve todos os lados antes de chegar a uma resposta.", "question": "What does a good discussion do, according to the text?", "options": ["It ignores other opinions", "It listens to all sides", "It avoids arguing"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000216', 'listening', 12, '{"audio_text": "In my opinion, we should agree on a plan first. However, I understand if you disagree with my point of view.", "question": "What does the speaker suggest doing first?", "options": ["Disagreeing", "Agreeing on a plan", "Arguing"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000216', 'dictation', 13, '{"audio_text": "In my opinion, this is a great idea.", "expected": "In my opinion, this is a great idea."}'),
('20000000-0000-0000-0000-000000000216', 'typing', 14, '{"prompt_pt": "Traduza: ''Eu discordo, na minha opinião é arriscado.''", "expected": "I disagree, in my opinion it is risky.", "ai_review": true}'),

-- Lição 217: Concordando e discordando (therefore, on the other hand, evidence, convince, debate, argument)
('20000000-0000-0000-0000-000000000217', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001297", "show_image": false}'),
('20000000-0000-0000-0000-000000000217', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001299", "show_image": false}'),
('20000000-0000-0000-0000-000000000217', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001301", "show_image": false}'),
('20000000-0000-0000-0000-000000000217', 'multiple_choice', 4, '{"question": "It is expensive; ___ , it lasts a long time.", "audio_text": null, "options": ["on the other hand", "however", "argue"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000217', 'multiple_choice', 5, '{"question": "What does ''convince'' mean?", "audio_text": null, "options": ["Convencer", "Discordar", "Concluir"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000217', 'matching', 6, '{"pairs": [{"left": "therefore", "right": "portanto"}, {"left": "on the other hand", "right": "por outro lado"}, {"left": "evidence", "right": "evidência"}, {"left": "convince", "right": "convencer"}, {"left": "debate", "right": "debate"}, {"left": "argument", "right": "argumento"}]}'),
('20000000-0000-0000-0000-000000000217', 'fill_blank', 7, '{"sentence": "There is no ___ to support that claim.", "options": ["evidence", "debate", "however"], "correct": "evidence", "translation": "Não há evidência para sustentar essa alegação."}'),
('20000000-0000-0000-0000-000000000217', 'fill_blank', 8, '{"sentence": "He tried to ___ me to change my mind.", "options": ["convince", "argue", "oppose"], "correct": "convince", "translation": "Ele tentou me convencer a mudar de ideia."}'),
('20000000-0000-0000-0000-000000000217', 'word_order', 9, '{"words": ["The", "debate", "lasted", "almost", "two", "hours"], "correct_sentence": "The debate lasted almost two hours", "translation": "O debate durou quase duas horas"}'),
('20000000-0000-0000-0000-000000000217', 'word_order', 10, '{"words": ["Her", "argument", "was", "clear", "and", "logical"], "correct_sentence": "Her argument was clear and logical", "translation": "O argumento dela foi claro e lógico"}'),
('20000000-0000-0000-0000-000000000217', 'reading', 11, '{"passage": "During the debate, both sides presented strong arguments. One side showed evidence to support its claim. The other side tried to convince the audience with a different point of view. On the other hand, some listeners remained undecided.", "translation": "Durante o debate, os dois lados apresentaram argumentos fortes. Um lado mostrou evidências para sustentar sua alegação. O outro lado tentou convencer a plateia com um ponto de vista diferente. Por outro lado, alguns ouvintes ficaram indecisos.", "question": "What did one side use to support its claim?", "options": ["An argument only", "Evidence", "A compromise"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000217', 'listening', 12, '{"audio_text": "The debate lasted two hours. One side showed evidence; the other tried to convince the audience. On the other hand, nobody changed their opinion.", "question": "How long did the debate last?", "options": ["One hour", "Two hours", "It was not mentioned"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000217', 'dictation', 13, '{"audio_text": "There is no evidence to support that claim.", "expected": "There is no evidence to support that claim."}'),
('20000000-0000-0000-0000-000000000217', 'typing', 14, '{"prompt_pt": "Traduza: ''O argumento dela era forte; portanto, ela venceu o debate.''", "expected": "Her argument was strong; therefore, she won the debate.", "ai_review": true}'),

-- Lição 218: Conectivos de argumentação (claim, support, oppose, perspective, controversial, issue)
('20000000-0000-0000-0000-000000000218', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001303", "show_image": false}'),
('20000000-0000-0000-0000-000000000218', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001306", "show_image": false}'),
('20000000-0000-0000-0000-000000000218', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001307", "show_image": false}'),
('20000000-0000-0000-0000-000000000218', 'multiple_choice', 4, '{"question": "It is a very ___ topic — people have strong feelings.", "audio_text": null, "options": ["controversial", "valid", "support"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000218', 'multiple_choice', 5, '{"question": "What does ''oppose'' mean?", "audio_text": null, "options": ["Opor-se", "Apoiar", "Concordar"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000218', 'matching', 6, '{"pairs": [{"left": "claim", "right": "alegar"}, {"left": "support", "right": "apoiar"}, {"left": "oppose", "right": "opor-se"}, {"left": "perspective", "right": "perspectiva"}, {"left": "controversial", "right": "controverso"}, {"left": "issue", "right": "questão"}]}'),
('20000000-0000-0000-0000-000000000218', 'fill_blank', 7, '{"sentence": "Most residents ___ the new construction project.", "options": ["oppose", "convince", "conclude"], "correct": "oppose", "translation": "A maioria dos moradores se opõe ao novo projeto de construção."}'),
('20000000-0000-0000-0000-000000000218', 'fill_blank', 8, '{"sentence": "Try to see the ___ from her side too.", "options": ["perspective", "issue", "reason"], "correct": "perspective", "translation": "Tente ver a perspectiva do lado dela também."}'),
('20000000-0000-0000-0000-000000000218', 'word_order', 9, '{"words": ["They", "claim", "the", "product", "is", "safe"], "correct_sentence": "They claim the product is safe", "translation": "Eles alegam que o produto é seguro"}'),
('20000000-0000-0000-0000-000000000218', 'word_order', 10, '{"words": ["Most", "people", "support", "the", "new", "law"], "correct_sentence": "Most people support the new law", "translation": "A maioria das pessoas apoia a nova lei"}'),
('20000000-0000-0000-0000-000000000218', 'reading', 11, '{"passage": "Every controversial issue has more than one perspective. Some people support a new idea, while others oppose it and claim it will cause problems. Understanding both sides helps us make a fair decision.", "translation": "Toda questão controversa tem mais de uma perspectiva. Algumas pessoas apoiam uma nova ideia, enquanto outras se opõem e alegam que ela causará problemas. Entender os dois lados nos ajuda a tomar uma decisão justa.", "question": "What helps make a fair decision, according to the text?", "options": ["Ignoring one side", "Understanding both sides", "Avoiding the issue"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000218', 'listening', 12, '{"audio_text": "This is a controversial issue. Some people support the plan, others oppose it and claim it is too expensive.", "question": "What do some people claim about the plan?", "options": ["It is cheap", "It is too expensive", "It is safe"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000218', 'dictation', 13, '{"audio_text": "Most people support the new law.", "expected": "Most people support the new law."}'),
('20000000-0000-0000-0000-000000000218', 'typing', 14, '{"prompt_pt": "Traduza: ''É uma questão controversa, e muitas pessoas se opõem.''", "expected": "It is a controversial issue, and many people oppose it.", "ai_review": true}'),

-- Lição 219: Vantagens x desvantagens (benefit, drawback, advantage, disadvantage, conclude, conclusion)
('20000000-0000-0000-0000-000000000219', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001309", "show_image": false}'),
('20000000-0000-0000-0000-000000000219', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001311", "show_image": false}'),
('20000000-0000-0000-0000-000000000219', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001314", "show_image": false}'),
('20000000-0000-0000-0000-000000000219', 'multiple_choice', 4, '{"question": "Working from home has many ___.", "audio_text": null, "options": ["advantages", "drawbacks", "issues"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000219', 'multiple_choice', 5, '{"question": "What does ''drawback'' mean?", "audio_text": null, "options": ["Desvantagem", "Benefício", "Conclusão"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000219', 'matching', 6, '{"pairs": [{"left": "benefit", "right": "benefício"}, {"left": "drawback", "right": "desvantagem"}, {"left": "advantage", "right": "vantagem"}, {"left": "disadvantage", "right": "desvantagem"}, {"left": "conclude", "right": "concluir"}, {"left": "conclusion", "right": "conclusão"}]}'),
('20000000-0000-0000-0000-000000000219', 'fill_blank', 7, '{"sentence": "The main ___ is the lower cost.", "options": ["benefit", "drawback", "issue"], "correct": "benefit", "translation": "O principal benefício é o custo menor."}'),
('20000000-0000-0000-0000-000000000219', 'fill_blank', 8, '{"sentence": "In ___, the results were very positive.", "options": ["conclusion", "advantage", "evidence"], "correct": "conclusion", "translation": "Em conclusão, os resultados foram muito positivos."}'),
('20000000-0000-0000-0000-000000000219', 'word_order', 9, '{"words": ["One", "disadvantage", "is", "the", "lack", "of", "contact"], "correct_sentence": "One disadvantage is the lack of contact", "translation": "Uma desvantagem é a falta de contato"}'),
('20000000-0000-0000-0000-000000000219', 'word_order', 10, '{"words": ["We", "can", "conclude", "that", "the", "plan", "worked"], "correct_sentence": "We can conclude that the plan worked", "translation": "Podemos concluir que o plano funcionou"}'),
('20000000-0000-0000-0000-000000000219', 'reading', 11, '{"passage": "Every choice has advantages and disadvantages. Working from home has many benefits, such as saving time. However, one drawback is the lack of social contact. In conclusion, people should weigh both sides before deciding.", "translation": "Toda escolha tem vantagens e desvantagens. Trabalhar de casa tem muitos benefícios, como economizar tempo. Porém, uma desvantagem é a falta de contato social. Em conclusão, as pessoas devem pesar os dois lados antes de decidir.", "question": "What is mentioned as a benefit of working from home?", "options": ["More social contact", "Saving time", "Lower salary"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000219', 'listening', 12, '{"audio_text": "Working from home has advantages, like saving time. But there is a drawback: less social contact. In conclusion, it depends on the person.", "question": "What is the drawback mentioned?", "options": ["Higher cost", "Less social contact", "More traffic"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000219', 'dictation', 13, '{"audio_text": "The main benefit is the lower cost.", "expected": "The main benefit is the lower cost."}'),
('20000000-0000-0000-0000-000000000219', 'typing', 14, '{"prompt_pt": "Traduza: ''Em conclusão, as vantagens superam as desvantagens.''", "expected": "In conclusion, the advantages outweigh the disadvantages.", "ai_review": true}'),

-- Lição 220: Revisão + debate completo (persuade, contradict, valid, statement, reason, compromise)
('20000000-0000-0000-0000-000000000220', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001315", "show_image": false}'),
('20000000-0000-0000-0000-000000000220', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001317", "show_image": false}'),
('20000000-0000-0000-0000-000000000220', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001320", "show_image": false}'),
('20000000-0000-0000-0000-000000000220', 'multiple_choice', 4, '{"question": "That is a ___ point, I hadn''t thought of it.", "audio_text": null, "options": ["valid", "controversial", "compromise"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000220', 'multiple_choice', 5, '{"question": "What does ''contradict'' mean?", "audio_text": null, "options": ["Contradizer", "Concordar", "Persuadir"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000220', 'matching', 6, '{"pairs": [{"left": "persuade", "right": "persuadir"}, {"left": "contradict", "right": "contradizer"}, {"left": "valid", "right": "válido"}, {"left": "statement", "right": "declaração"}, {"left": "reason", "right": "razão"}, {"left": "compromise", "right": "meio-termo"}]}'),
('20000000-0000-0000-0000-000000000220', 'fill_blank', 7, '{"sentence": "His new statement ___ what he said before.", "options": ["contradicts", "supports", "agrees"], "correct": "contradicts", "translation": "A nova declaração dele contradiz o que ele disse antes."}'),
('20000000-0000-0000-0000-000000000220', 'fill_blank', 8, '{"sentence": "They reached a ___ after a long talk.", "options": ["compromise", "reason", "issue"], "correct": "compromise", "translation": "Eles chegaram a um meio-termo depois de uma longa conversa."}'),
('20000000-0000-0000-0000-000000000220', 'word_order', 9, '{"words": ["She", "tried", "to", "persuade", "him", "to", "stay"], "correct_sentence": "She tried to persuade him to stay", "translation": "Ela tentou persuadi-lo a ficar"}'),
('20000000-0000-0000-0000-000000000220', 'word_order', 10, '{"words": ["What", "is", "the", "main", "reason", "for", "the", "delay"], "correct_sentence": "What is the main reason for the delay", "translation": "Qual é o principal motivo do atraso"}'),
('20000000-0000-0000-0000-000000000220', 'reading', 11, '{"passage": "A good debater tries to persuade the audience without contradicting the facts. Every valid statement needs a clear reason behind it. In the end, most debates finish with a compromise, not a winner.", "translation": "Um bom debatedor tenta persuadir a plateia sem contradizer os fatos. Toda declaração válida precisa de uma razão clara por trás dela. No fim, a maioria dos debates termina com um meio-termo, não um vencedor.", "question": "How do most debates finish, according to the text?", "options": ["With a winner", "With a compromise", "With a contradiction"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000220', 'listening', 12, '{"audio_text": "A good debater tries to persuade the audience with valid statements. In the end, they reached a compromise.", "question": "What did they reach in the end?", "options": ["A contradiction", "A compromise", "An argument"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000220', 'dictation', 13, '{"audio_text": "They reached a compromise after a long talk.", "expected": "They reached a compromise after a long talk."}'),
('20000000-0000-0000-0000-000000000220', 'typing', 14, '{"prompt_pt": "Traduza: ''O motivo é válido, mas a declaração contradiz a evidência.''", "expected": "The reason is valid, but the statement contradicts the evidence.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000220', 'typing', 15, '{"prompt_pt": "Traduza: ''Na minha opinião, precisamos de um meio-termo, não um debate.''", "expected": "In my opinion, we need a compromise, not a debate.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

-- ============================================================
-- Migration 060: Conteúdo B1 — Módulo 19 "Saúde e Bem-estar"
-- 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Padrão idêntico aos módulos B1 anteriores (042-059)
-- ============================================================

-- ============================================================
-- PARTE 1 — Vocabulário (30 palavras, cefr_level = 'B1')
-- ============================================================
insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
('30000000-0000-0000-0000-000000001441', 'symptom', '/ˈsɪmptəm/', 'noun', 'sintoma', 'A high fever is a common symptom of the flu.', 'Febre alta é um sintoma comum da gripe.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001442', 'illness', '/ˈɪlnəs/', 'noun', 'doença', 'She missed work because of an illness.', 'Ela faltou ao trabalho por causa de uma doença.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001443', 'treatment', '/ˈtriːtmənt/', 'noun', 'tratamento', 'The treatment lasted almost two weeks.', 'O tratamento durou quase duas semanas.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001444', 'recover', '/rɪˈkʌvər/', 'verb', 'recuperar-se', 'It took him a month to recover fully.', 'Ele levou um mês para se recuperar totalmente.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001445', 'exercise', '/ˈeksərsaɪz/', 'noun', 'exercício físico', 'Regular exercise improves your overall health.', 'Exercício físico regular melhora sua saúde geral.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001446', 'diet', '/ˈdaɪət/', 'noun', 'dieta, alimentação', 'A balanced diet helps prevent many diseases.', 'Uma alimentação balanceada ajuda a prevenir muitas doenças.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001447', 'stress', '/stres/', 'noun', 'estresse', 'Too much stress can affect your sleep.', 'Muito estresse pode afetar seu sono.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001448', 'anxiety', '/æŋˈzaɪəti/', 'noun', 'ansiedade', 'Anxiety became more common after the pandemic.', 'A ansiedade se tornou mais comum depois da pandemia.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001449', 'mental health', '/ˈmentəl helθ/', 'noun', 'saúde mental', 'Companies are paying more attention to mental health.', 'As empresas estão prestando mais atenção à saúde mental.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001450', 'therapy', '/ˈθerəpi/', 'noun', 'terapia', 'Therapy helped her deal with the stress.', 'A terapia a ajudou a lidar com o estresse.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001451', 'prescription', '/prɪˈskrɪpʃən/', 'noun', 'receita médica', 'The doctor gave me a prescription for antibiotics.', 'O médico me deu uma receita de antibióticos.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001452', 'medication', '/ˌmedɪˈkeɪʃən/', 'noun', 'medicação, remédio', 'She takes medication for her blood pressure.', 'Ela toma medicação para a pressão arterial.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001453', 'appointment', '/əˈpɔɪntmənt/', 'noun', 'consulta, compromisso', 'I have a doctor''s appointment tomorrow morning.', 'Tenho uma consulta médica amanhã de manhã.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001454', 'checkup', '/ˈtʃekʌp/', 'noun', 'check-up, exame de rotina', 'It is important to have a yearly checkup.', 'É importante fazer um check-up anual.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001455', 'injury', '/ˈɪndʒəri/', 'noun', 'lesão', 'The player is still recovering from an injury.', 'O jogador ainda está se recuperando de uma lesão.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001456', 'pain', '/peɪn/', 'noun', 'dor', 'She felt a sharp pain in her back.', 'Ela sentiu uma dor aguda nas costas.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001457', 'fever', '/ˈfiːvər/', 'noun', 'febre', 'He stayed home because he had a fever.', 'Ele ficou em casa porque estava com febre.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001458', 'headache', '/ˈhedeɪk/', 'noun', 'dor de cabeça', 'I have a terrible headache today.', 'Estou com uma dor de cabeça terrível hoje.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001459', 'exhausted', '/ɪɡˈzɔːstɪd/', 'adjective', 'exausto', 'I am completely exhausted after work.', 'Estou completamente exausto depois do trabalho.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001460', 'energetic', '/ˌenərˈdʒetɪk/', 'adjective', 'cheio de energia', 'She feels more energetic after exercising.', 'Ela se sente mais cheia de energia depois de se exercitar.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001461', 'balanced', '/ˈbælənst/', 'adjective', 'equilibrado', 'Try to keep a balanced lifestyle.', 'Tente manter um estilo de vida equilibrado.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001462', 'wellbeing', '/ˈwelˈbiːɪŋ/', 'noun', 'bem-estar', 'Sleep is essential for your overall wellbeing.', 'O sono é essencial para o seu bem-estar geral.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001463', 'relax', '/rɪˈlæks/', 'verb', 'relaxar', 'Take some time every day to relax.', 'Reserve um tempo todo dia para relaxar.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001464', 'meditate', '/ˈmedɪteɪt/', 'verb', 'meditar', 'I try to meditate for ten minutes every morning.', 'Eu tento meditar por dez minutos toda manhã.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001465', 'sleep', '/sliːp/', 'noun', 'sono', 'Good sleep is one of the keys to good health.', 'Um bom sono é uma das chaves para uma boa saúde.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001466', 'nutrition', '/nuːˈtrɪʃən/', 'noun', 'nutrição', 'Good nutrition helps your body fight illness.', 'Uma boa nutrição ajuda seu corpo a combater doenças.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001467', 'hydrate', '/ˈhaɪdreɪt/', 'verb', 'hidratar-se', 'Remember to hydrate during exercise.', 'Lembre-se de se hidratar durante o exercício.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001468', 'immune system', '/ɪˈmjuːn ˈsɪstəm/', 'noun', 'sistema imunológico', 'A healthy diet strengthens your immune system.', 'Uma alimentação saudável fortalece seu sistema imunológico.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001469', 'chronic', '/ˈkrɒnɪk/', 'adjective', 'crônico', 'He has been managing a chronic condition for years.', 'Ele vem controlando uma condição crônica há anos.', 'B1', array['health']),
('30000000-0000-0000-0000-000000001470', 'prevent', '/prɪˈvent/', 'verb', 'prevenir', 'Regular checkups can help prevent serious problems.', 'Check-ups regulares podem ajudar a prevenir problemas sérios.', 'B1', array['health']);

-- ============================================================
-- PARTE 2 — Módulo
-- ============================================================
insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000049', 'B1', 'Saúde e Bem-estar', 'Amplie seu vocabulário sobre sintomas, consultas médicas, saúde mental e hábitos saudáveis do dia a dia.', 19, true);

-- ============================================================
-- PARTE 3 — Lições (5)
-- ============================================================
insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000241', '10000000-0000-0000-0000-000000000049', 'Sintomas e doenças', 1, 20),
('20000000-0000-0000-0000-000000000242', '10000000-0000-0000-0000-000000000049', 'Consultas médicas', 2, 20),
('20000000-0000-0000-0000-000000000243', '10000000-0000-0000-0000-000000000049', 'Saúde mental', 3, 20),
('20000000-0000-0000-0000-000000000244', '10000000-0000-0000-0000-000000000049', 'Hábitos saudáveis', 4, 20),
('20000000-0000-0000-0000-000000000245', '10000000-0000-0000-0000-000000000049', 'Revisão: corpo e mente em equilíbrio', 5, 25);

-- ============================================================
-- PARTE 4 — Exercícios
-- ============================================================

-- Lição 241: Sintomas e doenças (symptom, illness, treatment, recover, injury, pain)
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000241', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001441", "show_image": false}'),
('20000000-0000-0000-0000-000000000241', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001442", "show_image": false}'),
('20000000-0000-0000-0000-000000000241', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001444", "show_image": false}'),
('20000000-0000-0000-0000-000000000241', 'multiple_choice', 4, '{"question": "A high fever is a common ___ of the flu.", "audio_text": null, "options": ["symptom", "treatment", "injury"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000241', 'multiple_choice', 5, '{"question": "What does ''recover'' mean?", "audio_text": null, "options": ["Recuperar-se", "Adoecer", "Machucar-se"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000241', 'matching', 6, '{"pairs": [{"left": "symptom", "right": "sintoma"}, {"left": "illness", "right": "doença"}, {"left": "treatment", "right": "tratamento"}, {"left": "recover", "right": "recuperar-se"}, {"left": "injury", "right": "lesão"}, {"left": "pain", "right": "dor"}]}'),
('20000000-0000-0000-0000-000000000241', 'fill_blank', 7, '{"sentence": "She felt a sharp ___ in her back.", "options": ["pain", "treatment", "recover"], "correct": "pain", "translation": "Ela sentiu uma dor aguda nas costas."}'),
('20000000-0000-0000-0000-000000000241', 'fill_blank', 8, '{"sentence": "The player is still recovering from an ___.", "options": ["injury", "illness", "checkup"], "correct": "injury", "translation": "O jogador ainda está se recuperando de uma lesão."}'),
('20000000-0000-0000-0000-000000000241', 'word_order', 9, '{"words": ["She", "missed", "work", "because", "of", "an", "illness"], "correct_sentence": "She missed work because of an illness", "translation": "Ela faltou ao trabalho por causa de uma doença"}'),
('20000000-0000-0000-0000-000000000241', 'word_order', 10, '{"words": ["It", "took", "him", "a", "month", "to", "recover"], "correct_sentence": "It took him a month to recover", "translation": "Ele levou um mês para se recuperar"}'),
('20000000-0000-0000-0000-000000000241', 'reading', 11, '{"passage": "The first symptom was a mild headache, but it soon turned into a full illness with fever and pain in the body. The treatment included rest and medication, and after a week, he began to recover slowly but steadily.", "translation": "O primeiro sintoma foi uma dor de cabeça leve, mas logo virou uma doença completa com febre e dor no corpo. O tratamento incluiu repouso e medicação, e depois de uma semana, ele começou a se recuperar lenta mas firmemente.", "question": "What was the first symptom mentioned in the text?", "options": ["Fever", "A mild headache", "Body pain"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000241', 'listening', 12, '{"audio_text": "A high fever is a common symptom of the flu. She missed work because of an illness. It took him a month to recover.", "question": "Why did she miss work, according to the audio?", "options": ["An injury", "An illness", "A checkup"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000241', 'dictation', 13, '{"audio_text": "It took him a month to recover fully.", "expected": "It took him a month to recover fully."}'),
('20000000-0000-0000-0000-000000000241', 'typing', 14, '{"prompt_pt": "Traduza: ''O sintoma principal era dor, e o tratamento durou semanas.''", "expected": "The main symptom was pain, and the treatment lasted weeks.", "ai_review": true}'),

-- Lição 242: Consultas médicas (prescription, medication, appointment, checkup, fever, headache)
('20000000-0000-0000-0000-000000000242', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001451", "show_image": false}'),
('20000000-0000-0000-0000-000000000242', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001453", "show_image": false}'),
('20000000-0000-0000-0000-000000000242', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001454", "show_image": false}'),
('20000000-0000-0000-0000-000000000242', 'multiple_choice', 4, '{"question": "The doctor gave me a ___ for antibiotics.", "audio_text": null, "options": ["prescription", "checkup", "fever"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000242', 'multiple_choice', 5, '{"question": "What does ''appointment'' mean in this context?", "audio_text": null, "options": ["Consulta médica", "Receita", "Sintoma"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000242', 'matching', 6, '{"pairs": [{"left": "prescription", "right": "receita médica"}, {"left": "medication", "right": "medicação"}, {"left": "appointment", "right": "consulta"}, {"left": "checkup", "right": "check-up"}, {"left": "fever", "right": "febre"}, {"left": "headache", "right": "dor de cabeça"}]}'),
('20000000-0000-0000-0000-000000000242', 'fill_blank', 7, '{"sentence": "I have a doctor''s ___ tomorrow morning.", "options": ["appointment", "medication", "fever"], "correct": "appointment", "translation": "Tenho uma consulta médica amanhã de manhã."}'),
('20000000-0000-0000-0000-000000000242', 'fill_blank', 8, '{"sentence": "It is important to have a yearly ___.", "options": ["checkup", "headache", "prescription"], "correct": "checkup", "translation": "É importante fazer um check-up anual."}'),
('20000000-0000-0000-0000-000000000242', 'word_order', 9, '{"words": ["She", "takes", "medication", "for", "her", "blood", "pressure"], "correct_sentence": "She takes medication for her blood pressure", "translation": "Ela toma medicação para a pressão arterial"}'),
('20000000-0000-0000-0000-000000000242', 'word_order', 10, '{"words": ["He", "stayed", "home", "because", "he", "had", "a", "fever"], "correct_sentence": "He stayed home because he had a fever", "translation": "Ele ficou em casa porque estava com febre"}'),
('20000000-0000-0000-0000-000000000242', 'reading', 11, '{"passage": "At my yearly checkup, the doctor asked about any headaches or fever I had recently. Since I had a mild fever, she wrote a prescription for medication and scheduled another appointment for the following week.", "translation": "No meu check-up anual, a médica perguntou sobre dores de cabeça ou febre que eu tive recentemente. Como eu tinha uma febre leve, ela escreveu uma receita de medicação e agendou outra consulta para a semana seguinte.", "question": "Why did the doctor write a prescription, according to the text?", "options": ["Because of a headache", "Because of a mild fever", "Because of an injury"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000242', 'listening', 12, '{"audio_text": "The doctor gave me a prescription for antibiotics. I have a doctor''s appointment tomorrow morning. It is important to have a yearly checkup.", "question": "What did the doctor give the speaker?", "options": ["A checkup", "A prescription", "An appointment card"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000242', 'dictation', 13, '{"audio_text": "I have a doctor''s appointment tomorrow morning.", "expected": "I have a doctor''s appointment tomorrow morning."}'),
('20000000-0000-0000-0000-000000000242', 'typing', 14, '{"prompt_pt": "Traduza: ''Tenho uma consulta amanhã por causa da minha dor de cabeça.''", "expected": "I have an appointment tomorrow because of my headache.", "ai_review": true}'),

-- Lição 243: Saúde mental (stress, anxiety, mental health, therapy, exhausted, energetic)
('20000000-0000-0000-0000-000000000243', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001447", "show_image": false}'),
('20000000-0000-0000-0000-000000000243', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001449", "show_image": false}'),
('20000000-0000-0000-0000-000000000243', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001450", "show_image": false}'),
('20000000-0000-0000-0000-000000000243', 'multiple_choice', 4, '{"question": "Too much ___ can affect your sleep.", "audio_text": null, "options": ["stress", "therapy", "energy"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000243', 'multiple_choice', 5, '{"question": "What does ''exhausted'' mean?", "audio_text": null, "options": ["Exausto", "Cheio de energia", "Relaxado"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000243', 'matching', 6, '{"pairs": [{"left": "stress", "right": "estresse"}, {"left": "anxiety", "right": "ansiedade"}, {"left": "mental health", "right": "saúde mental"}, {"left": "therapy", "right": "terapia"}, {"left": "exhausted", "right": "exausto"}, {"left": "energetic", "right": "cheio de energia"}]}'),
('20000000-0000-0000-0000-000000000243', 'fill_blank', 7, '{"sentence": "___ helped her deal with the stress.", "options": ["Therapy", "Anxiety", "Exhausted"], "correct": "Therapy", "translation": "A terapia a ajudou a lidar com o estresse."}'),
('20000000-0000-0000-0000-000000000243', 'fill_blank', 8, '{"sentence": "She feels more ___ after exercising.", "options": ["energetic", "exhausted", "chronic"], "correct": "energetic", "translation": "Ela se sente mais cheia de energia depois de se exercitar."}'),
('20000000-0000-0000-0000-000000000243', 'word_order', 9, '{"words": ["Anxiety", "became", "more", "common", "after", "the", "pandemic"], "correct_sentence": "Anxiety became more common after the pandemic", "translation": "A ansiedade se tornou mais comum depois da pandemia"}'),
('20000000-0000-0000-0000-000000000243', 'word_order', 10, '{"words": ["I", "am", "completely", "exhausted", "after", "work"], "correct_sentence": "I am completely exhausted after work", "translation": "Estou completamente exausto depois do trabalho"}'),
('20000000-0000-0000-0000-000000000243', 'reading', 11, '{"passage": "More companies are paying attention to mental health at work. High levels of stress and anxiety can leave employees feeling exhausted, while a healthier balance helps people stay energetic. Many workers have started therapy to better manage their emotions.", "translation": "Mais empresas estão prestando atenção à saúde mental no trabalho. Altos níveis de estresse e ansiedade podem deixar os funcionários se sentindo exaustos, enquanto um equilíbrio mais saudável ajuda as pessoas a se manterem cheias de energia. Muitos trabalhadores começaram terapia para gerenciar melhor suas emoções.", "question": "What can high stress and anxiety cause, according to the text?", "options": ["More energy", "Exhaustion", "Better sleep"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000243', 'listening', 12, '{"audio_text": "Too much stress can affect your sleep. Anxiety became more common after the pandemic. Therapy helped her deal with the stress.", "question": "What became more common after the pandemic, according to the audio?", "options": ["Exercise", "Anxiety", "Therapy sessions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000243', 'dictation', 13, '{"audio_text": "Too much stress can affect your sleep.", "expected": "Too much stress can affect your sleep."}'),
('20000000-0000-0000-0000-000000000243', 'typing', 14, '{"prompt_pt": "Traduza: ''A terapia ajuda com a ansiedade e o estresse.''", "expected": "Therapy helps with anxiety and stress.", "ai_review": true}'),

-- Lição 244: Hábitos saudáveis (exercise, diet, balanced, wellbeing, relax, meditate)
('20000000-0000-0000-0000-000000000244', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001445", "show_image": false}'),
('20000000-0000-0000-0000-000000000244', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001446", "show_image": false}'),
('20000000-0000-0000-0000-000000000244', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001462", "show_image": false}'),
('20000000-0000-0000-0000-000000000244', 'multiple_choice', 4, '{"question": "A ___ diet helps prevent many diseases.", "audio_text": null, "options": ["balanced", "chronic", "exhausted"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000244', 'multiple_choice', 5, '{"question": "What does ''meditate'' mean?", "audio_text": null, "options": ["Meditar", "Relaxar", "Exercitar-se"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000244', 'matching', 6, '{"pairs": [{"left": "exercise", "right": "exercício físico"}, {"left": "diet", "right": "dieta, alimentação"}, {"left": "balanced", "right": "equilibrado"}, {"left": "wellbeing", "right": "bem-estar"}, {"left": "relax", "right": "relaxar"}, {"left": "meditate", "right": "meditar"}]}'),
('20000000-0000-0000-0000-000000000244', 'fill_blank', 7, '{"sentence": "Take some time every day to ___.", "options": ["relax", "diet", "exercise"], "correct": "relax", "translation": "Reserve um tempo todo dia para relaxar."}'),
('20000000-0000-0000-0000-000000000244', 'fill_blank', 8, '{"sentence": "Sleep is essential for your overall ___.", "options": ["wellbeing", "medication", "injury"], "correct": "wellbeing", "translation": "O sono é essencial para o seu bem-estar geral."}'),
('20000000-0000-0000-0000-000000000244', 'word_order', 9, '{"words": ["Regular", "exercise", "improves", "your", "overall", "health"], "correct_sentence": "Regular exercise improves your overall health", "translation": "Exercício físico regular melhora sua saúde geral"}'),
('20000000-0000-0000-0000-000000000244', 'word_order', 10, '{"words": ["I", "try", "to", "meditate", "every", "morning"], "correct_sentence": "I try to meditate every morning", "translation": "Eu tento meditar toda manhã"}'),
('20000000-0000-0000-0000-000000000244', 'reading', 11, '{"passage": "A healthy lifestyle usually combines regular exercise, a balanced diet, and time to relax. Some people also meditate every morning to improve their wellbeing and start the day with a clear mind.", "translation": "Um estilo de vida saudável geralmente combina exercício regular, uma dieta equilibrada e tempo para relaxar. Algumas pessoas também meditam toda manhã para melhorar seu bem-estar e começar o dia com a mente clara.", "question": "What do some people do every morning, according to the text?", "options": ["Exercise only", "Meditate", "Take medication"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000244', 'listening', 12, '{"audio_text": "Regular exercise improves your overall health. A balanced diet helps prevent many diseases. I try to meditate every morning.", "question": "What helps prevent many diseases, according to the audio?", "options": ["A balanced diet", "Meditation", "Sleep"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000244', 'dictation', 13, '{"audio_text": "Try to keep a balanced lifestyle.", "expected": "Try to keep a balanced lifestyle."}'),
('20000000-0000-0000-0000-000000000244', 'typing', 14, '{"prompt_pt": "Traduza: ''Exercício e uma dieta equilibrada melhoram o bem-estar.''", "expected": "Exercise and a balanced diet improve wellbeing.", "ai_review": true}'),

-- Lição 245: Revisão + corpo e mente em equilíbrio (sleep, nutrition, hydrate, immune system, chronic, prevent)
('20000000-0000-0000-0000-000000000245', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001465", "show_image": false}'),
('20000000-0000-0000-0000-000000000245', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001468", "show_image": false}'),
('20000000-0000-0000-0000-000000000245', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001470", "show_image": false}'),
('20000000-0000-0000-0000-000000000245', 'multiple_choice', 4, '{"question": "A healthy diet strengthens your ___ system.", "audio_text": null, "options": ["immune", "chronic", "nutrition"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000245', 'multiple_choice', 5, '{"question": "What does ''chronic'' mean?", "audio_text": null, "options": ["Crônico", "Curável", "Leve"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000245', 'matching', 6, '{"pairs": [{"left": "sleep", "right": "sono"}, {"left": "nutrition", "right": "nutrição"}, {"left": "hydrate", "right": "hidratar-se"}, {"left": "immune system", "right": "sistema imunológico"}, {"left": "chronic", "right": "crônico"}, {"left": "prevent", "right": "prevenir"}]}'),
('20000000-0000-0000-0000-000000000245', 'fill_blank', 7, '{"sentence": "Remember to ___ during exercise.", "options": ["hydrate", "prevent", "recover"], "correct": "hydrate", "translation": "Lembre-se de se hidratar durante o exercício."}'),
('20000000-0000-0000-0000-000000000245', 'fill_blank', 8, '{"sentence": "Regular checkups can help ___ serious problems.", "options": ["prevent", "hydrate", "chronic"], "correct": "prevent", "translation": "Check-ups regulares podem ajudar a prevenir problemas sérios."}'),
('20000000-0000-0000-0000-000000000245', 'word_order', 9, '{"words": ["Good", "sleep", "is", "one", "of", "the", "keys", "to", "good", "health"], "correct_sentence": "Good sleep is one of the keys to good health", "translation": "Um bom sono é uma das chaves para uma boa saúde"}'),
('20000000-0000-0000-0000-000000000245', 'word_order', 10, '{"words": ["He", "has", "been", "managing", "a", "chronic", "condition", "for", "years"], "correct_sentence": "He has been managing a chronic condition for years", "translation": "Ele vem controlando uma condição crônica há anos"}'),
('20000000-0000-0000-0000-000000000245', 'reading', 11, '{"passage": "Taking care of your health means paying attention to sleep, nutrition, and hydration every day. Good nutrition strengthens the immune system, which helps prevent illness. For people managing a chronic condition, these small daily habits make an even bigger difference.", "translation": "Cuidar da saúde significa prestar atenção ao sono, à nutrição e à hidratação todos os dias. Uma boa nutrição fortalece o sistema imunológico, o que ajuda a prevenir doenças. Para pessoas que controlam uma condição crônica, esses pequenos hábitos diários fazem uma diferença ainda maior.", "question": "What does good nutrition strengthen, according to the text?", "options": ["The immune system", "Mental health", "Sleep quality"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000245', 'listening', 12, '{"audio_text": "Good sleep is one of the keys to good health. Good nutrition helps your body fight illness. Remember to hydrate during exercise.", "question": "What helps the body fight illness, according to the audio?", "options": ["Sleep only", "Good nutrition", "Chronic conditions"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000245', 'dictation', 13, '{"audio_text": "Good nutrition helps your body fight illness.", "expected": "Good nutrition helps your body fight illness."}'),
('20000000-0000-0000-0000-000000000245', 'typing', 14, '{"prompt_pt": "Traduza: ''Dormir bem e se hidratar ajuda a prevenir doenças.''", "expected": "Sleeping well and hydrating helps prevent illness.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000245', 'typing', 15, '{"prompt_pt": "Traduza: ''Uma boa nutrição fortalece o sistema imunológico e melhora o bem-estar.''", "expected": "Good nutrition strengthens the immune system and improves wellbeing.", "ai_review": true}');

-- ============================================================
-- Totais: 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- ============================================================

-- ============================================================================
-- EnglishFlow — Seed de conteúdo B1 — Módulo 7: Listening Intermediário
-- 1 módulo, 5 lições, 30 palavras de vocabulário, 71 exercícios
-- Continua a numeração dos IDs do seed B1 Módulo 6 (047_seed_b1_email_writing.sql).
-- Fecha a primeira leva de temas B1 do roadmap de referência.
-- ============================================================================
-- COMO USAR:
-- 1. Revise o conteúdo abaixo (traduções, frases de exemplo).
-- 2. Aplique no SQL Editor do Supabase (ou via MCP Supabase).
-- 3. Este arquivo só funciona DEPOIS da migration 047_seed_b1_email_writing.sql.
-- ============================================================================


-- ============================================================================
-- PARTE 1 — VOCABULÁRIO (30 palavras)
-- ============================================================================

insert into vocabulary (id, word, ipa, part_of_speech, translation_pt, example_en, example_pt, cefr_level, tags) values
-- Módulo 37: Listening Skills
('30000000-0000-0000-0000-000000001081', 'hold the line', 'hoʊld ðə laɪn', 'phrase', 'aguarde na linha', 'Please hold the line for a moment.', 'Por favor, aguarde na linha um momento.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001082', 'speak up', 'spiːk ʌp', 'phrasal verb', 'fale mais alto', 'Could you speak up? I cannot hear you.', 'Você poderia falar mais alto? Não consigo te ouvir.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001083', 'breaking up', 'ˈbreɪkɪŋ ʌp', 'phrase', 'cortando (a ligação)', 'Sorry, you are breaking up.', 'Desculpe, sua ligação está cortando.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001084', 'can you hear me', 'kæn juː hɪr miː', 'phrase', 'você consegue me ouvir', 'Can you hear me now?', 'Você consegue me ouvir agora?', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001085', 'voicemail', 'ˈvɔɪsmeɪl', 'noun', 'caixa postal', 'Please leave a message on my voicemail.', 'Por favor, deixe uma mensagem na minha caixa postal.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001086', 'hang up', 'hæŋ ʌp', 'phrasal verb', 'desligar (o telefone)', 'Do not hang up yet.', 'Não desligue ainda.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001087', 'now boarding', 'naʊ ˈbɔːrdɪŋ', 'phrase', 'embarque iniciado', 'Flight 202 is now boarding.', 'O voo 202 está com embarque iniciado.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001088', 'delayed', 'dɪˈleɪd', 'adjective', 'atrasado', 'The train is delayed by ten minutes.', 'O trem está atrasado dez minutos.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001089', 'platform', 'ˈplætfɔːrm', 'noun', 'plataforma', 'The train leaves from platform three.', 'O trem parte da plataforma três.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001090', 'departure', 'dɪˈpɑːrtʃər', 'noun', 'partida', 'Check the departure time on the board.', 'Verifique o horário de partida no painel.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001091', 'arrival', 'əˈraɪvəl', 'noun', 'chegada', 'The arrival gate has changed.', 'O portão de chegada mudou.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001092', 'final call', 'ˈfaɪnəl kɔːl', 'phrase', 'última chamada', 'This is the final call for flight 202.', 'Esta é a última chamada para o voo 202.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001093', 'forecast', 'ˈfɔːrkæst', 'noun', 'previsão', 'The forecast shows rain tomorrow.', 'A previsão mostra chuva amanhã.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001094', 'chance of rain', 'tʃæns ʌv reɪn', 'phrase', 'chance de chuva', 'There is a 70% chance of rain.', 'Há 70% de chance de chuva.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001095', 'sunny intervals', 'ˈsʌni ˈɪntərvəlz', 'phrase', 'intervalos de sol', 'Expect sunny intervals in the afternoon.', 'Espere intervalos de sol à tarde.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001096', 'temperature', 'ˈtemprətʃər', 'noun', 'temperatura', 'The temperature will drop tonight.', 'A temperatura vai cair hoje à noite.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001097', 'humidity', 'hjuːˈmɪdəti', 'noun', 'umidade', 'The humidity is very high today.', 'A umidade está muito alta hoje.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001098', 'chance of', 'tʃæns ʌv', 'phrase', 'chance de', 'There is a chance of storms this weekend.', 'Há chance de tempestades neste fim de semana.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001099', 'reschedule', 'riːˈskedʒuːl', 'verb', 'remarcar', 'I need to reschedule our meeting.', 'Eu preciso remarcar nossa reunião.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001100', 'confirm', 'kənˈfɜːrm', 'verb', 'confirmar', 'Can you confirm the appointment?', 'Você pode confirmar o compromisso?', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001101', 'availability', 'əˌveɪləˈbɪləti', 'noun', 'disponibilidade', 'What is your availability this week?', 'Qual é a sua disponibilidade essa semana?', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001102', 'book an appointment', 'bʊk æn əˈpɔɪntmənt', 'phrase', 'marcar uma consulta / compromisso', 'I want to book an appointment for Monday.', 'Eu quero marcar uma consulta para segunda.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001103', 'cancel an appointment', 'ˈkænsəl æn əˈpɔɪntmənt', 'phrase', 'cancelar uma consulta / compromisso', 'She had to cancel an appointment.', 'Ela teve que cancelar uma consulta.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001104', 'remind', 'rɪˈmaɪnd', 'verb', 'lembrar (alguém)', 'Can you remind me tomorrow?', 'Você pode me lembrar amanhã?', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001105', 'follow the instructions', 'ˈfɑːloʊ ði ɪnˈstrʌkʃənz', 'phrase', 'seguir as instruções', 'Please follow the instructions carefully.', 'Por favor, siga as instruções com cuidado.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001106', 'step by step', 'step baɪ step', 'phrase', 'passo a passo', 'The guide explains it step by step.', 'O guia explica passo a passo.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001107', 'in order to', 'ɪn ˈɔːrdər tuː', 'phrase', 'para / a fim de', 'Press the button in order to start.', 'Aperte o botão para começar.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001108', 'make sure', 'meɪk ʃʊr', 'phrase', 'certifique-se', 'Make sure the door is locked.', 'Certifique-se de que a porta está trancada.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001109', 'according to', 'əˈkɔːrdɪŋ tuː', 'phrase', 'de acordo com', 'According to the announcement, the flight is delayed.', 'De acordo com o anúncio, o voo está atrasado.', 'B1', array['listening']),
('30000000-0000-0000-0000-000000001110', 'pay attention', 'peɪ əˈtenʃən', 'phrase', 'prestar atenção', 'Please pay attention to the instructions.', 'Por favor, preste atenção nas instruções.', 'B1', array['listening']);


-- ============================================================================
-- PARTE 2 — MÓDULO
-- ============================================================================

insert into modules (id, cefr_level, title, description, sort_order, is_published) values
('10000000-0000-0000-0000-000000000037', 'B1', 'Listening Intermediário', 'Treine a compreensão auditiva em ligações, anúncios de viagem, previsão do tempo e agendamentos.', 7, true);


-- ============================================================================
-- PARTE 3 — LIÇÕES (5)
-- ============================================================================

insert into lessons (id, module_id, title, sort_order, xp_reward) values
('20000000-0000-0000-0000-000000000181', '10000000-0000-0000-0000-000000000037', 'Listening — Phone Calls', 1, 10),
('20000000-0000-0000-0000-000000000182', '10000000-0000-0000-0000-000000000037', 'Listening — Airport & Train Announcements', 2, 10),
('20000000-0000-0000-0000-000000000183', '10000000-0000-0000-0000-000000000037', 'Listening — Weather Forecast', 3, 10),
('20000000-0000-0000-0000-000000000184', '10000000-0000-0000-0000-000000000037', 'Listening — Appointments & Scheduling', 4, 10),
('20000000-0000-0000-0000-000000000185', '10000000-0000-0000-0000-000000000037', 'Listening — Following Instructions (Revisão)', 5, 15);


-- ============================================================================
-- PARTE 4 — EXERCÍCIOS
-- ============================================================================

-- ---------- Lição 37.1: Listening — Phone Calls ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000181', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001081", "show_image": false}'),
('20000000-0000-0000-0000-000000000181', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001084", "show_image": false}'),
('20000000-0000-0000-0000-000000000181', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001086", "show_image": false}'),
('20000000-0000-0000-0000-000000000181', 'multiple_choice', 4, '{"question": "Complete: Please ___ for a moment.", "audio_text": null, "options": ["hold the line", "hang up", "speak up"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000181', 'multiple_choice', 5, '{"question": "Complete: Sorry, you are ___. I can barely hear you.", "audio_text": null, "options": ["breaking up", "hanging up", "holding"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000181', 'matching', 6, '{"pairs": [{"left": "hold the line", "right": "aguarde na linha"}, {"left": "speak up", "right": "fale mais alto"}, {"left": "breaking up", "right": "cortando"}, {"left": "can you hear me", "right": "você consegue me ouvir"}, {"left": "voicemail", "right": "caixa postal"}, {"left": "hang up", "right": "desligar"}]}'),
('20000000-0000-0000-0000-000000000181', 'fill_blank', 7, '{"sentence": "Could you ___? I cannot hear you.", "options": ["speak up", "hang up", "hold the line"], "correct": "speak up", "translation": "Você poderia falar mais alto? Não consigo te ouvir."}'),
('20000000-0000-0000-0000-000000000181', 'fill_blank', 8, '{"sentence": "Please leave a message on my ___.", "options": ["voicemail", "platform", "forecast"], "correct": "voicemail", "translation": "Por favor, deixe uma mensagem na minha caixa postal."}'),
('20000000-0000-0000-0000-000000000181', 'word_order', 9, '{"words": ["Do", "not", "hang", "up", "yet"], "correct_sentence": "Do not hang up yet", "translation": "Não desligue ainda"}'),
('20000000-0000-0000-0000-000000000181', 'reading', 10, '{"passage": "Phone calls can be tricky when the connection is bad. If you cannot hear someone well, you can say ''Could you speak up?'' or ''Sorry, you are breaking up.'' If you need a moment, you can ask the person to hold the line. And if no one answers, you can leave a message on their voicemail.", "translation": "Chamadas telefônicas podem ser complicadas quando a conexão está ruim. Se você não consegue ouvir bem alguém, pode dizer ''Você poderia falar mais alto?'' ou ''Desculpe, sua ligação está cortando.'' Se precisar de um momento, pode pedir para a pessoa aguardar na linha. E se ninguém atender, você pode deixar uma mensagem na caixa postal.", "question": "What can you say if the connection is bad?", "options": ["Can you hear me?", "You are breaking up", "Hang up"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000181', 'listening', 11, '{"audio_text": "Hello, can you hear me? Sorry, you are breaking up. Could you speak up, please?", "question": "What is the problem in the call?", "options": ["The person hung up", "The connection is bad", "No one answered"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000181', 'listening', 12, '{"audio_text": "Please hold the line for a moment. I will transfer your call now.", "question": "What does the speaker ask the caller to do?", "options": ["Hang up", "Hold the line", "Leave a voicemail"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000181', 'dictation', 13, '{"audio_text": "Could you speak up? You are breaking up.", "expected": "Could you speak up? You are breaking up."}'),
('20000000-0000-0000-0000-000000000181', 'typing', 14, '{"prompt_pt": "Traduza: ''Você consegue me ouvir agora?''", "expected": "Can you hear me now?", "ai_review": true}');

-- ---------- Lição 37.2: Listening — Airport & Train Announcements ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000182', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001087", "show_image": false}'),
('20000000-0000-0000-0000-000000000182', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001089", "show_image": false}'),
('20000000-0000-0000-0000-000000000182', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001092", "show_image": false}'),
('20000000-0000-0000-0000-000000000182', 'multiple_choice', 4, '{"question": "Complete: Flight 202 is ___.", "audio_text": null, "options": ["now boarding", "delayed by", "platform three"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000182', 'multiple_choice', 5, '{"question": "Complete: The train leaves from ___ three.", "audio_text": null, "options": ["platform", "departure", "arrival"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000182', 'matching', 6, '{"pairs": [{"left": "now boarding", "right": "embarque iniciado"}, {"left": "delayed", "right": "atrasado"}, {"left": "platform", "right": "plataforma"}, {"left": "departure", "right": "partida"}, {"left": "arrival", "right": "chegada"}, {"left": "final call", "right": "última chamada"}]}'),
('20000000-0000-0000-0000-000000000182', 'fill_blank', 7, '{"sentence": "The train is ___ by ten minutes.", "options": ["delayed", "boarding", "arrival"], "correct": "delayed", "translation": "O trem está atrasado dez minutos."}'),
('20000000-0000-0000-0000-000000000182', 'fill_blank', 8, '{"sentence": "This is the ___ for flight 202.", "options": ["final call", "platform", "forecast"], "correct": "final call", "translation": "Esta é a última chamada para o voo 202."}'),
('20000000-0000-0000-0000-000000000182', 'word_order', 9, '{"words": ["Check", "the", "departure", "time", "on", "the", "board"], "correct_sentence": "Check the departure time on the board", "translation": "Verifique o horário de partida no painel"}'),
('20000000-0000-0000-0000-000000000182', 'reading', 10, '{"passage": "At airports and train stations, announcements use specific phrases. ''Now boarding'' means passengers can start entering the plane. ''Delayed'' means the departure or arrival time changed. The ''final call'' is the last announcement before the gate closes, so passengers should hurry if they hear it.", "translation": "Em aeroportos e estações de trem, os anúncios usam frases específicas. ''Now boarding'' significa que os passageiros podem começar a entrar no avião. ''Delayed'' significa que o horário de partida ou chegada mudou. A ''final call'' é o último anúncio antes do portão fechar, então os passageiros devem se apressar se ouvirem.", "question": "What does the ''final call'' mean?", "options": ["Boarding just started", "The last announcement before the gate closes", "The flight is delayed"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000182', 'listening', 11, '{"audio_text": "Attention passengers, flight 202 to Rio de Janeiro is now boarding at gate twelve.", "question": "Where should passengers go?", "options": ["Platform three", "Gate twelve", "The inbox"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000182', 'listening', 12, '{"audio_text": "The train to Sao Paulo is delayed by fifteen minutes and will now depart from platform five.", "question": "How long is the delay?", "options": ["Five minutes", "Ten minutes", "Fifteen minutes"], "correct_index": 2}'),
('20000000-0000-0000-0000-000000000182', 'dictation', 13, '{"audio_text": "The train is delayed by ten minutes and will leave from platform three.", "expected": "The train is delayed by ten minutes and will leave from platform three."}'),
('20000000-0000-0000-0000-000000000182', 'typing', 14, '{"prompt_pt": "Traduza: ''O trem parte da plataforma três.''", "expected": "The train leaves from platform three.", "ai_review": true}');

-- ---------- Lição 37.3: Listening — Weather Forecast ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000183', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001093", "show_image": false}'),
('20000000-0000-0000-0000-000000000183', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001096", "show_image": false}'),
('20000000-0000-0000-0000-000000000183', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001097", "show_image": false}'),
('20000000-0000-0000-0000-000000000183', 'multiple_choice', 4, '{"question": "Complete: The ___ shows rain tomorrow.", "audio_text": null, "options": ["forecast", "platform", "voicemail"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000183', 'multiple_choice', 5, '{"question": "Complete: There is a 70% ___ rain.", "audio_text": null, "options": ["chance of", "temperature of", "forecast of"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000183', 'matching', 6, '{"pairs": [{"left": "forecast", "right": "previsão"}, {"left": "chance of rain", "right": "chance de chuva"}, {"left": "sunny intervals", "right": "intervalos de sol"}, {"left": "temperature", "right": "temperatura"}, {"left": "humidity", "right": "umidade"}, {"left": "chance of", "right": "chance de"}]}'),
('20000000-0000-0000-0000-000000000183', 'fill_blank', 7, '{"sentence": "Expect ___ in the afternoon.", "options": ["sunny intervals", "chance of rain", "humidity"], "correct": "sunny intervals", "translation": "Espere intervalos de sol à tarde."}'),
('20000000-0000-0000-0000-000000000183', 'fill_blank', 8, '{"sentence": "The ___ is very high today.", "options": ["humidity", "temperature", "forecast"], "correct": "humidity", "translation": "A umidade está muito alta hoje."}'),
('20000000-0000-0000-0000-000000000183', 'word_order', 9, '{"words": ["The", "temperature", "will", "drop", "tonight"], "correct_sentence": "The temperature will drop tonight", "translation": "A temperatura vai cair hoje à noite"}'),
('20000000-0000-0000-0000-000000000183', 'reading', 10, '{"passage": "Weather forecasts use common phrases that are useful to understand. ''Chance of rain'' tells you the probability it will rain. ''Sunny intervals'' means the sun will appear between clouds. The forecast usually also mentions temperature and humidity, which can affect how hot or uncomfortable the day feels.", "translation": "Previsões do tempo usam frases comuns que são úteis de entender. ''Chance of rain'' te diz a probabilidade de chover. ''Sunny intervals'' significa que o sol vai aparecer entre as nuvens. A previsão geralmente também menciona temperatura e umidade, que podem afetar o quão quente ou desconfortável o dia parece.", "question": "What does ''sunny intervals'' mean?", "options": ["Constant rain", "The sun appearing between clouds", "High humidity"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000183', 'listening', 11, '{"audio_text": "Today''s forecast shows a 70% chance of rain in the morning, with sunny intervals in the afternoon.", "question": "When is rain most likely?", "options": ["Morning", "Afternoon", "Night"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000183', 'listening', 12, '{"audio_text": "The temperature will drop tonight, and humidity will remain high throughout the week.", "question": "What will happen to the temperature tonight?", "options": ["It will rise", "It will drop", "It will stay the same"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000183', 'dictation', 13, '{"audio_text": "The forecast shows a chance of rain, and the temperature will drop tonight.", "expected": "The forecast shows a chance of rain, and the temperature will drop tonight."}'),
('20000000-0000-0000-0000-000000000183', 'typing', 14, '{"prompt_pt": "Traduza: ''Há 70% de chance de chuva.''", "expected": "There is a 70% chance of rain.", "ai_review": true}');

-- ---------- Lição 37.4: Listening — Appointments & Scheduling ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000184', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001099", "show_image": false}'),
('20000000-0000-0000-0000-000000000184', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001100", "show_image": false}'),
('20000000-0000-0000-0000-000000000184', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001102", "show_image": false}'),
('20000000-0000-0000-0000-000000000184', 'multiple_choice', 4, '{"question": "Complete: I need to ___ our meeting.", "audio_text": null, "options": ["reschedule", "confirm", "remind"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000184', 'multiple_choice', 5, '{"question": "Complete: Can you ___ the appointment for tomorrow?", "audio_text": null, "options": ["confirm", "availability", "remind"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000184', 'matching', 6, '{"pairs": [{"left": "reschedule", "right": "remarcar"}, {"left": "confirm", "right": "confirmar"}, {"left": "availability", "right": "disponibilidade"}, {"left": "book an appointment", "right": "marcar uma consulta"}, {"left": "cancel an appointment", "right": "cancelar uma consulta"}, {"left": "remind", "right": "lembrar"}]}'),
('20000000-0000-0000-0000-000000000184', 'fill_blank', 7, '{"sentence": "What is your ___ this week?", "options": ["availability", "reschedule", "confirm"], "correct": "availability", "translation": "Qual é a sua disponibilidade essa semana?"}'),
('20000000-0000-0000-0000-000000000184', 'fill_blank', 8, '{"sentence": "She had to ___ an appointment.", "options": ["cancel", "book", "confirm"], "correct": "cancel", "translation": "Ela teve que cancelar uma consulta."}'),
('20000000-0000-0000-0000-000000000184', 'word_order', 9, '{"words": ["I", "want", "to", "book", "an", "appointment", "for", "Monday"], "correct_sentence": "I want to book an appointment for Monday", "translation": "Eu quero marcar uma consulta para segunda"}'),
('20000000-0000-0000-0000-000000000184', 'reading', 10, '{"passage": "Scheduling appointments over the phone requires clear communication. You might need to book an appointment, confirm the date and time, or reschedule if something comes up. Sometimes you have to cancel an appointment completely, and it helps if someone can remind you the day before.", "translation": "Marcar compromissos por telefone exige comunicação clara. Você pode precisar marcar uma consulta, confirmar a data e o horário, ou remarcar se algo aparecer. Às vezes você precisa cancelar um compromisso completamente, e ajuda se alguém puder te lembrar no dia anterior.", "question": "What can help before an appointment?", "options": ["Canceling it", "A reminder the day before", "Rescheduling it"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000184', 'listening', 11, '{"audio_text": "I would like to book an appointment for Monday morning. Can you confirm what times are available?", "question": "What does the caller want to know?", "options": ["The price", "Available times", "The address"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000184', 'listening', 12, '{"audio_text": "I am sorry, but I need to reschedule. My availability changed this week.", "question": "Why does the caller need to reschedule?", "options": ["The office is closed", "Their availability changed", "They want to cancel"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000184', 'dictation', 13, '{"audio_text": "I need to reschedule our meeting, so please confirm your availability.", "expected": "I need to reschedule our meeting, so please confirm your availability."}'),
('20000000-0000-0000-0000-000000000184', 'typing', 14, '{"prompt_pt": "Traduza: ''Você pode me lembrar amanhã?''", "expected": "Can you remind me tomorrow?", "ai_review": true}');

-- ---------- Lição 37.5: Listening — Following Instructions (Revisão) ----------
insert into exercises (lesson_id, type, sort_order, content) values
('20000000-0000-0000-0000-000000000185', 'flashcard', 1, '{"vocabulary_id": "30000000-0000-0000-0000-000000001105", "show_image": false}'),
('20000000-0000-0000-0000-000000000185', 'flashcard', 2, '{"vocabulary_id": "30000000-0000-0000-0000-000000001108", "show_image": false}'),
('20000000-0000-0000-0000-000000000185', 'flashcard', 3, '{"vocabulary_id": "30000000-0000-0000-0000-000000001110", "show_image": false}'),
('20000000-0000-0000-0000-000000000185', 'multiple_choice', 4, '{"question": "Complete: Please ___ carefully.", "audio_text": null, "options": ["follow the instructions", "hang up", "reschedule"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000185', 'multiple_choice', 5, '{"question": "Complete: ___ the door is locked before you leave.", "audio_text": null, "options": ["Make sure", "Pay attention", "Confirm"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000185', 'matching', 6, '{"pairs": [{"left": "follow the instructions", "right": "seguir as instruções"}, {"left": "step by step", "right": "passo a passo"}, {"left": "in order to", "right": "para"}, {"left": "make sure", "right": "certifique-se"}, {"left": "according to", "right": "de acordo com"}, {"left": "pay attention", "right": "prestar atenção"}]}'),
('20000000-0000-0000-0000-000000000185', 'fill_blank', 7, '{"sentence": "The guide explains it ___.", "options": ["step by step", "in order to", "according to"], "correct": "step by step", "translation": "O guia explica passo a passo."}'),
('20000000-0000-0000-0000-000000000185', 'fill_blank', 8, '{"sentence": "___ the announcement, the flight is delayed.", "options": ["According to", "In order to", "Make sure"], "correct": "According to", "translation": "De acordo com o anúncio, o voo está atrasado."}'),
('20000000-0000-0000-0000-000000000185', 'word_order', 9, '{"words": ["Press", "the", "button", "in", "order", "to", "start"], "correct_sentence": "Press the button in order to start", "translation": "Aperte o botão para começar"}'),
('20000000-0000-0000-0000-000000000185', 'reading', 10, '{"passage": "Whether you are listening to a phone call, an airport announcement, or a weather forecast, it helps to follow the instructions step by step. Pay attention to key words, and make sure you understand the main idea, even if you miss a few words. According to language experts, this is the best way to improve listening skills in order to become more confident.", "translation": "Seja ouvindo uma ligação, um anúncio de aeroporto ou uma previsão do tempo, ajuda seguir as instruções passo a passo. Preste atenção nas palavras-chave, e certifique-se de entender a ideia principal, mesmo perdendo algumas palavras. De acordo com especialistas em idiomas, essa é a melhor forma de melhorar a compreensão auditiva para ficar mais confiante.", "question": "According to the text, what should you do if you miss a few words?", "options": ["Stop listening", "Make sure you understand the main idea", "Ask for a transcript"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000185', 'listening', 11, '{"audio_text": "Please follow the instructions step by step, and make sure you pay attention to the final call for boarding.", "question": "What should listeners pay attention to?", "options": ["The weather forecast", "The final call for boarding", "Their voicemail"], "correct_index": 1}'),
('20000000-0000-0000-0000-000000000185', 'listening', 12, '{"audio_text": "According to the forecast, there is a chance of rain, so make sure you bring an umbrella in order to stay dry.", "question": "Why should you bring an umbrella?", "options": ["To stay dry", "To confirm the appointment", "To follow the instructions"], "correct_index": 0}'),
('20000000-0000-0000-0000-000000000185', 'dictation', 13, '{"audio_text": "Please follow the instructions step by step, and make sure you pay attention.", "expected": "Please follow the instructions step by step, and make sure you pay attention."}'),
('20000000-0000-0000-0000-000000000185', 'typing', 14, '{"prompt_pt": "Traduza: ''Por favor, siga as instruções com cuidado.''", "expected": "Please follow the instructions carefully.", "ai_review": true}'),
('20000000-0000-0000-0000-000000000185', 'typing', 15, '{"prompt_pt": "Traduza: ''Por favor, preste atenção nas instruções.''", "expected": "Please pay attention to the instructions.", "ai_review": true}');

-- ============================================================================
-- FIM DO SEED B1 — MÓDULO 7 (LISTENING INTERMEDIÁRIO)
-- Total: 30 vocabulário | 1 módulo | 5 lições | 71 exercícios
-- ============================================================================

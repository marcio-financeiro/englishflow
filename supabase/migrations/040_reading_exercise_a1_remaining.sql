-- 040_reading_exercise_a1_remaining.sql
-- Adiciona o exercicio de leitura (reading) como ultimo item em todas as
-- licoes A1 que ainda nao tinham (as 2 licoes piloto ja foram cobertas na
-- migration 039). Usa dollar-quoting ($j$...$j$) para nao precisar escapar
-- apostrofos (doesn't, isn't, won't etc.) dentro do JSON.

insert into exercises (lesson_id, type, sort_order, content) values

-- Greetings & Introductions
('20000000-0000-0000-0000-000000000001', 'reading', 8, $j${
  "passage": "Good morning, teacher! It is nice to meet you. Sorry, I am late. Good night, see you tomorrow!",
  "translation": "Bom dia, professor! E bom te conhecer. Desculpe, estou atrasado. Boa noite, ate amanha!",
  "question": "What does the student say when leaving at night?",
  "options": ["Good morning", "Good night", "Hello"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000002', 'reading', 8, $j${
  "passage": "Excuse me, where is the bathroom, please? Thank you! No, I am not late. Sorry, I have to go.",
  "translation": "Com licenca, onde e o banheiro, por favor? Obrigado! Nao, eu nao estou atrasado. Desculpe, eu tenho que ir.",
  "question": "What does the student ask for?",
  "options": ["The bathroom", "The teacher", "The time"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000003', 'reading', 8, $j${
  "passage": "Hello! My name is Carlos. I am from Brazil. Are you from Brazil too? My name is Ana, and I am from Brazil.",
  "translation": "Ola! Meu nome e Carlos. Eu sou do Brasil. Voce tambem e do Brasil? Meu nome e Ana, e eu sou do Brasil.",
  "question": "Where is Carlos from?",
  "options": ["The United States", "Brazil", "Portugal"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000004', 'reading', 8, $j${
  "passage": "Hello! I am Lucas. I am from Brazil. This is my friend Sofia. She is from Portugal, and her country is very beautiful.",
  "translation": "Ola! Eu sou Lucas. Eu sou do Brasil. Esta e minha amiga Sofia. Ela e de Portugal, e o pais dela e muito bonito.",
  "question": "Where is Sofia from?",
  "options": ["Brazil", "Portugal", "Spain"],
  "correct_index": 1
}$j$),

-- Numbers, Colors & Family
('20000000-0000-0000-0000-000000000006', 'reading', 9, $j${
  "passage": "I have three sisters and one brother. There are four people at home. My teacher asks, 'How many brothers do you have?' I say, 'One.'",
  "translation": "Eu tenho tres irmas e um irmao. Ha quatro pessoas em casa. Minha professora pergunta: 'Quantos irmaos voce tem?' Eu digo: 'Um.'",
  "question": "How many brothers does the speaker have?",
  "options": ["One", "Three", "Four"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000007', 'reading', 8, $j${
  "passage": "My car is red. The sky is blue today. I like green and yellow too, but my favorite color is blue.",
  "translation": "Meu carro e vermelho. O ceu esta azul hoje. Eu tambem gosto de verde e amarelo, mas minha cor favorita e azul.",
  "question": "What is the speaker's favorite color?",
  "options": ["Red", "Green", "Blue"],
  "correct_index": 2
}$j$),

('20000000-0000-0000-0000-000000000008', 'reading', 9, $j${
  "passage": "This is my family. My father is a doctor. My mother is at home. I have one brother and one sister.",
  "translation": "Esta e minha familia. Meu pai e medico. Minha mae esta em casa. Eu tenho um irmao e uma irma.",
  "question": "What is the father's job?",
  "options": ["Teacher", "Doctor", "Driver"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000009', 'reading', 8, $j${
  "passage": "My grandmother and grandfather are old, but they are happy. My mother has two sisters. My grandfather is older than my grandmother.",
  "translation": "Minha avo e meu avo sao velhos, mas estao felizes. Minha mae tem duas irmas. Meu avo e mais velho que minha avo.",
  "question": "How many sisters does the mother have?",
  "options": ["One", "Two", "Three"],
  "correct_index": 1
}$j$),

-- Verb to Be
('20000000-0000-0000-0000-000000000021', 'reading', 8, $j${
  "passage": "I am Ana. I am a student. My brother is a doctor. He is from Brazil.",
  "translation": "Eu sou a Ana. Eu sou estudante. Meu irmao e medico. Ele e do Brasil.",
  "question": "What is the brother's job?",
  "options": ["Student", "Doctor", "Teacher"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000022', 'reading', 9, $j${
  "passage": "Is the book here? Yes, it is. Is the teacher here today? Yes, she is.",
  "translation": "O livro esta aqui? Sim, esta. A professora esta aqui hoje? Sim, esta.",
  "question": "Is the book here?",
  "options": ["Yes, it is", "No, it isn't", "I don't know"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000023', 'reading', 8, $j${
  "passage": "I am not tired today, but I am hungry. He is late. She is not late; she is here.",
  "translation": "Eu nao estou cansado hoje, mas estou com fome. Ele esta atrasado. Ela nao esta atrasada; ela esta aqui.",
  "question": "Who is late?",
  "options": ["I", "He", "She"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000024', 'reading', 9, $j${
  "passage": "How are you today? I am fine, thank you. Are you busy? No, I am free today.",
  "translation": "Como voce esta hoje? Estou bem, obrigado. Voce esta ocupado? Nao, estou livre hoje.",
  "question": "Is the speaker busy today?",
  "options": ["Yes", "No", "Sometimes"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000025', 'reading', 9, $j${
  "passage": "I am a doctor. My brother is an engineer. My sister is married, and she is happy. Are you married or single?",
  "translation": "Eu sou medico. Meu irmao e engenheiro. Minha irma e casada, e ela esta feliz. Voce e casado ou solteiro?",
  "question": "What is the speaker's job?",
  "options": ["Engineer", "Doctor", "Teacher"],
  "correct_index": 1
}$j$),

-- Present Simple
('20000000-0000-0000-0000-000000000031', 'reading', 8, $j${
  "passage": "I like music. On the weekend, we play soccer. They like basketball too.",
  "translation": "Eu gosto de musica. No fim de semana, nos jogamos futebol. Eles tambem gostam de basquete.",
  "question": "What do they play on the weekend?",
  "options": ["Basketball", "Soccer", "Music"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000032', 'reading', 8, $j${
  "passage": "He works in a bank. She lives in the city, in a small apartment.",
  "translation": "Ele trabalha em um banco. Ela mora na cidade, em um apartamento pequeno.",
  "question": "Where does he work?",
  "options": ["In a bank", "In a school", "In a house"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000033', 'reading', 8, $j${
  "passage": "Do you like coffee? Yes, I do. Do you like music? No, I don't, but I like books.",
  "translation": "Voce gosta de cafe? Sim, gosto. Voce gosta de musica? Nao, nao gosto, mas eu gosto de livros.",
  "question": "Does the speaker like music?",
  "options": ["Yes", "No", "Sometimes"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000034', 'reading', 8, $j${
  "passage": "Does he like his job? Yes, he works every day. Does she like her job too? Yes, she does.",
  "translation": "Ele gosta do trabalho dele? Sim, ele trabalha todos os dias. Ela tambem gosta do trabalho dela? Sim, gosta.",
  "question": "How often does he work?",
  "options": ["Every day", "Once a week", "Never"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000035', 'reading', 9, $j${
  "passage": "I don't like fish, but I like tea. He doesn't like soccer; he likes music. She works on the weekend.",
  "translation": "Eu nao gosto de peixe, mas gosto de cha. Ele nao gosta de futebol; ele gosta de musica. Ela trabalha no fim de semana.",
  "question": "What does the speaker like?",
  "options": ["Fish", "Tea", "Soccer"],
  "correct_index": 1
}$j$),

-- Food
('20000000-0000-0000-0000-000000000041', 'reading', 8, $j${
  "passage": "Every morning, I eat an apple and bread. For lunch, I like rice and salad. My sister likes chicken and fish.",
  "translation": "Toda manha, eu como uma maca e pao. No almoco, eu gosto de arroz e salada. Minha irma gosta de frango e peixe.",
  "question": "What does the speaker eat every morning?",
  "options": ["An apple", "Rice", "Fish"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000042', 'reading', 8, $j${
  "passage": "For breakfast, I have bread and eggs. For lunch, he eats chicken with rice. For dinner, she likes fish and salad.",
  "translation": "No cafe da manha, eu como pao e ovos. No almoco, ele come frango com arroz. No jantar, ela gosta de peixe e salada.",
  "question": "What does the speaker eat for breakfast?",
  "options": ["Bread and eggs", "Chicken and rice", "Fish and salad"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000043', 'reading', 8, $j${
  "passage": "In the morning, I drink coffee. In the afternoon, she drinks tea. Do you drink a lot of water every day?",
  "translation": "De manha, eu bebo cafe. A tarde, ela bebe cha. Voce bebe muita agua todos os dias?",
  "question": "What does the speaker drink in the morning?",
  "options": ["Tea", "Coffee", "Juice"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000044', 'reading', 9, $j${
  "passage": "Excuse me, can we order, please? We have a menu here. I want chicken, and she wants fish. Please bring the bill.",
  "translation": "Com licenca, podemos pedir, por favor? Nos temos um cardapio aqui. Eu quero frango, e ela quer peixe. Por favor, traga a conta.",
  "question": "What does the speaker want to eat?",
  "options": ["Chicken", "Fish", "Rice"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000045', 'reading', 9, $j${
  "passage": "We have breakfast at eight in the morning. Lunch is spicy soup, and it is delicious. Dinner is cheap and good too.",
  "translation": "Nos tomamos cafe da manha as oito da manha. O almoco e uma sopa apimentada, e e deliciosa. O jantar tambem e barato e bom.",
  "question": "What time is breakfast?",
  "options": ["Seven", "Eight", "Nine"],
  "correct_index": 1
}$j$),

-- Months & Seasons
('20000000-0000-0000-0000-000000000051', 'reading', 8, $j${
  "passage": "My birthday is in April. My friend's birthday is in June. It is summer, and the weather is nice.",
  "translation": "Meu aniversario e em abril. O aniversario do meu amigo e em junho. E verao, e o tempo esta bom.",
  "question": "When is the speaker's birthday?",
  "options": ["January", "April", "June"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000052', 'reading', 8, $j${
  "passage": "In July, we have vacation. My birthday is in October. Last year, in December, we had a big vacation.",
  "translation": "Em julho, temos ferias. Meu aniversario e em outubro. No ano passado, em dezembro, tivemos ferias longas.",
  "question": "When is the speaker's birthday?",
  "options": ["July", "October", "December"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000053', 'reading', 8, $j${
  "passage": "In summer, it is hot. In winter, it is cold. I am from a country with four seasons: spring, summer, fall, and winter.",
  "translation": "No verao, faz calor. No inverno, faz frio. Eu sou de um pais com quatro estacoes: primavera, verao, outono e inverno.",
  "question": "What season is cold?",
  "options": ["Summer", "Spring", "Winter"],
  "correct_index": 2
}$j$),

('20000000-0000-0000-0000-000000000054', 'reading', 9, $j${
  "passage": "Today is my birthday. My calendar shows the date and the month. Every week, I check my phone for my schedule.",
  "translation": "Hoje e meu aniversario. Meu calendario mostra a data e o mes. Toda semana, eu confiro minha agenda no telefone.",
  "question": "What does the speaker check every week?",
  "options": ["The calendar", "The schedule", "The email"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000055', 'reading', 9, $j${
  "passage": "Today is a holiday! Next month, we have my sister's birthday. Every year, we celebrate our wedding anniversary in July.",
  "translation": "Hoje e feriado! No mes que vem, temos o aniversario da minha irma. Todo ano, celebramos nosso aniversario de casamento em julho.",
  "question": "What do they celebrate in July?",
  "options": ["A birthday", "A holiday", "An anniversary"],
  "correct_index": 2
}$j$),

-- Directions
('20000000-0000-0000-0000-000000000061', 'reading', 8, $j${
  "passage": "Go straight and turn left at the corner. The bank is next to the traffic light. You should stop at the corner.",
  "translation": "Va em frente e vire a esquerda na esquina. O banco fica ao lado do semaforo. Voce deve parar na esquina.",
  "question": "Where is the bank?",
  "options": ["Next to the traffic light", "Behind the school", "Far from here"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000062', 'reading', 8, $j${
  "passage": "Excuse me, is there a map of the street? I need the address of a house near here. Thank you very much!",
  "translation": "Com licenca, tem um mapa da rua? Eu preciso do endereco de uma casa perto daqui. Muito obrigado!",
  "question": "What does the speaker need?",
  "options": ["A map", "An address", "A house"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000063', 'reading', 8, $j${
  "passage": "The museum is in the north. The bank is in the south, near the map. Go east to find the address.",
  "translation": "O museu fica ao norte. O banco fica ao sul, perto do mapa. Va para o leste para encontrar o endereco.",
  "question": "Where is the museum?",
  "options": ["North", "South", "West"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000064', 'reading', 9, $j${
  "passage": "There is a pharmacy next to the hospital. The supermarket is near the park. The post office is next to the bank.",
  "translation": "Ha uma farmacia ao lado do hospital. O supermercado fica perto do parque. Os correios ficam ao lado do banco.",
  "question": "What is next to the hospital?",
  "options": ["A pharmacy", "A park", "A bank"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000065', 'reading', 9, $j${
  "passage": "We are near the bus station. The train station is far from here, in the north. Let's check in early to the airport.",
  "translation": "Nos estamos perto da estacao de onibus. A estacao de trem e longe daqui, ao norte. Vamos fazer o check-in cedo no aeroporto.",
  "question": "Where is the train station?",
  "options": ["Near here", "Far from here", "At the airport"],
  "correct_index": 1
}$j$),

-- Clothes & Shopping
('20000000-0000-0000-0000-000000000071', 'reading', 8, $j${
  "passage": "Today she is wearing a red dress. He is wearing blue pants and a shirt. I am wearing shoes and socks.",
  "translation": "Hoje ela esta usando um vestido vermelho. Ele esta usando calca azul e camisa. Eu estou usando sapatos e meias.",
  "question": "Who is wearing a red dress today?",
  "options": ["I", "She", "He"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000072', 'reading', 8, $j${
  "passage": "In winter, I always wear a coat and a sweater. He has a new jacket. It is cold today, so wear a hat.",
  "translation": "No inverno, eu sempre uso um casaco e um sueter. Ele tem uma jaqueta nova. Esta frio hoje, entao use um chapeu.",
  "question": "What does the speaker always wear in winter?",
  "options": ["A T-shirt", "A coat and sweater", "Shorts"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000073', 'reading', 8, $j${
  "passage": "I want to try on this shirt. Do you have a medium size? The fitting room is next to the mirror.",
  "translation": "Eu quero experimentar esta camisa. Voces tem o tamanho medio? O provador fica ao lado do espelho.",
  "question": "Where is the fitting room?",
  "options": ["Next to the store", "Next to the mirror", "Next to the cashier"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000074', 'reading', 9, $j${
  "passage": "Can I pay with a credit card, please? I don't have cash today. Please give me the receipt.",
  "translation": "Posso pagar com cartao de credito, por favor? Eu nao tenho dinheiro hoje. Por favor, me de o recibo.",
  "question": "How does the speaker want to pay?",
  "options": ["With cash", "With a credit card", "With a discount"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000075', 'reading', 9, $j${
  "passage": "The jacket is expensive, but today there is a discount at the mall. The cashier says the shoes are out of stock.",
  "translation": "A jaqueta e cara, mas hoje ha um desconto no shopping. O caixa diz que os sapatos estao fora de estoque.",
  "question": "What is out of stock?",
  "options": ["The jacket", "The shoes", "The receipt"],
  "correct_index": 1
}$j$),

-- Body & Health
('20000000-0000-0000-0000-000000000081', 'reading', 8, $j${
  "passage": "My arm and my leg hurt. She has a blue hat on her head. I have a small nose.",
  "translation": "Meu braco e minha perna doem. Ela tem um chapeu azul na cabeca. Eu tenho um nariz pequeno.",
  "question": "Who has a blue hat on her head?",
  "options": ["I", "She", "My foot"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000082', 'reading', 8, $j${
  "passage": "Today I feel sick. I have a fever and a headache. She has a cold too.",
  "translation": "Hoje eu me sinto mal. Eu estou com febre e dor de cabeca. Ela tambem esta resfriada.",
  "question": "What does the speaker have today?",
  "options": ["A fever and headache", "A cough only", "Nothing"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000083', 'reading', 8, $j${
  "passage": "I have an appointment at the hospital tomorrow. The doctor works with a nurse. I need medicine from the pharmacy.",
  "translation": "Eu tenho uma consulta no hospital amanha. O medico trabalha com uma enfermeira. Eu preciso de remedio da farmacia.",
  "question": "When is the appointment?",
  "options": ["Today", "Tomorrow", "Yesterday"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000084', 'reading', 8, $j${
  "passage": "To stay healthy, I exercise every morning. I am tired today, so I need to rest. She is sick, but I am healthy.",
  "translation": "Para ficar saudavel, eu me exercito toda manha. Estou cansado hoje, entao preciso descansar. Ela esta doente, mas eu estou saudavel.",
  "question": "When does the speaker exercise?",
  "options": ["Every morning", "Every night", "Never"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000085', 'reading', 9, $j${
  "passage": "I have a fever, so I should rest at home instead of going to work tomorrow. I will take medicine. Feel better soon!",
  "translation": "Eu estou com febre, entao devo descansar em casa em vez de ir trabalhar amanha. Vou tomar remedio. Melhoras!",
  "question": "What should the speaker do?",
  "options": ["Go to work", "Rest at home", "Go to the gym"],
  "correct_index": 1
}$j$),

-- House & Furniture
('20000000-0000-0000-0000-000000000091', 'reading', 8, $j${
  "passage": "My apartment has a kitchen, a bedroom, and a living room. The bathroom is next to the bedroom. There are stairs to the garage.",
  "translation": "Meu apartamento tem cozinha, quarto e sala de estar. O banheiro fica ao lado do quarto. Ha escadas ate a garagem.",
  "question": "What is next to the bedroom?",
  "options": ["The kitchen", "The bathroom", "The garage"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000092', 'reading', 8, $j${
  "passage": "There is a table and four chairs in the kitchen. A sofa and a lamp are in the living room. We watch TV on the sofa.",
  "translation": "Ha uma mesa e quatro cadeiras na cozinha. Um sofa e uma luminaria estao na sala. Nos assistimos TV no sofa.",
  "question": "How many chairs are in the kitchen?",
  "options": ["Two", "Three", "Four"],
  "correct_index": 2
}$j$),

('20000000-0000-0000-0000-000000000093', 'reading', 8, $j${
  "passage": "The fridge is broken, and the milk is not cold. The stove is on the shelf next to the oven.",
  "translation": "A geladeira esta quebrada, e o leite nao esta gelado. O fogao fica na prateleira ao lado do forno.",
  "question": "What is broken?",
  "options": ["The oven", "The fridge", "The stove"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000094', 'reading', 8, $j${
  "passage": "We live downtown in a friendly neighborhood. My neighbor helps me clean the house. Next month, we are going to move to a bigger apartment.",
  "translation": "Nos moramos no centro, em um bairro amigavel. Meu vizinho me ajuda a limpar a casa. No mes que vem, vamos nos mudar para um apartamento maior.",
  "question": "What are they going to do next month?",
  "options": ["Clean the house", "Move", "Rent a car"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000095', 'reading', 9, $j${
  "passage": "My house has a garage, a garden, and stairs to the second floor. The living room window is small, but I like my house.",
  "translation": "Minha casa tem garagem, jardim e escadas para o segundo andar. A janela da sala e pequena, mas eu gosto da minha casa.",
  "question": "Where are the stairs?",
  "options": ["In the garden", "To the second floor", "In the garage"],
  "correct_index": 1
}$j$),

-- Weather
('20000000-0000-0000-0000-000000000101', 'reading', 8, $j${
  "passage": "Today it is sunny and hot. In July, it is often windy. Take an umbrella; it might be rainy this afternoon.",
  "translation": "Hoje esta ensolarado e quente. Em julho, geralmente faz vento. Leve um guarda-chuva; pode chover a tarde.",
  "question": "What is the weather like today?",
  "options": ["Rainy", "Sunny and hot", "Snowy"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000102', 'reading', 8, $j${
  "passage": "Today is very hot, but tomorrow will be cool. In winter, it is cold, and the temperature is low.",
  "translation": "Hoje esta muito quente, mas amanha estara fresco. No inverno, faz frio, e a temperatura e baixa.",
  "question": "What season is cold?",
  "options": ["Summer", "Winter", "Spring"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000103', 'reading', 8, $j${
  "passage": "Last night there was a big storm, with thunder and lightning. Now the sky is blue, and there is a rainbow.",
  "translation": "Ontem a noite houve uma grande tempestade, com trovao e relampago. Agora o ceu esta azul, e ha um arco-iris.",
  "question": "What is in the sky now?",
  "options": ["A storm", "A rainbow", "Snow"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000104', 'reading', 8, $j${
  "passage": "The forecast says it will be cold tonight and tomorrow. In summer, the temperature is high, but winter is different.",
  "translation": "A previsao diz que vai fazer frio hoje a noite e amanha. No verao, a temperatura e alta, mas o inverno e diferente.",
  "question": "What will the weather be like tonight, according to the forecast?",
  "options": ["Hot", "Cold", "Sunny"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000105', 'reading', 9, $j${
  "passage": "It is foggy and windy today, so you should wear a coat. Don't forget your umbrella; there is a lot of rain in the morning.",
  "translation": "Esta com neblina e ventando hoje, entao voce deve usar um casaco. Nao esqueca o guarda-chuva; chove muito de manha.",
  "question": "What should you wear today?",
  "options": ["A coat", "Shorts", "A T-shirt"],
  "correct_index": 0
}$j$),

-- Sports & Hobbies
('20000000-0000-0000-0000-000000000111', 'reading', 8, $j${
  "passage": "On the weekend, we play soccer at the beach. My team plays basketball every day. Does she like swimming or tennis?",
  "translation": "No fim de semana, nos jogamos futebol na praia. Meu time joga basquete todos os dias. Ela gosta de natacao ou tenis?",
  "question": "Where do they play soccer?",
  "options": ["At the beach", "At school", "In the gym"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000112', 'reading', 8, $j${
  "passage": "Yesterday our team played a match. We won! Last week, they had a match at eight and they lost.",
  "translation": "Ontem nosso time jogou uma partida. Nos ganhamos! Na semana passada, eles tiveram uma partida as oito e perderam.",
  "question": "Did the team win yesterday?",
  "options": ["Yes", "No", "They didn't play"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000113', 'reading', 8, $j${
  "passage": "My hobby is to paint. He likes to read, and she likes to sing. Our team plays a match on the weekend.",
  "translation": "Meu hobby e pintar. Ele gosta de ler, e ela gosta de cantar. Nosso time joga uma partida no fim de semana.",
  "question": "What is the speaker's hobby?",
  "options": ["To read", "To paint", "To sing"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000114', 'reading', 8, $j${
  "passage": "In my free time, I like to cook and garden. He likes to take photos. On the weekend, we play in the park.",
  "translation": "No meu tempo livre, gosto de cozinhar e cuidar do jardim. Ele gosta de tirar fotos. No fim de semana, brincamos no parque.",
  "question": "What does the speaker like to do in free time?",
  "options": ["To cook and garden", "To take photos", "To play soccer"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000115', 'reading', 9, $j${
  "passage": "Tennis is fun for me, but swimming is boring for him. Our team is good at soccer. Work is boring in the morning.",
  "translation": "Tenis e divertido para mim, mas natacao e chato para ele. Nosso time e bom em futebol. Trabalho e chato de manha.",
  "question": "What does the speaker think about tennis?",
  "options": ["It's boring", "It's fun", "It's difficult"],
  "correct_index": 1
}$j$),

-- Technology & Devices
('20000000-0000-0000-0000-000000000121', 'reading', 8, $j${
  "passage": "I bought a new laptop yesterday. My daughter has a small tablet. My phone screen is broken.",
  "translation": "Eu comprei um laptop novo ontem. Minha filha tem um tablet pequeno. A tela do meu telefone esta quebrada.",
  "question": "What did the speaker buy yesterday?",
  "options": ["A phone", "A laptop", "A tablet"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000122', 'reading', 8, $j${
  "passage": "My phone battery is low. I always turn off the charger at night. Please turn on the computer and enter the password.",
  "translation": "A bateria do meu telefone esta fraca. Eu sempre desligo o carregador a noite. Por favor, ligue o computador e digite a senha.",
  "question": "What does the speaker always do at night?",
  "options": ["Turn on the phone", "Turn off the charger", "Charge the tablet"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000123', 'reading', 8, $j${
  "passage": "I downloaded a new app today, but the wifi is slow. Yesterday I uploaded a file, and the battery was low.",
  "translation": "Eu baixei um aplicativo novo hoje, mas o wifi esta lento. Ontem eu enviei um arquivo, e a bateria estava fraca.",
  "question": "What is slow today?",
  "options": ["The app", "The wifi", "The battery"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000124', 'reading', 8, $j${
  "passage": "I will call you later. Please send me a message or a photo. She sent an email this morning.",
  "translation": "Eu vou te ligar mais tarde. Por favor, me manda uma mensagem ou uma foto. Ela mandou um email hoje de manha.",
  "question": "What will the speaker do later?",
  "options": ["Send an email", "Call", "Send a photo"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000125', 'reading', 9, $j${
  "passage": "My computer screen is broken, and the keyboard doesn't work. I need to fix the mouse too. Can you update the app?",
  "translation": "A tela do meu computador esta quebrada, e o teclado nao funciona. Eu preciso consertar o mouse tambem. Voce pode atualizar o aplicativo?",
  "question": "What is broken?",
  "options": ["The keyboard only", "The screen", "The app"],
  "correct_index": 1
}$j$),

-- Transportation
('20000000-0000-0000-0000-000000000131', 'reading', 8, $j${
  "passage": "I go to work by bus. It is faster than the bike. Yesterday I was late because of traffic.",
  "translation": "Eu vou trabalhar de onibus. E mais rapido que a bicicleta. Ontem eu me atrasei por causa do transito.",
  "question": "How does the speaker go to work?",
  "options": ["By bike", "By bus", "By train"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000132', 'reading', 8, $j${
  "passage": "I bought a train ticket this morning. The bus stop is on the corner. The schedule shows the bus leaves at nine.",
  "translation": "Eu comprei uma passagem de trem hoje de manha. O ponto de onibus fica na esquina. O horario mostra que o onibus sai as nove.",
  "question": "What did the speaker buy?",
  "options": ["A bus ticket", "A train ticket", "A schedule"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000133', 'reading', 8, $j${
  "passage": "On the bus, I always look for a free seat. The next stop is the park. Please get off at the station.",
  "translation": "No onibus, eu sempre procuro um assento livre. A proxima parada e o parque. Por favor, desca na estacao.",
  "question": "What does the speaker look for on the bus?",
  "options": ["A free seat", "A ticket", "A map"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000134', 'reading', 8, $j${
  "passage": "There is a lot of traffic today. I need to park the car, but the parking lot is full. Let's drive slowly.",
  "translation": "Ha muito transito hoje. Eu preciso estacionar o carro, mas o estacionamento esta cheio. Vamos dirigir devagar.",
  "question": "What is the problem today?",
  "options": ["No traffic", "A lot of traffic", "No cars"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000135', 'reading', 9, $j${
  "passage": "The train is faster than the bus, but it costs more. On foot, it takes ten minutes to the station. The fare is cheap today.",
  "translation": "O trem e mais rapido que o onibus, mas custa mais. A pe, leva dez minutos ate a estacao. A tarifa esta barata hoje.",
  "question": "What is faster, the train or the bus?",
  "options": ["The bus", "The train", "They are the same"],
  "correct_index": 1
}$j$),

-- Jobs & Workplace
('20000000-0000-0000-0000-000000000141', 'reading', 8, $j${
  "passage": "There are five employees in our office downtown. The boss is not here today. Our salary comes at the end of the month.",
  "translation": "Ha cinco funcionarios no nosso escritorio no centro. O chefe nao esta aqui hoje. Nosso salario vem no fim do mes.",
  "question": "How many employees are in the office?",
  "options": ["Five", "Ten", "Two"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000142', 'reading', 8, $j${
  "passage": "I start work at nine and finish at six. Next week I have a day off. The deadline is tomorrow.",
  "translation": "Eu comeco a trabalhar as nove e termino as seis. Semana que vem eu tenho um dia de folga. O prazo e amanha.",
  "question": "What time does the speaker start work?",
  "options": ["Six", "Nine", "Ten"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000143', 'reading', 8, $j${
  "passage": "Yesterday I had a job interview. Last month, I sent my resume to a new company. I want to start a career in medicine.",
  "translation": "Ontem eu tive uma entrevista de emprego. No mes passado, eu enviei meu curriculo para uma nova empresa. Eu quero comecar uma carreira na medicina.",
  "question": "When did the speaker have the interview?",
  "options": ["Yesterday", "Last month", "Tomorrow"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000144', 'reading', 8, $j${
  "passage": "My father is an engineer. My sister is a nurse at the hospital. Last year, my boss was an office employee too.",
  "translation": "Meu pai e engenheiro. Minha irma e enfermeira no hospital. No ano passado, meu chefe tambem era funcionario de escritorio.",
  "question": "What is the sister's job?",
  "options": ["Engineer", "Nurse", "Teacher"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000145', 'reading', 9, $j${
  "passage": "This week I am very busy. On Friday, I have a deadline at work. Last week, I had a day off, but this week I work overtime.",
  "translation": "Esta semana estou muito ocupado. Na sexta-feira, tenho um prazo no trabalho. Na semana passada, tive um dia de folga, mas esta semana trabalho horas extras.",
  "question": "What does the speaker have on Friday?",
  "options": ["A day off", "A deadline", "A vacation"],
  "correct_index": 1
}$j$);

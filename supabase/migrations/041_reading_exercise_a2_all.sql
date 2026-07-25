-- 041_reading_exercise_a2_all.sql
-- Adiciona o exercicio de leitura (reading) como ultimo item em todas as
-- 75 licoes A2. Usa dollar-quoting ($j$...$j$) para nao precisar escapar
-- apostrofos (doesn't, isn't, won't etc.) dentro do JSON.

insert into exercises (lesson_id, type, sort_order, content) values

-- Daily Routines
('20000000-0000-0000-0000-000000000011', 'reading', 8, $j${
  "passage": "Every day I wake up at six. I take a shower and have breakfast at seven. My sister wakes up at eight.",
  "translation": "Todos os dias eu acordo as seis. Eu tomo banho e tomo cafe da manha as sete. Minha irma acorda as oito.",
  "question": "What time does the speaker wake up?",
  "options": ["Six", "Seven", "Eight"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000012', 'reading', 8, $j${
  "passage": "I go to work by car. My father goes home for lunch. She finishes work at six and goes home.",
  "translation": "Eu vou trabalhar de carro. Meu pai vai para casa almocar. Ela termina o trabalho as seis e vai para casa.",
  "question": "How does the speaker go to work?",
  "options": ["By bus", "By car", "By bike"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000013', 'reading', 8, $j${
  "passage": "In the evening, we have dinner at eight. Then he watches TV and goes to bed. Good night!",
  "translation": "A noite, jantamos as oito. Depois ele assiste TV e vai dormir. Boa noite!",
  "question": "What time do they have dinner?",
  "options": ["Six", "Eight", "Ten"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000014', 'reading', 8, $j${
  "passage": "I work from Monday to Friday. On Saturday and Sunday, it is the weekend. Every day, I check what work I have on Wednesday.",
  "translation": "Eu trabalho de segunda a sexta. No sabado e domingo, e fim de semana. Todo dia, verifico qual trabalho tenho na quarta-feira.",
  "question": "What days does the speaker work?",
  "options": ["Saturday and Sunday", "Monday to Friday", "Only Monday"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000015', 'reading', 9, $j${
  "passage": "I always wake up at six and have breakfast. I sometimes take the bus, but I usually go to work late. She never has dinner early.",
  "translation": "Eu sempre acordo as seis e tomo cafe da manha. As vezes pego o onibus, mas geralmente vou trabalhar atrasado. Ela nunca janta cedo.",
  "question": "What does the speaker always do?",
  "options": ["Take the bus", "Wake up at six", "Have dinner early"],
  "correct_index": 1
}$j$),

-- Past Experiences
('20000000-0000-0000-0000-000000000016', 'reading', 8, $j${
  "passage": "Yesterday I went to the beach with my family. We had breakfast at the hotel and saw the mountain. It was a great day.",
  "translation": "Ontem eu fui a praia com minha familia. Nos tomamos cafe da manha no hotel e vimos a montanha. Foi um otimo dia.",
  "question": "Where did they go yesterday?",
  "options": ["The mountain", "The beach", "The airport"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000017', 'reading', 8, $j${
  "passage": "Last weekend, I studied for two hours. She bought a new ticket. What did you do last weekend?",
  "translation": "No fim de semana passado, eu estudei por duas horas. Ela comprou uma passagem nova. O que voce fez no fim de semana passado?",
  "question": "What did the speaker do last weekend?",
  "options": ["Bought a ticket", "Studied", "Traveled"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000018', 'reading', 8, $j${
  "passage": "We arrived at the hotel late. We visited a small city and stayed for three days. Our trip was very nice.",
  "translation": "Nos chegamos tarde no hotel. Visitamos uma cidade pequena e ficamos tres dias. Nossa viagem foi muito boa.",
  "question": "How many days did they stay?",
  "options": ["Two", "Three", "Four"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000019', 'reading', 8, $j${
  "passage": "Last week, we went to the mountain. The weather was cold, but the trip was amazing. Next week, we have no vacation.",
  "translation": "Na semana passada, fomos a montanha. O tempo estava frio, mas a viagem foi incrivel. Semana que vem nao temos ferias.",
  "question": "How was the weather on the trip?",
  "options": ["Hot", "Cold", "Rainy"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000020', 'reading', 9, $j${
  "passage": "Two years ago, my family traveled to Brazil. We visited my grandmother and stayed for a week. It was an amazing vacation.",
  "translation": "Ha dois anos, minha familia viajou para o Brasil. Visitamos minha avo e ficamos uma semana. Foram ferias incriveis.",
  "question": "Where did the family travel?",
  "options": ["Portugal", "Brazil", "Spain"],
  "correct_index": 1
}$j$),

-- Future (Going to / Will)
('20000000-0000-0000-0000-000000000026', 'reading', 8, $j${
  "passage": "Next week, I am going to visit my grandmother. She is going to travel next year. We are going to study tonight.",
  "translation": "Semana que vem, eu vou visitar minha avo. Ela vai viajar ano que vem. Nos vamos estudar hoje a noite.",
  "question": "What is the speaker going to do next week?",
  "options": ["Study", "Visit his grandmother", "Travel"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000027', 'reading', 8, $j${
  "passage": "It will probably rain tomorrow. He will definitely be a doctor soon. Later, you will feel better.",
  "translation": "Provavelmente vai chover amanha. Ele definitivamente sera medico em breve. Mais tarde, voce vai se sentir melhor.",
  "question": "What will he probably be?",
  "options": ["A doctor", "A teacher", "An engineer"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000028', 'reading', 9, $j${
  "passage": "I won't work tomorrow because I am sick. She won't go on vacation this year. He is tired, so he won't go out tonight.",
  "translation": "Eu nao vou trabalhar amanha porque estou doente. Ela nao vai viajar este ano. Ele esta cansado, entao nao vai sair hoje a noite.",
  "question": "Why won't the speaker work tomorrow?",
  "options": ["He is on vacation", "He is sick", "He is tired"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000029', 'reading', 8, $j${
  "passage": "What are you going to do next year? I am definitely going to travel. Are you going to study next week?",
  "translation": "O que voce vai fazer ano que vem? Eu definitivamente vou viajar. Voce vai estudar semana que vem?",
  "question": "What is the speaker definitely going to do?",
  "options": ["Study", "Travel", "Work"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000030', 'reading', 9, $j${
  "passage": "My dream is to travel around the world. My goal this year is to make a good career decision. Tomorrow, I will start a new job.",
  "translation": "Meu sonho e viajar pelo mundo. Minha meta este ano e tomar uma boa decisao de carreira. Amanha, vou comecar um emprego novo.",
  "question": "What is the speaker's dream?",
  "options": ["To travel", "To work", "To study"],
  "correct_index": 0
}$j$),

-- Comparatives
('20000000-0000-0000-0000-000000000036', 'reading', 8, $j${
  "passage": "The plane is faster than the train. My house is bigger than his house. The car is more expensive than the bike.",
  "translation": "O aviao e mais rapido que o trem. Minha casa e maior que a casa dele. O carro e mais caro que a bicicleta.",
  "question": "What is faster than the train?",
  "options": ["The car", "The plane", "The bike"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000037', 'reading', 8, $j${
  "passage": "This book is more interesting than that one. The restaurant is more expensive than the city center. This city is more beautiful.",
  "translation": "Este livro e mais interessante que aquele. O restaurante e mais caro que o centro da cidade. Esta cidade e mais bonita.",
  "question": "What is more interesting?",
  "options": ["This book", "That book", "The restaurant"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000038', 'reading', 9, $j${
  "passage": "This coffee is better than yesterday's. The weather today is worse than yesterday. My grandfather is older than my grandmother.",
  "translation": "Este cafe e melhor que o de ontem. O tempo hoje esta pior que ontem. Meu avo e mais velho que minha avo.",
  "question": "How is the weather today compared to yesterday?",
  "options": ["Better", "Worse", "The same"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000039', 'reading', 8, $j${
  "passage": "This jacket is as expensive as that one. My brother's shoes are as cheap as mine. The quality is not the same.",
  "translation": "Esta jaqueta e tao cara quanto aquela. Os sapatos do meu irmao sao tao baratos quanto os meus. A qualidade nao e a mesma.",
  "question": "How is the jacket's price compared to the other one?",
  "options": ["Cheaper", "As expensive", "More expensive"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000040', 'reading', 9, $j${
  "passage": "This is the best restaurant in the city. It has the best quality, but it is also the most expensive option here in Brazil.",
  "translation": "Este e o melhor restaurante da cidade. Tem a melhor qualidade, mas tambem e a opcao mais cara aqui no Brasil.",
  "question": "What is this restaurant?",
  "options": ["The cheapest", "The best", "The worst"],
  "correct_index": 1
}$j$),

-- Countable x Uncountable
('20000000-0000-0000-0000-000000000046', 'reading', 8, $j${
  "passage": "Do we have any milk in the kitchen? We have some bread and rice, but we don't have any juice.",
  "translation": "Nos temos leite na cozinha? Nos temos um pouco de pao e arroz, mas nao temos nenhum suco.",
  "question": "What do they have some of?",
  "options": ["Juice", "Bread and rice", "Milk"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000047', 'reading', 8, $j${
  "passage": "How much money do you have? I don't have much time, but I have many books. How much information do you need?",
  "translation": "Quanto dinheiro voce tem? Eu nao tenho muito tempo, mas tenho muitos livros. Quanta informacao voce precisa?",
  "question": "What does the speaker have many of?",
  "options": ["Money", "Time", "Books"],
  "correct_index": 2
}$j$),

('20000000-0000-0000-0000-000000000048', 'reading', 9, $j${
  "passage": "I have a little money and a few friends. She needs a lot of time for the project. Can you give me some advice?",
  "translation": "Eu tenho um pouco de dinheiro e alguns amigos. Ela precisa de muito tempo para o projeto. Voce pode me dar algum conselho?",
  "question": "How much money does the speaker have?",
  "options": ["A lot", "A little", "None"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000049', 'reading', 8, $j${
  "passage": "How many cups of coffee do you drink every day? I drink a cup of coffee and a bottle of water.",
  "translation": "Quantas xicaras de cafe voce bebe todos os dias? Eu bebo uma xicara de cafe e uma garrafa de agua.",
  "question": "What does the speaker drink every day?",
  "options": ["A cup of coffee", "A bag of rice", "A piece of bread"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000050', 'reading', 9, $j${
  "passage": "We need some milk from the store. There is a lot of leftover rice in the fridge, but we have too many things on the shopping list.",
  "translation": "Precisamos de leite do mercado. Ha muito arroz sobrando na geladeira, mas temos coisas demais na lista de compras.",
  "question": "What is in the fridge?",
  "options": ["Leftover rice", "Milk", "Nothing"],
  "correct_index": 0
}$j$),

-- Prepositions
('20000000-0000-0000-0000-000000000056', 'reading', 8, $j${
  "passage": "The meeting is on Monday at eight in the evening. I will be there between six and ten.",
  "translation": "A reuniao e na segunda-feira as oito da noite. Eu estarei la entre seis e dez.",
  "question": "What day is the meeting?",
  "options": ["Saturday", "Monday", "Sunday"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000057', 'reading', 8, $j${
  "passage": "The book is under the table. The house is next to the park, between the bank and the store.",
  "translation": "O livro esta debaixo da mesa. A casa fica ao lado do parque, entre o banco e a loja.",
  "question": "Where is the book?",
  "options": ["Over the table", "Under the table", "Next to the bank"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000058', 'reading', 8, $j${
  "passage": "The car is in front of the house. The store is behind the park. The sun is above the city.",
  "translation": "O carro esta em frente a casa. A loja fica atras do parque. O sol esta acima da cidade.",
  "question": "Where is the car?",
  "options": ["Behind the house", "In front of the house", "Below the house"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000059', 'reading', 8, $j${
  "passage": "The gym is near my house, but the office is far from here. We drove through the park to get near the house.",
  "translation": "A academia fica perto da minha casa, mas o escritorio fica longe daqui. Nos dirigimos atraves do parque para chegar perto de casa.",
  "question": "Where is the gym?",
  "options": ["Far from the house", "Near the house", "Far from the office"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000060', 'reading', 9, $j${
  "passage": "I had coffee with my brother, but without sugar. She walked through the door and into the store, opposite the table.",
  "translation": "Eu tomei cafe com meu irmao, mas sem acucar. Ela caminhou pela porta e entrou na loja, em frente a mesa.",
  "question": "How did the speaker have coffee?",
  "options": ["Without his brother", "With sugar", "Without sugar"],
  "correct_index": 2
}$j$),

-- Daily Conversations
('20000000-0000-0000-0000-000000000066', 'reading', 8, $j${
  "passage": "Hey, long time no see! How's it going? Not much, just busy at work. Sounds good, let's talk later.",
  "translation": "Ei, quanto tempo! Como vai? Nada de mais, so ocupado no trabalho. Combinado, vamos conversar mais tarde.",
  "question": "How does the speaker describe their day?",
  "options": ["Very exciting", "Not much, busy", "Terrible"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000067', 'reading', 8, $j${
  "passage": "Do you want to get together for coffee this weekend? Sounds good! Hold on, let me check, no problem, six is fine.",
  "translation": "Voce quer se encontrar para um cafe neste fim de semana? Combinado! Espera, deixa eu checar, sem problema, seis esta bom.",
  "question": "What do they want to do this weekend?",
  "options": ["Hang out for coffee", "Work", "Study"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000068', 'reading', 8, $j${
  "passage": "Hello, is this Anna speaking? Sorry, wrong number. Can you call back later? Hold on, please.",
  "translation": "Alo, e a Anna falando? Desculpe, numero errado. Voce pode ligar de volta mais tarde? Espera, por favor.",
  "question": "What is the problem on the phone?",
  "options": ["Wrong number", "No signal", "Voicemail"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000069', 'reading', 9, $j${
  "passage": "She did not pick up the phone, so I left a voicemail. Later, I will text her the address and hang up.",
  "translation": "Ela nao atendeu o telefone, entao eu deixei uma mensagem de voz. Mais tarde, vou mandar o endereco por mensagem e desligar.",
  "question": "What did the speaker leave?",
  "options": ["A text", "A voicemail", "An address"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000070', 'reading', 9, $j${
  "passage": "Honestly, I guess we should chat more. It's just small talk, but by any chance, do you have any plans tonight?",
  "translation": "Sinceramente, acho que deviamos conversar mais. E so um papo furado, mas por acaso, voce tem planos hoje a noite?",
  "question": "What does the speaker suggest?",
  "options": ["Working more", "Chatting more", "Sleeping"],
  "correct_index": 1
}$j$),

-- Shopping
('20000000-0000-0000-0000-000000000076', 'reading', 8, $j${
  "passage": "I want to return this shirt; it doesn't fit. Can I exchange it for a different size? The warranty is for one year.",
  "translation": "Eu quero devolver esta camisa; ela nao serve. Posso trocar por outro tamanho? A garantia e de um ano.",
  "question": "Why does the speaker want to return the shirt?",
  "options": ["It's expensive", "It doesn't fit", "It's the wrong color"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000077', 'reading', 8, $j${
  "passage": "This jacket doesn't fit me. Do you have a different color? I like the style, but the shoes don't match.",
  "translation": "Esta jaqueta nao serve em mim. Voces tem uma cor diferente? Eu gosto do estilo, mas os sapatos nao combinam.",
  "question": "What is the problem with the jacket?",
  "options": ["The color", "It doesn't fit", "The price"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000078', 'reading', 8, $j${
  "passage": "I have a complaint about my order. The item is out of stock, but there is a sale on other brands next week.",
  "translation": "Eu tenho uma reclamacao sobre meu pedido. O item esta fora de estoque, mas ha uma promocao de outras marcas semana que vem.",
  "question": "What is the customer's complaint about?",
  "options": ["The price", "The order", "The store"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000079', 'reading', 9, $j${
  "passage": "I always order online. I put five items in the cart and went to checkout. The shipping will take three days.",
  "translation": "Eu sempre compro online. Coloquei cinco itens no carrinho e fui para o checkout. O frete vai levar tres dias.",
  "question": "How many items did the speaker put in the cart?",
  "options": ["Three", "Five", "One"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000080', 'reading', 9, $j${
  "passage": "To save money, I always check the price and use my loyalty card. This budget is good, and the deal at checkout is worth it.",
  "translation": "Para economizar dinheiro, eu sempre confiro o preco e uso meu cartao de fidelidade. Este orcamento e bom, e a oferta no checkout vale a pena.",
  "question": "What does the speaker use to save money?",
  "options": ["A loyalty card", "A gift card", "Cash only"],
  "correct_index": 0
}$j$),

-- Travel
('20000000-0000-0000-0000-000000000086', 'reading', 8, $j${
  "passage": "At the airport, we checked in early. Our flight was delayed, and we had to wait with our luggage.",
  "translation": "No aeroporto, fizemos o check-in cedo. Nosso voo atrasou, e tivemos que esperar com a bagagem.",
  "question": "What happened to the flight?",
  "options": ["It was on time", "It was delayed", "It was canceled"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000087', 'reading', 8, $j${
  "passage": "I made a hotel reservation near the beach. We will check out in three days. Our destination is a small city.",
  "translation": "Eu fiz uma reserva de hotel perto da praia. Vamos fazer o check-out em tres dias. Nosso destino e uma cidade pequena.",
  "question": "Where is the hotel?",
  "options": ["Near the beach", "Downtown", "At the airport"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000088', 'reading', 8, $j${
  "passage": "We went sightseeing in the old city with a tour guide. We got lost once, but the map helped us find the hotel.",
  "translation": "Nos fizemos um passeio turistico na cidade antiga com um guia turistico. Nos perdemos uma vez, mas o mapa nos ajudou a achar o hotel.",
  "question": "Who helped them go sightseeing?",
  "options": ["A tour guide", "A tourist", "A driver"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000089', 'reading', 8, $j${
  "passage": "Abroad, I bought a souvenir with local currency. At customs, they checked my visa. I studied for a year in another country.",
  "translation": "No exterior, eu comprei uma lembrancinha com moeda local. Na alfandega, eles checaram meu visto. Eu estudei um ano em outro pais.",
  "question": "What did the speaker buy abroad?",
  "options": ["A visa", "A souvenir", "Currency only"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000090', 'reading', 9, $j${
  "passage": "Next week, I will pack my bags for a round trip. I bought a one-way ticket and I'm ready to explore a new city.",
  "translation": "Semana que vem, vou fazer as malas para uma viagem de ida e volta. Comprei uma passagem so de ida e estou pronto para explorar uma cidade nova.",
  "question": "What ticket did the speaker buy?",
  "options": ["A round trip", "A one-way ticket", "No ticket"],
  "correct_index": 1
}$j$),

-- Making Plans & Invitations
('20000000-0000-0000-0000-000000000096', 'reading', 8, $j${
  "passage": "I want to invite you to a celebration. How many guests are you inviting? We have a suggestion for the occasion.",
  "translation": "Eu quero te convidar para uma celebracao. Quantos convidados voce vai convidar? Temos uma sugestao para a ocasiao.",
  "question": "What does the speaker want to do?",
  "options": ["Cancel a plan", "Invite guests", "Decline"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000097', 'reading', 8, $j${
  "passage": "I suggest we meet at six tonight. Maybe we can get a rain check for the weekend. Sounds good?",
  "translation": "Eu sugiro que nos encontremos as seis hoje a noite. Talvez possamos deixar para outra vez no fim de semana. Combinado?",
  "question": "What time does the speaker suggest meeting?",
  "options": ["Six", "Eight", "Ten"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000098', 'reading', 8, $j${
  "passage": "I would like to accept your invitation, but I am busy on Saturday. Sorry, I have to decline this time.",
  "translation": "Eu gostaria de aceitar seu convite, mas estou ocupado no sabado. Desculpe, tenho que recusar desta vez.",
  "question": "Why does the speaker decline?",
  "options": ["No invitation", "Busy on Saturday", "Doesn't like it"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000099', 'reading', 8, $j${
  "passage": "Can you confirm the meeting time? I need to cancel next week, but I will try to make it and show up.",
  "translation": "Voce pode confirmar o horario da reuniao? Eu preciso cancelar semana que vem, mas vou tentar comparecer.",
  "question": "What does the speaker need to do next week?",
  "options": ["Confirm", "Cancel", "Show up early"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000100', 'reading', 9, $j${
  "passage": "Let's hang out tonight! If not, we can get a rain check for next week. Sounds good, I'll catch up with you soon.",
  "translation": "Vamos sair hoje a noite! Se nao der, podemos deixar para semana que vem. Combinado, te encontro em breve.",
  "question": "What can they do if tonight doesn't work?",
  "options": ["Cancel forever", "Get a rain check", "Never hang out"],
  "correct_index": 1
}$j$),

-- Advice & Suggestions
('20000000-0000-0000-0000-000000000106', 'reading', 8, $j${
  "passage": "You should rest this week; you work too much. He shouldn't drink much coffee. What advice do you have for me?",
  "translation": "Voce deveria descansar esta semana; voce trabalha demais. Ele nao deveria beber muito cafe. Que conselho voce tem para mim?",
  "question": "What should the person do this week?",
  "options": ["Work more", "Rest", "Drink coffee"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000107', 'reading', 8, $j${
  "passage": "If I were you, I would try that restaurant. I recommend it. Can you give me some advice about a good doctor?",
  "translation": "Se eu fosse voce, eu experimentaria aquele restaurante. Eu recomendo. Voce pode me dar um conselho sobre um bom medico?",
  "question": "What does the speaker recommend?",
  "options": ["A doctor", "A restaurant", "A hotel"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000108', 'reading', 8, $j${
  "passage": "I have a problem at work, but there is a solution. I shouldn't give up; I need to deal with it today.",
  "translation": "Eu tenho um problema no trabalho, mas ha uma solucao. Eu nao devo desistir; preciso lidar com isso hoje.",
  "question": "What shouldn't the speaker do?",
  "options": ["Deal with it", "Give up", "Work today"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000109', 'reading', 8, $j${
  "passage": "I need to make a decision soon. It's a hard decision, but I should consider both options. It's worth it.",
  "translation": "Eu preciso tomar uma decisao em breve. E uma decisao dificil, mas devo considerar as duas opcoes. Vale a pena.",
  "question": "What does the speaker need to do?",
  "options": ["Make a decision", "Forget it", "Wait forever"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000110', 'reading', 9, $j${
  "passage": "To be honest, everyone makes a mistake sometimes. You should learn from it and try to be right next time.",
  "translation": "Para ser honesto, todo mundo comete um erro as vezes. Voce deve aprender com isso e tentar acertar da proxima vez.",
  "question": "What should you do after a mistake?",
  "options": ["Ignore it", "Learn from it", "Repeat it"],
  "correct_index": 1
}$j$),

-- Feelings & Personality
('20000000-0000-0000-0000-000000000116', 'reading', 8, $j${
  "passage": "Today he feels happy, but yesterday she felt sad. I feel a little bored, and my mood is not good.",
  "translation": "Hoje ele se sente feliz, mas ontem ela se sentiu triste. Eu me sinto um pouco entediado, e meu humor nao esta bom.",
  "question": "How does he feel today?",
  "options": ["Sad", "Happy", "Bored"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000117', 'reading', 8, $j${
  "passage": "Before the interview, I felt nervous. After it, I was relieved. My friend was excited about the trip, but a little scared too.",
  "translation": "Antes da entrevista, eu me senti nervoso. Depois, fiquei aliviado. Meu amigo estava animado com a viagem, mas um pouco assustado tambem.",
  "question": "How did the speaker feel after the interview?",
  "options": ["Nervous", "Relieved", "Angry"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000118', 'reading', 8, $j${
  "passage": "My neighbor is friendly and outgoing. My teacher is patient, but a little stubborn. My brother is shy with new people.",
  "translation": "Meu vizinho e amigavel e extrovertido. Minha professora e paciente, mas um pouco teimosa. Meu irmao e timido com pessoas novas.",
  "question": "How is the neighbor's personality?",
  "options": ["Shy and quiet", "Friendly and outgoing", "Stubborn"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000119', 'reading', 8, $j${
  "passage": "My grandfather is calm and honest. My friend is funny and generous. She is sensitive, but sometimes stubborn too.",
  "translation": "Meu avo e calmo e honesto. Meu amigo e engracado e generoso. Ela e sensivel, mas as vezes teimosa tambem.",
  "question": "How is the grandfather's personality?",
  "options": ["Calm and honest", "Lazy", "Confused"],
  "correct_index": 0
}$j$),

('20000000-0000-0000-0000-000000000120', 'reading', 9, $j${
  "passage": "At first, I was confused about my new city, but now I get along well with my neighbors. My personality is friendly and confident.",
  "translation": "No comeco, eu estava confuso com minha cidade nova, mas agora me dou bem com meus vizinhos. Minha personalidade e amigavel e confiante.",
  "question": "How does the speaker get along with neighbors now?",
  "options": ["Badly", "Well", "Not at all"],
  "correct_index": 1
}$j$),

-- Restaurants & Dining Out
('20000000-0000-0000-0000-000000000126', 'reading', 8, $j${
  "passage": "I want to book a table for two, please, near the window. Can we sit outside? Please bring the menu.",
  "translation": "Eu quero reservar uma mesa para dois, por favor, perto da janela. Podemos sentar do lado de fora? Por favor, traga o cardapio.",
  "question": "How many people is the table for?",
  "options": ["One", "Two", "Eight"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000127', 'reading', 8, $j${
  "passage": "For the main course, I want the chicken well done. She wants soup as a starter. Today's dessert is delicious.",
  "translation": "Para o prato principal, eu quero o frango bem passado. Ela quer sopa como entrada. A sobremesa de hoje esta deliciosa.",
  "question": "How does the speaker want the chicken?",
  "options": ["Rare", "Well done", "Raw"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000128', 'reading', 8, $j${
  "passage": "Is this dish spicy? I am allergic to fish. The chef made it fresh with a good flavor and no spicy ingredient.",
  "translation": "Este prato e picante? Eu sou alergico a peixe. O chef fez fresco, com um bom sabor e sem ingrediente picante.",
  "question": "What is the speaker allergic to?",
  "options": ["Chicken", "Fish", "Rice"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000129', 'reading', 8, $j${
  "passage": "Can we split the bill, please? I want takeout tonight. Don't forget to leave a tip for the waiter.",
  "translation": "Podemos dividir a conta, por favor? Eu quero comida para levar hoje a noite. Nao esqueca de deixar gorjeta para o garcom.",
  "question": "What does the speaker want tonight?",
  "options": ["To eat here", "Takeout", "Dessert"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000130', 'reading', 9, $j${
  "passage": "I am starving! This dish is fresh and not spicy, so it's good for me since I am allergic to spicy food. Enjoy your meal!",
  "translation": "Estou faminto! Este prato e fresco e nao e picante, entao e bom para mim ja que sou alergico a comida picante. Bom apetite!",
  "question": "Why is the dish good for the speaker?",
  "options": ["It's spicy", "It's not spicy", "It's cold"],
  "correct_index": 1
}$j$),

-- Housing & Neighborhood
('20000000-0000-0000-0000-000000000136', 'reading', 8, $j${
  "passage": "I signed a lease with my landlord. The rent includes utilities. My roommate and I paid a deposit last month.",
  "translation": "Eu assinei um contrato de aluguel com meu senhorio. O aluguel inclui as contas. Eu e meu colega de quarto pagamos um deposito no mes passado.",
  "question": "Who did the speaker sign the lease with?",
  "options": ["The roommate", "The landlord", "The tenant"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000137', 'reading', 8, $j${
  "passage": "Last week, we moved into a furnished apartment. It has a nice view, but it is a little crowded. Next month, we will move out of the old place.",
  "translation": "Na semana passada, nos mudamos para um apartamento mobiliado. Tem uma vista bonita, mas e um pouco apertado. No mes que vem, sairemos do lugar antigo.",
  "question": "What does the new apartment have?",
  "options": ["A garage", "A nice view", "A garden"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000138', 'reading', 8, $j${
  "passage": "My neighborhood is quiet and safe. The supermarket is nearby, next door to the pharmacy. It is not noisy or crowded.",
  "translation": "Meu bairro e tranquilo e seguro. O supermercado fica perto, ao lado da farmacia. Nao e barulhento nem lotado.",
  "question": "How is the neighborhood?",
  "options": ["Noisy and crowded", "Quiet and safe", "Far and dangerous"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000139', 'reading', 8, $j${
  "passage": "We are looking for a place to rent downtown. The real estate agent showed us three apartments. We want to share with a roommate.",
  "translation": "Estamos procurando um lugar para alugar no centro. O corretor de imoveis nos mostrou tres apartamentos. Queremos dividir com um colega de quarto.",
  "question": "Who showed them the apartments?",
  "options": ["The landlord", "The real estate agent", "The tenant"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000140', 'reading', 9, $j${
  "passage": "We are settling into our new community. The neighborhood is convenient, with a park and public transportation nearby. We like the view from here.",
  "translation": "Estamos nos ajeitando na nossa nova comunidade. O bairro e conveniente, com um parque e transporte publico perto. Gostamos da vista daqui.",
  "question": "What is nearby the new place?",
  "options": ["A park and public transportation", "The airport", "A farm"],
  "correct_index": 0
}$j$),

-- Technology & Internet
('20000000-0000-0000-0000-000000000146', 'reading', 8, $j${
  "passage": "Every day, I post a photo on social media. She likes to follow her friends and click 'like' on their posts.",
  "translation": "Todo dia, eu posto uma foto nas redes sociais. Ela gosta de seguir os amigos e curtir as postagens deles.",
  "question": "What does the speaker do every day?",
  "options": ["Follow friends", "Post a photo", "Change settings"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000147', 'reading', 8, $j${
  "passage": "I use a search engine to find a website. I clicked on a link, but there was a strange notification from my browser.",
  "translation": "Eu uso um mecanismo de busca para achar um site. Eu cliquei em um link, mas houve uma notificacao estranha do meu navegador.",
  "question": "What did the speaker use to find the website?",
  "options": ["An account", "A search engine", "An email"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000148', 'reading', 8, $j${
  "passage": "I need to log in to my account, but I forgot my email. Let me sign up for a new account and check the settings.",
  "translation": "Eu preciso entrar na minha conta, mas esqueci meu email. Deixa eu criar uma conta nova e conferir as configuracoes.",
  "question": "What did the speaker forget?",
  "options": ["The password only", "The email", "The browser"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000149', 'reading', 8, $j${
  "passage": "Always protect your account and privacy online. Someone tried to hack my computer, so I decided to block that account.",
  "translation": "Sempre proteja sua conta e privacidade online. Alguem tentou invadir meu computador, entao decidi bloquear aquela conta.",
  "question": "What did the speaker decide to do?",
  "options": ["Hack an account", "Block an account", "Delete the computer"],
  "correct_index": 1
}$j$),

('20000000-0000-0000-0000-000000000150', 'reading', 9, $j${
  "passage": "My screen time is too high this month. I scroll through social media every morning, and sometimes a video goes viral.",
  "translation": "Meu tempo de tela esta muito alto este mes. Eu rolo as redes sociais toda manha, e as vezes um video viraliza.",
  "question": "What is too high this month?",
  "options": ["The internet bill", "The screen time", "The cloud storage"],
  "correct_index": 1
}$j$);

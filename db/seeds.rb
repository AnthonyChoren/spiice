puts 'Cleaning database...'

User.destroy_all
Project.destroy_all
Request.destroy_all

puts "creating seed"

puts "creating users......."

didier = User.new(email: "didier@gmail.com", password:"azerty", first_name: "Didier", last_name: "Dupont", phone_number:"0615385345", company:"FreeLance", city:"Bordeaux", country:"France", role: 1, bio:"Webdesigner since 1982, a lot of experience in Minitel and Nokia 3310 design, looking for new projects. I love new things and explore new technologies.")
dylan = User.new(email: "dylan@gmail.com", password:"azerty", first_name: "Dylan", last_name: "Dujardin", phone_number:"0615398756", company:"FreeLance", city:"Paris", country:"France", role: 1, bio:"Webdesigner since 2019, with 2 completed projects in CSS. I'm the best in my domaine with a great desire to revolutionize the field of Web Design ! ")
francoise = User.new(email: "francoise@gmail.com", password:"azerty", first_name: "Nicephore", last_name: "Sagan", phone_number:"0615398755", company:"Freelance", city:"Maubeuges", country:"France", role: 1, bio:"Visionary Web Designer with many years of experience since 2018, looking for real projects to express my well-known creativity, I master CodeCademy and OpenClassRoom like nobody.")
bertrand = User.new(email: "bertrand@gmail.com", password:"azerty", first_name: "Bertrand", last_name: "Broussac", phone_number:"0615398752", company:"LeWagon", city:"Nantes", country:"France", role: 1, bio:"Webdesigner with 10 years of success, if you want the best don't miss my work. Check out my profile from Dribbble or my Instagram Account! ")
anthony = User.new(email: "anthony@gmail.com", password:"azerty", first_name: "Anthony", last_name: "Choren", phone_number:"0615398751", company:"Apple", city:"Bordeaux", country:"France", role: 1, bio:"Webdesigner by nature, discover my Portfolio and see my uncommon work, if you want the best for your project, choose the best for your team ! ")
benoit = User.new(email: "benoit@gmail.com", password:"azerty", first_name: "Benoit", last_name: "Bisou", phone_number:"0615398752", company:"Grinch Ltd", city:"Bordeaux", country:"France", role: 1, bio:"The best since the beginning, my work is the very definition of perfection, if you want the success you will need my help ")
henri = User.new(email: "henri@gmail.com", password:"azerty", first_name: "Henri", last_name: "Kattre", phone_number:"0615398741", company:"FreeLance", city:"Lilles", country:"France", role: 1, bio:"Designer since so many years that I can remember why I am so good in Web Design")
jonathan = User.new(email: "jonathan@gmail.com", password:"azerty", first_name: "Jonathan", last_name: "Seraterminé", phone_number:"0615398747", company:"PacificKing", city:"Bordeaux", country:"France", role: 1, bio:"I love Web-Design, I always work on time with joy and happiness ")
sabrina = User.new(email: "sabrina@gmail.com", password:"azerty", first_name: "Sabrina", last_name: "Trachsler", phone_number:"0615398732", company:"RicolaDesign", city:"Zurich", country:"Switzerland", role: 1, bio:"I am Psychologist and UX Designer, I master the UX mind and I speak French very well.")
boris = User.new(email: "boris@gmail.com", password:"azerty", first_name: "Boris", last_name: "Kayar", phone_number:"0615398741", company:"LeWagon", city:"Paris", country:"France", role: 1, bio:" UX, UI, Web-Designer, Teacher, Entrepreneur... If you want more contact me ! ")

bill = User.new(email: "bill@gmail.com", password:"azerty", first_name: "Bill", last_name: "Gates", phone_number:"0654324559", company:"Microsoft", city:"Redmond", country:"USA", role: 0, bio:"Project owner from a major enterprise, looking for a very disciplined web designer who doesn't ask too many questions, especially on the merits. Anyway we are looking for the best. ")
charly = User.new(email: "charly@gmail.com", password:"azerty", first_name: "Charly", last_name: "Carol", phone_number:"0654324556", company:"Microsoft", city:"Marseille", country:"France", role: 0, bio:"Project owner looking for a good webdesigner, hard worker and easy to drive. ")
chloe = User.new(email: "chloe@gmail.com", password:"azerty", first_name: "Chloé", last_name: "Christine", phone_number:"0634568998", company:"Amazon", city:"Montpellier", country:"France", role: 0, bio:"Looking for a good webdesigner, project owner for a long-time project in World Suppremacy E-Business.")
vanessa = User.new(email: "vanessa@gmail.com", password:"azerty", first_name: "Vanessa", last_name: "Rapport", phone_number:"0634568997", company:"Amazon", city:"Bordeaux", country:"France", role: 0, bio:"Looking for nice Designer with good skills and very smart mind.")
sebastien = User.new(email: "sebastien@gmail.com", password:"azerty", first_name: "Sebastien", last_name: "Sautier", phone_number:"0654324556", company:"LeWagon", city:"Paris", country:"France", role: 0, bio:"We have a very big project for smart designers, it's about 1 year of hard work but you will have no more than 9 weeks to do your best, only with Ruby, don't panic you will be helped by a very efficient team.")
jeanne = User.new(email: "jeanne@gmail.com", password:"azerty", first_name: "Jeanne", last_name: "Darque", phone_number:"0634568995", company:"Amazon", city:"Rouen", country:"France", role: 0, bio:"I 'm looking for a really good Product Owner for my project. I need good technical skills.")
pilou = User.new(email: "pilou@gmail.com", password:"azerty", first_name: "Pilou", last_name: "Pilou", phone_number:"0634568981", company:"PronostkR", city:"Toulon", country:"France", role: 0, bio:"Start-Up 4.0 with a real project looking for the best Designer and Pro in the Game Design. Players only")
quentin = User.new(email: "quentin@gmail.com", password:"azerty", first_name: "Quentin", last_name: "DeMalherbe", phone_number:"0634568952", company:"AristocraticWeb", city:"Versailles", country:"France", role: 0, bio:"Looking for real Designers with great selflessness and greatness of mind to form a high-end team. ")
vladimir = User.new(email: "vladimir@gmail.com", password:"azerty", first_name: "Vladimir", last_name: "Put-in", phone_number:"06345689", company:"KremlinFamily", city:"Mockba", country:"Russia", role: 0, bio:"I am looking for really good and secret professionnals for a very marvellous project, I autrhorize you to come and apply. ")
donald = User.new(email: "donald@gmail.com", password:"azerty", first_name: "Donald", last_name: "T", phone_number:"0634568932", company:"Whitehouse", city:"Wahington", country:"USA", role: 0, bio:"I'm looking for American Designer whatever they are good or not. Make my Website great again ! ")
francoise.save!
bertrand.save!
anthony.save!
pilou.save!
quentin.save!
vladimir.save!
bill.save!
sebastien.save!
henri.save!
sabrina.save!
donald.save!
vanessa.save!
jeanne.save!
charly.save!
chloe.save!
boris.save!
benoit.save!
didier.save!
dylan.save!


puts 'Creating projects...'


o = Project.new(title:"Logo and Icons", description:"A project to change the spriti of my appli, I don't really like revolution but I need some change ", price: 250, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,6,28,),)
o.user = quentin
o.save!
n = Project.new(title:"Good UX for a game", description:"I need some new stuff for my game (good UX is key).", price: 300, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,8,28,),)
n.user = pilou
n.save!
q = Project.new(title:"Website for French Gotha Diary", description:"A project to renew my Web-Site, It's a French Gotha Diary, for very well-educated professionnal thank you", price: 250, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,6,28,),)
q.user = quentin
q.save!
r = Project.new(title:"Secret project", description:"A project to serve my business, more information in private, for very disciplined designer.", price: 250, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,6,28,),)
r.user = vladimir
r.save!
s = Project.new(title:"Project for a Russian company", description:"Looking for good Webdesigner, for a really good website project on freedom of expression , I had one but unfortunately He disappeared in Siberia. If you're good enough for this project feel free to contact us, We are always listening...", price: 250, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,6,28,),)
s.user = vladimir
s.save!
t = Project.new(title:"Donald's project first", description:"Looking for an American Deisgner, For a website on walls. If you're a woman, pretty and easy", price: 650, progress: "pending", start: Date.new(2020,6,25) , deadline: Date.new(2020,10,28,),)
t.user = donald
t.save
g = Project.new(title:"Professional brand guide", description:"For my business I need a professional brand guide for all our products and devices.", price: 1000, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,22),)
g.user = chloe
g.save!
i = Project.new(title:"Wireframe UX", description:"Someone can wireframe and prototype my new app? Need help! Ruby rules!", price: 900, progress: "pending", start: Date.new(2020,6,24) , deadline: Date.new(2020,8,24),)
i.user = sebastien
i.save!
m = Project.new(title:"The Pilou Game", description:"A project to revolutionize the gaming experience, lot of fun and perfection to come.", price: 3000, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,8,28,),)
m.user = pilou
m.save!
u = Project.new(title:"Internaional project", description:"Looking for Russian Designer for a big project on international business. American only ", price: 360, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,28,),)
u.user = donald
u.save
h = Project.new(title:"Make me a prototype", description:"I have a new business idea and need someone to make me a prototype. Contact me if you need to more.", price: 2000, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,22),)
h.user = chloe
h.save!
j = Project.new(title:"Nice icons and buttons", description:"I can not find my icons I want.", price: 6000, progress: "pending", start: Date.new(2020,6,24) , deadline: Date.new(2020,8,24),)
j.user = sebastien
j.save!
e = Project.new(title:"Logo Design", description:"I'm looking for somebody who has strong skills in Graphics & Design to design our new logo. Something simple that represents our product. For more information, please contact me by email or send me a request on this project.", price: 200, progress: "pending", start: Date.new(2020,3,10) , deadline: Date.new(2020,3,29),)
e.user = charly
e.save!
k = Project.new(title:"Create a app", description:"I have a idea and need someone to make an app for my super idea.", price: 2000, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,3,28,),)
k.user = bill
k.save!
l = Project.new(title:"Design Wireframe", description:"Need a design wireframe for a simple website! We can talk about details later.", price: 150, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,3,28,),)
l.user = bill
l.save!
f = Project.new(title:"Website for our new product", description:"We need a brand new website for a new product we want to lance in two months.", price: 5000, progress: "pending", start: Date.new(2020,3,10) , deadline: Date.new(2020,5,10),)
f.user = charly
f.save!


puts 'Creating requests...'

request1 = Request.new(message: "I want to work with you, Charly. Greetings -- Didier")
request1.project = e
request1.user = didier
request1.save!

request2 = Request.new(message: "I want to work with you, Chloé. Greetings -- Dylan")
request2.project = g
request2.user = dylan
request2.save!

request3 = Request.new(message: "Your challenge sounds great Sebastien ! I don't really know what is Ruby rules but you can trust me ! Kiss -- Benoit")
request3.project = i
request3.user = benoit
request3.save!

request4 = Request.new(message: "Good morning Mister Sautier, your project reminds me of my bootcamp, I want to work with you and your efficient team, 9 weeks is enough for me ! Greetings-- Anthony")
request4.project = j
request4.user = anthony
request4.save!

request5 = Request.new(message: "Hi Bill your poject interests me, but I have questions about the merits, I love to get to the bottoms of things. Greetings -- Bertrand")
request5.project = k
request5.user = bertrand
request5.save!

request6 = Request.new(message: " Hi Quentin, your project is awesome, i'd like to work with you !  Greetings -- Sabrina")
request6.project = o
request6.user = sabrina
request6.save!

request7 = Request.new(message: " Good morning your Excellence ! Your project is wonderful, Greetings -- Henri")
request7.project = q
request7.user = henri
request7.save!

request8 = Request.new(message: " Hi mister Put-in, your project is very interesting, can you say more about that ? Greetings -- Dylan")
request8.project = r
request8.user = dylan
request8.save!

request9 = Request.new(message: " Hi Pilou, it's Boris ! Do you reemeber me ? I teached you some stuff to become a coder. Your project is for me, contact me quickly ! Greetings -- Boris")
request9.project = m
request9.user = boris
request9.save!

request10 = Request.new(message: " Hi Pilou, it's Benoit, you 're looking for the best ? I'm free ! Kiss -- Benoit")
request10.project = n
request10.user = benoit
request10.save!

request11 = Request.new(message: " Hi Donald, I'm Didier the king of new design wave on minitel. We have the same vision of modernity, contact me I speak Russian ! Greetings -- Henri")
request11.project = t
request11.user = henri
request11.save!

puts 'Finished!'

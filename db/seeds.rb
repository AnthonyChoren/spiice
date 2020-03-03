# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

User.destroy_all
Project.destroy_all
Request.destroy_all


puts "creating seed"

puts "creating users......."


didier = User.new(email: "designer@gmail.com", password:"azerty", first_name: "Didier", last_name: "Dupont", phone_number:"0615385345", company:"FreeLance", city:"Bordeaux", country:"France", role: 1, bio:"Webdesigner since 1982, a lot of experience in Minitel and Nokia 3310 design, looking for new projects I love new things and explore new technologies. ")
dylan = User.new(email: "designer2@gmail.com", password:"azerty", first_name: "Dylan", last_name: "Dujardin", phone_number:"0615398756", company:"FreeLance", city:"Paris", country:"France", role: 1, bio:"Webdesigner since 2019, with 2 completed projects in CSS. I 'm the best in my speciality with a great desire to revolutionize the field of Web-Design ! ")
nicephore = User.new(email: "designer3@gmail.com", password:"azerty", first_name: "Nicephore", last_name: "Sagan", phone_number:"0615398755", company:"Freelance", city:"Maubeuges", country:"France", role: 1, bio:"Visionary Web Designer with many years of experience since 2018, looking for real project to express my well-knnown creativity, I master CodeCademy and OpenClassRoom like nobody.")
bertrand = User.new(email: "designer4@gmail.com", password:"azerty", first_name: "Bertrand", last_name: "Bussac", phone_number:"0615398752", company:"LeWagon", city:"Nantes", country:"France", role: 1, bio:"Webdesigner with 10 years of success, if you want the best don't miss me I totally agree with my world renown ! ")
anthony = User.new(email: "designer5@gmail.com", password:"azerty", first_name: "Anthony", last_name: "Choren", phone_number:"0615398751", company:"Apple", city:"Bordeaux", country:"France", role: 1, bio:"Webdesigner by nature, discover my Portfolio and see my uncommon work, if you want the best for your project, choose the best for your team ! ")
benoit = User.new(email: "designer6@gmail.com", password:"azerty", first_name: "Benoit", last_name: "Calin", phone_number:"0615398752", company:"Grinch Ltd", city:"Bordeaux", country:"France", role: 1, bio:"The best since the beginning, my work is the very definition of perfection, if you want the success you will need my help ")
bill = User.new(email: "client@gmail.com", password:"azerty", first_name: "Bill", last_name: "Gates", phone_number:"0654324559", company:"Microsoft", city:"Redmond", country:"USA", role: 0, bio:"Project owner from a major enterprise, looking for a very disciplined web designer who doesn't ask too many questions, especially on the merits. Anyway we are looking for the best. ")
charly = User.new(email: "client1@gmail.com", password:"azerty", first_name: "Charly", last_name: "Carol", phone_number:"0654324556", company:"Microsoft", city:"Marseille", country:"France", role: 0, bio:"Project owner looking for a good webdesigner, hard worker and easy to drive. ")
chloe = User.new(email: "client2@gmail.com", password:"azerty", first_name: "Chloé", last_name: "Christine", phone_number:"0634568998", company:"Amazon", city:"Montpellier", country:"France", role: 0, bio:"Looking for a good webdesigner, project owner blabla blabla")
vanessa = User.new(email: "client3@gmail.com", password:"azerty", first_name: "Vanessa", last_name: "Rapport", phone_number:"0634568997", company:"Amazon", city:"Bordeaux", country:"France", role: 0, bio:"Looking for nice Designer with good skills and very smart mind")
sebastien = User.new(email: "client4@gmail.com", password:"azerty", first_name: "Sebastien", last_name: "Saunier", phone_number:"0654324556", company:"LeWagon", city:"Paris", country:"France", role: 0, bio:"We have a very big project for smart designers, it's about 1 year of hard work but you will have no more than 9 weeks to do your best, only with Ruby, don't panic you will be helped by a very efficient team.")
jeanne = User.new(email: "client5@gmail.com", password:"azerty", first_name: "Jeanne", last_name: "Darque", phone_number:"0634568995", company:"Amazon", city:"Rouen", country:"France", role: 0, bio:"I 'm looking for a real good Product Owner for my project. I need good technical skills ")
didier.save!
dylan.save!
nicephore.save!
bertrand.save!
anthony.save!
benoit.save!
charly.save!
chloe.save!
vanessa.save!
jeanne.save!
bill.save!
sebastien.save!


puts 'Creating projects...'

e = Project.new(title:"Project of Charly", description:"a super cool project, lots of fun ", price: 200, progress: "pending", start: Date.new(2020,2,29) , deadline: Date.new(2020,4,15),)
e.user = charly
e.save!
f = Project.new(title:"Chloé's project", description:"an awesome project, many things to do ", price: 350, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,22),)
f.user = chloe
f.save!
g = Project.new(title:"Sebastien's project", description:"It's about  a one year of hard work project, don't forget Ruby rules ! ", price: 600, progress: "pending", start: Date.new(2020,6,24) , deadline: Date.new(2020,8,24),)
g.user = sebastien
g.save!
h = Project.new(title:"Bill's project", description:"A project for the future, many things to do in few times, we will look for the problems later ", price: 120, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,3,28,)
h.user = bill
h.save!

puts 'Creating requests...'

request1 = Request.new(message: "I want to work with you, Charly. Greetings -- Didier")
request1.project = e
request1.user = didier
request1.save!

request2 = Request.new(message: "I want to work with you, Chloé. Greetings -- Dylan")
request2.project = f
request2.user = dylan
request2.save!

request2 = Request.new(message: "Your challenge sound great Sebastien ! I don't really know what is Ruby rules but you can trust me ! Kiss -- Benoit")
request2.project = g
request2.user = benoit
request2.save!

request2 = Request.new(message: "Good morning Mister Saunier, your project reminds me my bootcamp, I want to work with you and your efficient team, 9 weeks is enough for me ! Greetings-- Anthony")
request2.project = g
request2.user = Anthony
request2.save!

request2 = Request.new(message: "Hi Bill your poject interests me but I have may questions about the merits, I love to get to the bottoms of things. Greetings -- Bertrand")
request2.project = h
request2.user = bertrand
request2.save!

puts 'Finished!'


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

didier = User.new(email: "designer@gmail.com", password:"azerty", first_name: "Didier", last_name: "Dupont", phone_number:"0615385345", company:"Google", city:"Bordeaux", country:"France", role: 1, bio:"Webdesigner since 1982, a lot of experience in Minitel and Nokia 3310 design, looking for new projects ")
dylan = User.new(email: "designer2@gmail.com", password:"azerty", first_name: "Dylan", last_name: "Dujardin", phone_number:"0615398756", company:"Apple", city:"Paris", country:"France", role: 1, bio:"Webdesigner since 2019, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio veniam ")
charly = User.new(email: "client@gmail.com", password:"azerty", first_name: "Charly", last_name: "Carol", phone_number:"0654324556", company:"Microsoft", city:"Marseille", country:"France", role: 0, bio:"Project owner looking for a good webdesigner ")
chloe = User.new(email: "client2@gmail.com", password:"azerty", first_name: "Chloé", last_name: "Christine", phone_number:"0634568998", company:"Amazon", city:"Montpellier", country:"France", role: 0, bio:"Looking for a good webdesigner, project owner blabla blabla")
didier.save!
dylan.save!
charly.save!
chloe.save!


puts 'Creating projects...'

e = Project.new(title:"Project of Charly", description:"a super cool project, lots of fun ", price: 200, progress: "pending", start: Date.new(2020,2,29) , deadline: Date.new(2020,4,15),)
e.user = charly
e.save!
f = Project.new(title:"Chloé's project", description:"an awesome project, many things to do ", price: 350, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,22),)
f.user = chloe
f.save!

puts 'Creating requests...'

request1 = Request.new(message: "I want to work with you, Charly. Greetings -- Didier")
request1.project = e
request1.user = didier
request1.save!

request2 = Request.new(message: "I want to work with you, Chloé. Greetings -- Dylan")
request2.project = f
request2.user = dylan
request2.save!

puts 'Finished!'


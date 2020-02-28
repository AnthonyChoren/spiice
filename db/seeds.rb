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

a = User.new(email: "designer@gmail.com", password:"azerty", first_name: "a_first_name", last_name: "a_last_name", phone_number:"1234567890", company:"A-corp", city:"A-city", country:"A-country", role: 1, bio:"Webdesigner since 1982, a lot of experience in Minitel and Nokia 3310 design, looking for new projects ")
b = User.new(email: "bbb@gmail.com", password:"azerty", first_name: "b_first_name", last_name: "b_last_name", phone_number:"0123456789", company:"B-corp", city:"B-city", country:"B-country", role: 1, bio:"Webdesigner since 2019, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio veniam ")
c = User.new(email: "client@gmail.com", password:"azerty", first_name: "c_first_name", last_name: "c_last_name", phone_number:"7894561230", company:"C-corp", city:"C-city", country:"C-country", role: 0, bio:"Project owner looking for a good webdesigner ")
d = User.new(email: "ddd@gmail.com", password:"azerty", first_name: "d_first_name", last_name: "d_last_name", phone_number:"9876543210", company:"D-corp", city:"D-city", country:"D-country", role: 0, bio:"Looking for a good webdesigner, project owner blabla blabla")
a.save!
b.save!
c.save!
d.save!


puts 'Creating projects...'

e = Project.new(title:"Project of Mr a", description:"a super cool project, lots of fun ", price: 200, progress: "pending", start: Date.new(2020,2,29) , deadline: Date.new(2020,4,15),)
e.user = c
e.save!
f = Project.new(title:"Project of Mr b", description:"an awesome project, many things to do ", price: 350, progress: "pending", start: Date.new(2020,3,17) , deadline: Date.new(2020,5,22),)
f.user = d
f.save!

puts 'Creating requests...'

request1 = Request.new(message: "I want to work with you")
request1.project = e
request1.user = a
request1.save!

request2 = Request.new(message: "I want to work with you")
request2.project = f
request2.user = a
request2.save!

puts 'Finished!'


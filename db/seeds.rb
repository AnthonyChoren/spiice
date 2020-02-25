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

a = User.new(email: "aaa@gmail.com", password:"aaaaaa", first_name: "a_first_name", last_name: "a_last_name", phone_number:"1234567890", company:"A-corp", city:"A-city", country:"A-country", role:"webdesigner", bio:"Webdesigner since 1982, a lot of experience in Minitel and Nokia 3310 design, looking for new projects ")
b = User.new(email: "bbb@gmail.com", password:"aaaaaa", first_name: "b_first_name", last_name: "b_last_name", phone_number:"0123456789", company:"B-corp", city:"B-city", country:"B-country", role:"webdesigner", bio:"Webdesigner since 2019, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio veniam ")
c = User.new(email: "ccc@gmail.com", password:"aaaaaa", first_name: "c_first_name", last_name: "c_last_name", phone_number:"7894561230", company:"C-corp", city:"C-city", country:"C-country", role:"project_owner", bio:"Project owner looking for a good webdesigner ")
d = User.new(email: "ddd@gmail.com", password:"aaaaaa", first_name: "d_first_name", last_name: "d_last_name", phone_number:"9876543210", company:"D-corp", city:"D-city", country:"D-country", role:"project_owner", bio:"Looking for a good webdesigner, project owner blabla blabla")
a.save
b.save
c.save
d.save

e = Project.new(user_id: User.first, title:"Project of Mr a", description:"a super cool project, lots of fun ", price: 200, progress: "pending")
f =Project.new(user_id: user.first(2).last, title:"Project of Mr b", description:"an awesome project, many things to do ", price: 350, progress: "pending")
e.save!
f.save

puts 'Creating categories...'

puts 'Finished!'


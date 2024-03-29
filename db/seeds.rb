# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student = Student.create(
	first_name: "Ravi", 
	last_name: 'Singh', 
	email: 'ravi@bootcamp.com',
	address: 'abc new colony',
	contact_number: '38748',
	date_of_birth: Date.today
	)
 
12.times do |i| 
  puts("Creating Student:#{i+1}")
  Student.create(
  first_name: "FirstName#{i+1}",
  last_name: "LastName#{i+1}",
  email: "ravi#{i+1}@bootcamp.com",
  address: "colony#{i+1}",
  contact_number: "#{i+1}#{i+1}#{i+1}#{i+1}#{i+1}",
  date_of_birth: Date.today + i 
  )
end

Student.all.each do |student|
	student.blogs.create(title: "Dummy Blog for student #{student.id}", content: "Custom content pending")
	student.blogs.create(title: "Dummy Blog for student #{student.id}", content: "Custom content pending")
end 



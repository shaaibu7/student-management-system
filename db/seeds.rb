# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Student.create(first_name: 'Ravi', last_name: 'Zacharias', email: 'ravi@gmail.com')

20.times do |i|
  puts "Creating student #{i + 1}"
  Student.create(
    first_name: "Student #{i + 1}",
    last_name: "Lname #{i + 1}",
    email: "student#{i + 1}@bootcamp.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
end

Course.create(name: 'Ruby on Rails bootcamp', description: 'pending')
Course.create(name: 'ReactJs bootcamp', description: 'pending')
Course.create(name: 'AngularJs bootcamp', description: 'pending')
Course.create(name: 'Nodejs bootcamp', description: 'pending')
Course.create(name: 'Java bootcamp', description: 'pending')
Course.create(name: 'Python bootcamp', description: 'pending')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# 500.times do
#   Book.create!(
#     title: Faker::Book.title, 
#     author: Faker::Book.author, 
#     description: Faker::Book.genre,
#     url: Faker::Internet.url
#   )

  50.times do
    User.create!(
      name: Faker::Name.name
    )

end

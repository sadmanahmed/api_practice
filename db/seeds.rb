# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
end
20.times do
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end
20.times do
  Comment.create(
    comment: Faker::Lorem.sentence,
    like: Faker::Number.number
  )
end
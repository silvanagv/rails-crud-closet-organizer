# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Item.create(
  category: Faker::Hipster.word,
  color: Faker::Color.color_name,
  fabric: Faker::Hipster.word
  )
end

10.times do
  Outfit.create(
  name: "outfit_name",
  season: "summer",
  formality_level: Faker::Number.digit
  )
end

10.times do
  Brand.create(
  name: Faker::Company.name
  )
end

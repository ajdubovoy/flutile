# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instrument.destroy_all
User.destroy_all

user = User.create(email: "test@example.com", password: "123456789")

12.times do
  Instrument.create(name: Faker::Music.instrument, price: Faker::Number.between(10, 100), location: Faker::Address.city, description: Faker::RickAndMorty.quote, user: user)
end




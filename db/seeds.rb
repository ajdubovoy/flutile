# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Message.destroy_all
Conversation.destroy_all
Instrument.destroy_all
User.destroy_all

user1 = User.create(email: "test1@example.com", password: "123456789", name: Faker::FunnyName.name)
user2 = User.create(email: "test2@example.com", password: "123456789", name: Faker::FunnyName.name)
user3 = User.create(email: "test3@example.com", password: "123456789", name: Faker::FunnyName.name)
user4 = User.create(email: "test4@example.com", password: "123456789", name: Faker::FunnyName.name)
users = User.all

  piano = Instrument.new(name: "Steinway piano", price: 10, location: "Berlin", description: " Steinway Concert Grand Piano - Model D", user: User.all.sample)
  piano.remote_photo_url = "https://i.ebayimg.com/images/g/v3kAAOSwzRFaZn9W/s-l1600.jpg"
  piano.save!
  flute = Instrument.new(name: "2017 Yamaha flute", price: 30, location: "Portland", description: "YFL-211S flute", user: User.all.sample)
  flute.remote_photo_url = "https://i.ebayimg.com/images/g/9z4AAOSwImpXpTMn/s-l1600.jpg"
  flute.save!
  guitar = Instrument.new(name: "Fender Telecaster guitar", price: 10, location: "Berlin", description: "Fender Special Edition HH Maple Fingerboard Standard Telecaster Sea Foam Pearl", user: User.all.sample)
  guitar.remote_photo_url = "https://i.ebayimg.com/images/g/alcAAOSwLMJbaHjT/s-l1600.jpg"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://i.ebayimg.com/images/g/HOUAAOSw4LdZ4lhr/s-l1600.jpg"
  sax.save!
  drums = Instrument.new(name: "Vintage sonor drum kit", price: 30, location: "Seattle", description: "Sonor Vintage Series 3pc Shell Kit in Vintage Pearl", user: User.all.sample)
  drums.remote_photo_url = "https://i.ebayimg.com/images/g/kioAAOSwmMZalOI5/s-l1600.jpg"
  drums.save!
  piano = Instrument.new(name: "Steinway piano", price: 10, location: "Berlin", description: " Steinway Concert Grand Piano - Model D", user: User.all.sample)
  piano.remote_photo_url = "https://i.ebayimg.com/images/g/v3kAAOSwzRFaZn9W/s-l1600.jpg"
  piano.save!
  flute = Instrument.new(name: "2017 Yamaha flute", price: 30, location: "Portland", description: "YFL-211S flute", user: User.all.sample)
  flute.remote_photo_url = "https://i.ebayimg.com/images/g/9z4AAOSwImpXpTMn/s-l1600.jpg"
  flute.save!
  guitar = Instrument.new(name: "Fender Telecaster guitar", price: 10, location: "Berlin", description: "Fender Special Edition HH Maple Fingerboard Standard Telecaster Sea Foam Pearl", user: User.all.sample)
  guitar.remote_photo_url = "https://i.ebayimg.com/images/g/alcAAOSwLMJbaHjT/s-l1600.jpg"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://i.ebayimg.com/images/g/HOUAAOSw4LdZ4lhr/s-l1600.jpg"
  sax.save!
  drums = Instrument.new(name: "Vintage sonor drum kit", price: 30, location: "Seattle", description: "Sonor Vintage Series 3pc Shell Kit in Vintage Pearl", user: User.all.sample)
  drums.remote_photo_url = "https://i.ebayimg.com/images/g/kioAAOSwmMZalOI5/s-l1600.jpg"
  drums.save!
  piano = Instrument.new(name: "Steinway piano", price: 10, location: "Berlin", description: " Steinway Concert Grand Piano - Model D", user: User.all.sample)
  piano.remote_photo_url = "https://i.ebayimg.com/images/g/v3kAAOSwzRFaZn9W/s-l1600.jpg"
  piano.save!
  flute = Instrument.new(name: "2017 Yamaha flute", price: 30, location: "Portland", description: "YFL-211S flute", user: User.all.sample)
  flute.remote_photo_url = "https://i.ebayimg.com/images/g/9z4AAOSwImpXpTMn/s-l1600.jpg"
  flute.save!
  guitar = Instrument.new(name: "Fender Telecaster guitar", price: 10, location: "Berlin", description: "Fender Special Edition HH Maple Fingerboard Standard Telecaster Sea Foam Pearl", user: User.all.sample)
  guitar.remote_photo_url = "https://i.ebayimg.com/images/g/alcAAOSwLMJbaHjT/s-l1600.jpg"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://i.ebayimg.com/images/g/HOUAAOSw4LdZ4lhr/s-l1600.jpg"
  sax.save!
  drums = Instrument.new(name: "Vintage sonor drum kit", price: 30, location: "Seattle", description: "Sonor Vintage Series 3pc Shell Kit in Vintage Pearl", user: User.all.sample)
  drums.remote_photo_url = "https://i.ebayimg.com/images/g/kioAAOSwmMZalOI5/s-l1600.jpg"
  drums.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://i.ebayimg.com/images/g/HOUAAOSw4LdZ4lhr/s-l1600.jpg"
  sax.save!


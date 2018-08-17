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

  piano = Instrument.new(name: "KRONOS keyboard", price: 10, location: "Berlin", description: "88-Key Piano Keyboard, Sound Engines Music Workstation Audio Effects Touch", user: User.all.sample)
  piano.remote_photo_url = "https://images.pexels.com/photos/159420/piano-instrument-music-keys-159420.jpeg?cs=srgb&dl=antique-black-and-white-close-up-159420.jpg&fm=jpg"
  piano.save!
  flute = Instrument.new(name: "Solid 18K gold Pearl Maesta flute", price: 30, location: "Portland", description: "Solid 18K gold Pearl Maesta handmade flute, soldered toneholes, mint condition", user: User.all.sample)
  flute.remote_photo_url = "https://images.pexels.com/photos/417456/pexels-photo-417456.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  flute.save!
  guitar = Instrument.new(name: "Vintage Fender Telecaster", price: 30, location: "Berlin", description: "Vintage 1965 Fender Telecaster Guitar Lake Placid Blue", user: User.all.sample)
  guitar.remote_photo_url = "https://images.pexels.com/photos/225230/pexels-photo-225230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://images.pexels.com/photos/1049690/pexels-photo-1049690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  sax.save!
  drums = Instrument.new(name: "Nord electro 2", price: 30, location: "Seattle", description: "Nord Electro 2 73key Keyboard", user: User.all.sample)
  drums.remote_photo_url = "https://images.pexels.com/photos/322719/pexels-photo-322719.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  drums.save!
  piano = Instrument.new(name: "Steinway piano", price: 10, location: "Berlin", description: " Steinway Concert Grand Piano - Model D", user: User.all.sample)
  piano.remote_photo_url = "https://images.pexels.com/photos/1246437/pexels-photo-1246437.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  piano.save!
  flute = Instrument.new(name: "2017 Yamaha flute", price: 30, location: "Portland", description: "YFL-211S flute", user: User.all.sample)
  flute.remote_photo_url = "https://images.pexels.com/photos/164811/pexels-photo-164811.jpeg?cs=srgb&dl=flute-heart-music-164811.jpg&fm=jpg"
  flute.save!
  guitar = Instrument.new(name: "Gibson les paul", price: 10, location: "Berlin", description: "2017 Gibson Les Paul Standard - Bourbon Burst", user: User.all.sample)
  guitar.remote_photo_url = "https://images.pexels.com/photos/34074/pexels-photo.jpg?cs=srgb&dl=guitar-music-musical-instrument-34074.jpg&fm=jpg"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://images.pexels.com/photos/756507/pexels-photo-756507.jpeg?cs=srgb&dl=adult-art-background-756507.jpg&fm=jpg"
  sax.save!
  drums = Instrument.new(name: "Vintage sonor drum kit", price: 30, location: "Seattle", description: "Sonor Vintage Series 3pc Shell Kit in Vintage Pearl", user: User.all.sample)
  drums.remote_photo_url = "https://images.pexels.com/photos/730656/pexels-photo-730656.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  drums.save!
  piano = Instrument.new(name: "Steinway piano", price: 10, location: "Berlin", description: " Steinway Concert Grand Piano - Model D", user: User.all.sample)
  piano.remote_photo_url = "https://images.pexels.com/photos/164935/pexels-photo-164935.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  piano.save!
  flute = Instrument.new(name: "2017 Yamaha flute", price: 30, location: "Portland", description: "YFL-211S flute", user: User.all.sample)
  flute.remote_photo_url = "https://images.pexels.com/photos/415627/pexels-photo-415627.jpeg?cs=srgb&dl=adult-architecture-dome-415627.jpg&fm=jpg"
  flute.save!
  guitar = Instrument.new(name: "Fender Telecaster guitar", price: 10, location: "Berlin", description: "Fender Special Edition HH Maple Fingerboard Standard Telecaster Sea Foam Pearl", user: User.all.sample)
  guitar.remote_photo_url = "https://images.pexels.com/photos/376452/pexels-photo-376452.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  guitar.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://images.pexels.com/photos/1049690/pexels-photo-1049690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  sax.save!
  drums = Instrument.new(name: "Vintage sonor drum kit", price: 30, location: "Seattle", description: "Sonor Vintage Series 3pc Shell Kit in Vintage Pearl", user: User.all.sample)
  drums.remote_photo_url = "ttps://images.pexels.com/photos/322719/pexels-photo-322719.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  drums.save!
  sax = Instrument.new(name: "Saxophone", price: 15, location: "Columbus", description: "Brand new professional Gold Tenor Saxophone", user: User.all.sample)
  sax.remote_photo_url = "https://images.pexels.com/photos/1049690/pexels-photo-1049690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  sax.save!


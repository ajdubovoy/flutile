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

urls = ['https://images.pexels.com/photos/42224/accord-acoustic-art-background-42224.jpeg?cs=srgb&dl=acoustic-guitar-classical-guitar-concert-guitar-42224.jpg&fm=jpg', 'https://images.pexels.com/photos/45243/saxophone-music-gold-gloss-45243.jpeg?cs=srgb&dl=brass-classic-classical-music-45243.jpg&fm=jpg', 'https://images.pexels.com/photos/1021142/pexels-photo-1021142.jpeg?cs=srgb&dl=antique-bedroom-chord-1021142.jpg&fm=jpg', 'https://images.pexels.com/photos/51937/oboe-music-tool-art-51937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940, https://images.pexels.com/photos/417456/pexels-photo-417456.jpeg?cs=srgb&dl=adult-band-bokeh-417456.jpg&fm=jpg', 'https://images.pexels.com/photos/237464/pexels-photo-237464.jpeg?cs=srgb&dl=drum-drums-musical-instrument-237464.jpg&fm=jpg', 'https://images.pexels.com/photos/165973/pexels-photo-165973.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']

12.times do
  instrument = Instrument.new(name: Faker::Music.instrument, price: Faker::Number.between(10, 100), location: Faker::Address.city, description: Faker::RickAndMorty.quote, user: user)
  instrument.remote_photo_url = urls.sample
  instrument.save!
end




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Event.destroy_all
EventUser.destroy_all
User.destroy_all
HotelUser.destroy_all
Hotel.destroy_all


10.times do 
    Location.create(city: Faker::Address.unique.city)
end

10.times do
    Hotel.create(name: "#{Faker::NatoPhoneticAlphabet.unique.code_word} Hotel", room_rate: rand(80..200), location_id: Location.all.sample.id)
end

10.times do
    Event.create(name: "#{Faker::Game.title} Event", location_id: Location.all.sample.id, type_of_event: "#{Faker::Game.platform} Type",
    ticket_cost: rand(40..200), date: Faker::Date.between(from: "2018-01-01", to: "2020-06-01"))
end

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, budget: rand(1000..1500), username: Faker::Esport.unique.player, password_digest: Faker::Hipster.word)
end

50.times do 
    EventUser.create(user_id: User.all.sample.id, event_id: Event.all.sample.id)
end

50.times do
    HotelUser.create(user_id: User.all.sample.id, hotel_id: Hotel.all.sample.id, length_of_stay: rand(1..4))
end
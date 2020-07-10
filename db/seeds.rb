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


Location.create(city: "Austin, TX")
Location.create(city: "San Diego, CA")
Location.create(city: "Nashville, TN")
Location.create(city: "Indio, CA")
Location.create(city: "Manchester, TN")
Location.create(city: "Washington, DC")
Location.create(city: "Chicago, IL")
Location.create(city: "Tampa, FL")
Location.create(city: "Las Vegas, NV")
Location.create(city: "Los Angeles, CA")
Location.create(city: "Atlanta, GA")

100.times do
    Hotel.create(name: "#{Faker::NatoPhoneticAlphabet.code_word} Hotel", room_rate: rand(80..200), location_id: Location.all.sample.id)
end

Event.create(location_id: Location.find_by(city: "Austin, TX").id, name: "South by Southwest", type_of_event: "Concert", ticket_cost: 900, date: Date.parse('2021-03-12'), img: "SXSW_logo.jpg")
Event.create(location_id: Location.find_by(city: "San Diego, CA").id, name: "Comic-Con", type_of_event: "Convention", ticket_cost: 70, date: Date.parse('2021-07-22'), img: "Comic_Con_logo.png")
Event.create(location_id: Location.find_by(city: "Nashville, TN").id, name: "CMA Fest", type_of_event: "Concert", ticket_cost: 180, date: Date.parse('2021-06-10'), img: "CMA_Fest_logo.png")
Event.create(location_id: Location.find_by(city: "Indio, CA").id, name: "Coachella", type_of_event: "Concert", ticket_cost: 399, date: Date.parse('2021-04-10'), img: "Coachella_logo.jpeg")
Event.create(location_id: Location.find_by(city: "Manchester, TN").id, name: "Bonnaroo", type_of_event: "Concert", ticket_cost: 319, date: Date.parse('2021-06-17'), img: "Bonnaroo_logo.jpg")
Event.create(location_id: Location.find_by(city: "Washington, DC").id, name: "Awesome-Con", type_of_event: "Convention", ticket_cost: 80, date: Date.parse('2021-12-11'), img: "Awesome_Con_Logo.png")
Event.create(location_id: Location.find_by(city: "Chicago, IL").id, name: "Lollapalooza", type_of_event: "Concert", ticket_cost: 340, date: Date.parse('2021-07-30'), img: "Lollapolooza_logo.png")
Event.create(location_id: Location.find_by(city: "Tampa, FL").id, name: "Super Bowl LV", type_of_event: "Sports", ticket_cost: 4000, date: Date.parse('2021-02-10'), img: "Super_Bowl_logo.jpeg")
Event.create(location_id: Location.find_by(city: "Las Vegas, NV").id, name: "NFL Draft", type_of_event: "Sports", ticket_cost: 50, date: Date.parse('2021-04-29'), img: "NFL_Draft_logo.jpeg")
Event.create(location_id: Location.find_by(city: "Los Angeles, CA").id, name: "E3 Expo", type_of_event: "Convention", ticket_cost: 250, date: Date.parse('2021-06-15'), img: "E3_logo.png")
Event.create(location_id: Location.find_by(city: "Atlanta, GA").id, name: "MLB All-Star Game", type_of_event: "Sports", ticket_cost: 1500, date: Date.parse('2021-07-13'), img: "All_Star_Game_logo.png")

# 10.times do
#     User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Esport.unique.player, password_digest: Faker::Hipster.word)
# end
User.create(first_name: "Marcos", last_name: "Velasco", username: "mk", password: "mk", password_confirmation: "mk")
User.create(first_name: "Marcos", last_name: "Velasco", username: "Mark", password: "password", password_confirmation: "password")
User.create(first_name: "Mike", last_name: "Causey", username: "Mike", password: "password", password_confirmation: "password")


# 50.times do 
#     EventUser.create(user_id: User.all.sample.id, event_id: Event.all.sample.id)
# end

# 50.times do
#     HotelUser.create(user_id: User.all.sample.id, hotel_id: Hotel.all.sample.id, length_of_stay: rand(1..4))
# end
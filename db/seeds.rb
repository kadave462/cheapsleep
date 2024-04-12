# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Room.destroy_all
Hotel.destroy_all
User.destroy_all

user1 = User.create!(
  email: 'julien@email.com',
  password: 'julien'
)

user2 = User.create!(
  email: 'jonathan@email.com',
  password: 'jonathan'
)

user3 = User.create!(
  email: 'david@email.com',
  password: 'davidk'
)


hotel1 = Hotel.create!(
  name:"Novotel Hotel",
  image: 'https://media-cdn.tripadvisor.com/media/photo-s/16/1a/ea/54/hotel-presidente-4s.jpg',
  address:"10 chemin du bassing 13014",
)

hotel2 = Hotel.create!(
  name:"Marriot Hotel",
  image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/ca/26/95/hotel-club-del-sol.jpg?w=1000&h=-1&s=1',
  address:"15 rue d amerique 13007",
)

hotel3 = Hotel.create!(
  name:"Cassablanca Hotel",
  image: 'https://digital.ihg.com/is/image/ihg/ihg-lp-refresh-hero-imea-gben-lvp-1440x617',
  address:"5 rue de Rome 13008",
)

hotel4 = Hotel.create!(
  name:"Guiness World Hotel",
  image: 'https://media-cdn.tripadvisor.com/media/photo-s/29/11/23/98/hotel-exterior.jpg',
  address:"45 rue de dubai 13078",
)


room1 = Room.create!(
  hotel_id: hotel1.id,
  price_per_night: rand(50..70),
  capacity: 2,
  image: 'https://www.futuroscope.com/upload/media/hotel-du-futuroscope-visio10.jpg',
  )

  room2 = Room.create!(
  hotel_id: hotel2.id,
  price_per_night: rand(50..70),
  capacity: 3,
  image: 'https://maashaktitours.com/wp-content/uploads/2019/02/3-Star-hotel.jpg',
  )

  room3 = Room.create!(
  hotel_id: hotel3.id,
  price_per_night: rand(50..70),
  capacity: 3,
  image: 'https://media-cdn.tripadvisor.com/media/photo-s/09/ba/32/26/centre-point-pratunam.jpg',
  )


  room4 = Room.create!(
  hotel_id: hotel1.id,
  price_per_night: rand(50..70),
  capacity: 2,
  image: 'https://www.starhotelchiangmai.com/images/rooms/deluxe/1500/deluxe_06.jpg',
  )


  booking1 = Booking.create!(
  user_id: user1.id,
  room_id: room1.id,
 starts_at: DateTime.new(2024, 5, 2),
  ends_at: DateTime.new(2024, 5, 7)
  )

  booking2 = Booking.create!(
  user_id: user2.id,
  room_id: room2.id,
  starts_at: DateTime.new(2024, 5, 2),
  ends_at: DateTime.new(2024, 5, 9)
  )


  booking3 = Booking.create!(
  user_id: user3.id,
  room_id: room3.id,
 starts_at: DateTime.new(2024, 5, 2),
  ends_at: DateTime.new(2024, 5, 10)
  )

  puts 'Seeds OK.'

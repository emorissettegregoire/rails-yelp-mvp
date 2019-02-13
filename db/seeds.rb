# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# claudette = Restaurant.new(name: "Claudette", address: "55 Laurier", category: "french", phone_number: "514-555-1010")
# panthere_verte = Restaurant.new(name: "Panthere Verte", address: "567 Casgrain", category: "chinese", phone_number: "514-210-1456")
# aux_vivres = Restaurant.new(name: "Aux Vivres", address: "666 Casgrain", category: "italian", phone_number: "514-369-2000")
# petit_seoul = Restaurant.new(name: "Petit Seoul", address: "10 St-Laurent", category: "japanese", phone_number: "514-544-1188")
# burger_ville = Restaurant.new(name: "Burger de Ville", address: "15 St-Laurent", category: "belgian", phone_number: "514-834-7623")

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '514-987-1212',
    category: 'italian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '514-333-1717',
    category: 'french'
  },
  {
    name:         'Claudette',
    address:      '7 laurier',
    phone_number: '514-581-1672',
    category: 'italian'
  },
  {
    name:         'Petit Seoul',
    address:      '111 St-Laurent',
    phone_number: '514-981-9090',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)

restaurants_reviews = [
  {
    content: "looooooove this restaurant!",
    rating: 4,
    restaurant: Restaurant.where(name: 'Petit Seoul')
  },
  {
    content: "haaaaate this restaurant!",
    rating: 0,
    restaurant: Restaurant.where(name: 'Dishoom')

  },
  {
    content: "don't go there, food is discusting",
    rating: 0,
    restaurant: Restaurant.where(name: 'Pizza East')

  },
  {
    content: "nothing much there",
    rating: 3,
    restaurant: Restaurant.where(name: 'Claudette')

  },
  {
    content: "my favorite one!",
    rating: 5,
    restaurant: Restaurant.where(name: 'Dishoom')
  }
  ]
puts 'Finished!'

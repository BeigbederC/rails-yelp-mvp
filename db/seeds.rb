
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone: '060606060',
    category: "french"
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, Pau',
    phone: '060606060',
    category: "italian"
  },
  {
    name: 'mcdo',
    address: '20 bloblo St, Amiens',
    phone: '060606060',
    category: "american"
  },
  {
    name: 'fufu',
    address: '7 blublu St, Bordeaux',
    phone: '060606060',
    category: "japanese"
  },
  {
    name: 'don peppone',
    address: '18 blabla High St, Paris',
    phone: '060606060',
    category: "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

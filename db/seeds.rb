# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Wig.destroy_all
User.destroy_all
style = ["curly", "straight", "afro", "wavy", "other"]

user_one = User.new(email: "fermincito123@gmail.com", name: "Fermincito", bio: "Wig user, wig lover, living the wig life! Founder of Make-a-wig Foundation, I'll make your wigs come true!", password: "123456")
user_one.remote_avatar_url = "./app/assets/images/fake_avatar2.jpg"
user_one.save!

user_two = User.new(email: "fake123@gmail.com", name: "Luiz", bio: "Wig is life, life is wig!", password: "123456")
user_two.remote_avatar_url = "./app/assets/images/fake_avatar.jpeg"
user_two.save!

url = "https://cdn.shopify.com/s/files/1/2591/6336/products/"

puts 'Creating wigs...'
wigs_attributes = [
  {
    color: 'blond',
    size:  'long',
    style: 'wavy',
    name:  'Whoopsie Blond',
    price: 11,
    user: user_one,
    remote_photo_url: "./app/assets/images/ps9ea35c3lkcswbnvuw9.png"
  },
  {
    color: 'green',
    size:  'long',
    style: 'straight',
    name:  'Alejandra Alienista',
    price: 24,
    user: user_two,
    remote_photo_url: "./app/assets/images/xx4f2wqlkraazgc07sg9.jpg"
  },
  {
    color: 'other',
    size:  'short',
    style: 'straight',
    name:  'Pearly Fashionista',
    price: 93,
    user: user_one,
    remote_photo_url: "./app/assets/images/newwig.png"
  },
  {
    color: 'brown',
    size:  'long',
    style: 'straight',
    name:  'Long Diva',
    price: 12,
    user: user_one,
    remote_photo_url: "./app/assets/images/mkexr5y84ykrnba6ozjiq.jpg"
  },
  {
    color: 'black',
    size:  'medium',
    style: 'straight',
    name:  'Emo Extravaganza',
    price: 93,
    user: user_one,
    remote_photo_url: "./app/assets/images/c8xlfykuysz7yfx8j5sf.jpg"
  },
  {
    color: 'other',
    size:  'long',
    style: 'curly',
    name:  'White Eleganza',
    price: 47,
    user: user_two,
    remote_photo_url: "./app/assets/images/gbo6ednerby9b0zpadl6.png"
  },
  {
    color: 'red',
    size:  'long',
    style: 'straight',
    name:  'Aphrodisiac Bloom',
    price: 93,
    user: user_one,
    remote_photo_url: "./app/assets/images/adlmqjofbpsvvlfgvfis.png"
  },
  {
    color: 'blue',
    size:  'long',
    style: 'straight',
    name:  'Witchy Beauty',
    price: 93,
    user: user_two,
    remote_photo_url: "./app/assets/images/qpanyvfslagv3bi70mej.jpg"
  }
]
Wig.create!(wigs_attributes)
puts 'Finished!'

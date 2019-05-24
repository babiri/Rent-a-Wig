# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Wig.destroy_all
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
    remote_photo_url: "https://cdn.shopify.com/s/files/1/2591/6336/products/Abyhair-Full-Lace-Wigs-Blonde-Human-Hair-613-Color-Body-Wavy-Virgin-Human-Hair-Lace-Front-Human-Wig_2048x.png?v=1552194605"
  },
  {
    color: 'green',
    size:  'long',
    style: 'straight',
    name:  'Alejandra Alienista',
    price: 24,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2017/06/WIGSTER19.jpg"
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
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2019/02/IMG_5196.jpg"
  },
  {
    color: 'other',
    size:  'long',
    style: 'curly',
    name:  'White Eleganza',
    price: 47,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2018/01/Androgyny-Lace-Front-Wig.png"
  },
  {
    color: 'red',
    size:  'long',
    style: 'straight',
    name:  'Aphrodisiac Bloom',
    price: 93,
    user: user_one,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2016/12/Aphrodisiac-Lace-Font-Wig.png"
  },
  {
    color: 'blue',
    size:  'long',
    style: 'straight',
    name:  'Witchy Beauty',
    price: 93,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2016/12/peach4.jpg"
  }
]
Wig.create!(wigs_attributes)
puts 'Finished!'

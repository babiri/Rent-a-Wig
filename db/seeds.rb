# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Wig.destroy_all
style = ["curly", "straigth", "afro", "wavy", "other"]

user = User.new
user.email = "fake@gmail.com"
user.name = "John Doe"
user.bio = "porreiro"
user.password = "123456"
user.save

url = "https://cdn.shopify.com/s/files/1/2591/6336/products/Abyhair-Full-Lace-Wigs-Blonde-Human-Hair-613-Color-Body-Wavy-Virgin-Human-Hair-Lace-Front-Human-Wig_2048x.png?v=1552194605"

puts 'Creating wigs...'
wigs_attributes = [
  {
    color: 'red',
    size:  'long',
    style: style.sample,
    name:  'Bob',
    price: 11,
    user: user,
    remote_photo_url: url
  },
  {
    color: 'blond',
    size:  'short',
    style: style.sample,
    name:  'Fernando',
    price: 24,
    user: user,
    remote_photo_url: url
  },
  {
    color: 'black',
    size:  'medium',
    style: style.sample,
    name:  'Albert',
    price: 12,
    user: user,
    remote_photo_url: url
  },
  {
    color: 'green',
    size:  'short',
    style: style.sample,
    name:  'José',
    price: 47,
    user: user,
    remote_photo_url: url
  },
  {
    color: 'blue',
    size:  'long',
    style: style.sample,
    name:  'Alfredo',
    price: 93,
    user: user,
    remote_photo_url: url
  }

]
Wig.create!(wigs_attributes)
puts 'Finished!'

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

puts 'Creating wigs...'
wigs_attributes = [
  {
    color: 'red',
    size:  'long',
    style: style.sample,
    name:  'Bob',
    price: 11,
    user: user
  },
  {
    color: 'blond',
    size:  'short',
    style: style.sample,
    name:  'Fernando',
    price: 24,
    user: user
  },
  {
    color: 'black',
    size:  'medium',
    style: style.sample,
    name:  'Albert',
    price: 12,
    user: user
  },
  {
    color: 'green',
    size:  'short',
    style: style.sample,
    name:  'José',
    price: 47,
    user: user
  },
  {
    color: 'blue',
    size:  'long',
    style: style.sample,
    name:  'Alfredo',
    price: 93,
    user: user
  }

]
Wig.create!(wigs_attributes)
puts 'Finished!'

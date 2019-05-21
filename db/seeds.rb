# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Wig.destroy_all

puts 'Creating wigs...'
wigs_attributes = [
  {
    color: 'red',
    size:  'long',
    style: 'straigh',
    name:  'Bob',
    price: 11
  },
  {
    color: 'blond',
    size:  'short',
    style: 'straigh',
    name:  'Fernando',
    price: 24
  },
  {
    color: 'black',
    size:  'medium',
    style: 'wavy',
    name:  'Albert',
    price: 12
  },
  {
    color: 'green',
    size:  'short',
    style: 'curly',
    name:  'José',
    price: 47
  },
  {
    color: 'blue',
    size:  'long',
    style: 'afro',
    name:  'Alfredo',
    price: 923
  }

]
Wig.create!(wigss_attributes)
puts 'Finished!'

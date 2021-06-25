# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cats = [
  {
    name: "Mittens",
    age: 5,
    enjoys: "sunshine and warm spots"
  },
  {
    name: "Raisins",
    age: 4,
    enjoys: "being queen of the dogs"
  },
  {
    name: "Toast",
    age: 1,
    enjoys: "getting all the attention"
  }
]

cats.each do |attributes|
  Cat.create attributes
  puts "creating cat #{attributes}"
end
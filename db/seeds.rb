# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "deleting"
Flat.destroy_all

puts "creating"
4.times do
  name = Faker::FunnyName.name
  address = Faker::Address.full_address
  price_per_night = rand(75..100)
  number_of_guests = rand(1..4)
  Flat.create!( {name: name, address: address, price_per_night: price_per_night, number_of_guests: number_of_guests} )
end

puts "end"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Remplis la base de données de ton restaurant dans db/seeds.rb avec au moins 5 enregistrements de restaurant valides
require 'faker'
puts Restaurant.destroy_all
food_category = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do |element|
  restaurant = Restaurant.new
  puts "Create a new restaurant"
  restaurant.name = Faker::Restaurant.name
  puts "Create restaurant name"
  restaurant.address = Faker::Address.full_address
  puts "Create restaurant address"
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  puts "Create restaurant phone number"
  restaurant.category = food_category.sample
  puts "Create restaurant category"
  restaurant.save!
end

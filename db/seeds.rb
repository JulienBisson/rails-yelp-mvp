require 'faker'
puts Restaurant.destroy_all
food_category = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do |element|
  puts "Creating a new restaurant"
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.full_address
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.category = food_category.sample
  restaurant.save!
end

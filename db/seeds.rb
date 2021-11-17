# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up DB..."
Restaurant.destroy_all
puts "Done!"

puts "Seeding restaurants..."

50.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: Restaurant::CATEGORY.sample
  )
  restaurant.save!
  puts "Restaurant #{restaurant.id} saved to database"
end

puts "Done!"

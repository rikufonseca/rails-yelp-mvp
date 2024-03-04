# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "4503842580", category: Restaurant::CATEGORY.sample }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "48359834483", category: Restaurant::CATEGORY.sample }
koi = { name: "Koi", address: "4 rue du jap", phone_number: "473255543", category: "japanese" }
ciao = { name: "cia", address: "39 rue de l'italien", phone_number: "7426447893", category: Restaurant::CATEGORY.sample }
makos = { name: "makos", address: "45 rue du mak", phone_number: "644893302", category:Restaurant::CATEGORY.sample }

[dishoom, pizza_east, koi, ciao, makos].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
# end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(
  name: "La Bella Italia",
  address: "Via Roma 123, Roma",
  phone_number: "+39 06 1234567",
  category: "italian"
)

Restaurant.create!(
  name: "Le Petit Bistro",
  address: "Rue de la Paix 45, Paris",
  phone_number: "+33 1 42 96 12 34",
  category: "french"
)

Restaurant.create!(
  name: "Tokyo Sushi Bar",
  address: "Shibuya 2-1-1, Tokyo",
  phone_number: "+81 3 1234 5678",
  category: "japanese"
)

Restaurant.create!(
  name: "Dragon Palace",
  address: "Wangfujing Street 88, Beijing",
  phone_number: "+86 10 8765 4321",
  category: "chinese"
)

Restaurant.create!(
  name: "Brussels Waffle House",
  address: "Grand Place 1, Brussels",
  phone_number: "+32 2 123 45 67",
  category: "belgian"
)

puts "Created #{Restaurant.count} restaurants!"

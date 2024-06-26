# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a new client
Client.create!(first_name: "John", last_name: "Doe", email: "john@hoe.com", telephone_number: "1234567890", DOB: "01/01/2004", dietary_requirement: "none")

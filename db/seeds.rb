# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  ["Kuku", 21, 3, 8],
  ["Ku4u", 1, 32, 18],
  ["Y7d", 2, 3, 4]
].each do |name, age, cuteness, softness|
  Kitten.find_or_create_by(name: name, age: age, cuteness: cuteness, softness: softness)
end
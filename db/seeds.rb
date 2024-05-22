# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require 'unsplash'

Flat.destroy_all if Rails.env.development?

# image = Unsplash::Photo.random(query: "house")

30.times do
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    price_per_night: Faker::Number.between(from: 50, to: 200),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    # image_url: image.urls.regular
    image_url: "https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200",
    image_map_url: "https://maps.googleapis.com/maps/api/staticmap?center=10%20Clifton%20Gardens%20London%20W9%201DT&zoom=13&scale=2&size=1000x1000&maptype=roadmap&markers=color:red%7C10%20Clifton%20Gardens%20London%20W9%201DT&key=AIzaSyAPpx0wk4d-AQ8bhe8-a-ihC7NXLoPElhg"
  )
end

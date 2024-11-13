# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

  # ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
  #   MovieGenre.find_or_create_by!(name: genre_name)
  # end

  require 'faker'

  puts 'Cleaning database...'
  Restaurant.destroy_all

  puts "Creating 5 records..."

  10.times do
    Restaurant.create!(
      name: Faker::Company.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: %w(chinese italian japanese french belgian).sample
      )
  end

  5.times do
    Review.create(
      content: 'super',
      rating: (0..5).to_a.sample,
      restaurant: Restaurant.all.sample
      )
  end

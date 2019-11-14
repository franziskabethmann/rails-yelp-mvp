puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

cate = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: cate.sample
  )
  restaurant.save!
end

puts 'Finished!'

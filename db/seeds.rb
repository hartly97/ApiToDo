# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  3.times do
    user = User.new(
      name: Faker::Name.name,
      password: Faker::Lorem.characters(8)
      )
    user.save!
  end
  users = User.all

  6.times do
    list = List.new(
      name: Faker::Food.spice,
      )
    list.save!
  end
  lists = List.all

  6.times do
    item = Item.new(
      item: Faker::Food.measurement,
      )
    item.save!
  end
  items = Item.all


puts "3 users created"
puts "6 lists created"
puts "6 items created"

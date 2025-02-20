# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Merchant.destroy_all
merchant_1 = Merchant.create!(
  name: "Knees Weak",
  address: "1 Oppurtunity Way",
  city: "Denver",
  state: "Colorado",
  zip: 80229
)

merchant_2 = Merchant.create(
  name: "Mom's Spaghetti",
  address: "1 Moment Way",
  city: "Las Vegas",
  state: "Nevada",
  zip: 80003
)

merchant_3 = Merchant.create(
  name: "So Loud",
  address: "8 Mile rd",
  city: "Los Angeles",
  state: "California",
  zip: 99482
)

merchant_4 = Merchant.create(
  name: "Calm and Ready",
  address: "1 Shot Way",
  city: "St. Paul",
  state: "Minnesota",
  zip: 82783
)

Item.destroy_all
item_1 = merchant_1.items.create!(
  name: "Knee Brace",
  description: "Prevent knee injuries",
  price: 14.99,
  image: "knee_brace.jpg",
  active: true,
  inventory: 30
)

item_2 = merchant_2.items.create!(
  name: "Italian Spices",
  description: "Seasoning for sauce",
  price: 4.99,
  image: "spices.jpg",
  active: true,
  inventory: 30
)

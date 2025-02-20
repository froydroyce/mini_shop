require 'rails_helper'

RSpec.describe "Items Index" do
  describe "As a visitor" do
    it "I see each item in the system including the items\n
    -name\n
    -description\n
    -price\n
    -image\n
    -active/inactive status\n
    -inventory\n
    -name of merchant that sells the item" do

    merchant_1 = Merchant.create!(
      name: "Knees Weak",
      address: "1 Oppurtunity Way",
      city: "Denver",
      state: "Colorado",
      zip: 80229
    )

    merchant_2 = Merchant.create!(
      name: "Mom's Spaghetti",
      address: "1 Moment Way",
      city: "Las Vegas",
      state: "Nevada",
      zip: 80003
    )

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

    visit items_path

    within(".item-#{item_1.id}") do
      expect(page).to have_content(item_1.name)
      expect(page).to have_content("Description: #{item_1.description}")
      expect(page).to have_content("Merchant: #{merchant_1.name}")
    end

    within(".item-#{item_2.id}") do
      expect(page).to have_content(item_2.name)
      expect(page).to have_content("Description: #{item_2.description}")
      expect(page).to have_content("Merchant: #{merchant_2.name}")
    end

    end
  end
end

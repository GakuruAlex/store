# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

puts "Seeding database..."

# Clear existing data
Order.delete_all
Customer.delete_all
Product.delete_all

# Customers
customers = Customer.create!([
  { name: "Alice Johnson" },
  { name: "Bob Smith" },
  { name: "Carol Mwangi" }
])

# Products
products = Product.create!([
  {
    name: "Laptop",
    category: "Electronics",
    price: 1200.00,
    quantity: 10
  },
  {
    name: "Headphones",
    category: "Electronics",
    price: 150.00,
    quantity: 30
  },
  {
    name: "Office Chair",
    category: "Furniture",
    price: 300.00,
    quantity: 15
  }
])

# Orders
Order.create!([
  {
    customer: customers[0],
    product: products[0],
    quantity: 1,
    date_of_purchase: Date.today - 2
  },
  {
    customer: customers[1],
    product: products[1],
    quantity: 2,
    date_of_purchase: Date.today - 1
  },
  {
    customer: customers[2],
    product: products[2],
    quantity: 1,
    date_of_purchase: Date.today
  }
])

puts "Seeding completed successfully!"

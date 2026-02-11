# Clear existing data
Customer.destroy_all
Product.destroy_all
Order.destroy_all
OrderProduct.destroy_all

# Customers
customers = Customer.create!([
                               { name: "Alice Johnson" },
                               { name: "Bob Smith" },
                               { name: "Charlie Davis" },
                               { name: "Diana Prince" },
                               { name: "Ethan Clark" }
                             ])

# Products
products = Product.create!([
                             { name: "Laptop", category: "Electronics", price: 1200.0, quantity: 10 },
                             { name: "Headphones", category: "Electronics", price: 150.0, quantity: 50 },
                             { name: "Smartphone", category: "Electronics", price: 800.0, quantity: 30 },
                             { name: "Coffee Maker", category: "Home Appliances", price: 100.0, quantity: 20 },
                             { name: "Desk Chair", category: "Furniture", price: 200.0, quantity: 15 },
                             { name: "Running Shoes", category: "Sportswear", price: 90.0, quantity: 40 },
                             { name: "Backpack", category: "Accessories", price: 60.0, quantity: 25 },
                             { name: "Monitor", category: "Electronics", price: 300.0, quantity: 12 }
                           ])

# Orders
orders = [
  Order.create!(customer: customers[0], amount: 300.0, date_of_purchase: Date.today),
  Order.create!(customer: customers[1], amount: 1200.0, date_of_purchase: Date.today - 1),
  Order.create!(customer: customers[2], amount: 450.0, date_of_purchase: Date.today - 2),
  Order.create!(customer: customers[3], amount: 800.0, date_of_purchase: Date.today - 3),
  Order.create!(customer: customers[4], amount: 150.0, date_of_purchase: Date.today - 4),
  Order.create!(customer: customers[0], amount: 950.0, date_of_purchase: Date.today - 5),
  Order.create!(customer: customers[1], amount: 200.0, date_of_purchase: Date.today - 6)
]

order_products = [
   OrderProduct.create!(order: orders[0], product: products[1], quantity: 2),
   OrderProduct.create!(order: orders[1], product: products[0], quantity: 1),
   OrderProduct.create!(order: orders[2], product: products[2], quantity: 1),
   OrderProduct.create!(order: orders[2], product: products[6], quantity: 2),
   OrderProduct.create!(order: orders[3], product: products[4], quantity: 1),
   OrderProduct.create!(order: orders[3], product: products[7], quantity: 2),
   OrderProduct.create!(order: orders[4], product: products[5], quantity: 1),
   OrderProduct.create!(order: orders[5], product: products[2], quantity: 1),
   OrderProduct.create!(order: orders[5], product: products[3], quantity: 1),
   OrderProduct.create!(order: orders[6], product: products[6], quantity: 3)
 ]
puts "Seeded #{Customer.count} customers, #{Product.count} products, #{Order.count} orders, and #{OrderProduct.count} order_products."

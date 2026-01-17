Customer.destroy_all
Product.destroy_all
Order.destroy_all
OrderProduct.destroy_all

customers = Customer.create!([
  { name: "Alice Johnson" },
  { name: "Bob Smith" }
])

products = Product.create!([
  { name: "Laptop", category: "Electronics", price: 1200.0, quantity: 10 },
  { name: "Headphones", category: "Electronics", price: 150.0, quantity: 50 }
])

orders = [
  Order.create!(customer: customers[0], amount: 1200.0, date_of_purchase: Date.today),
  Order.create!(customer: customers[1], amount: 300.0, date_of_purchase: Date.today - 1)
]

OrderProduct.create!(order: orders[0], product: products[1], quantity: 2)
OrderProduct.create!(order: orders[1], product: products[0], quantity: 1)

puts "Seeded #{Customer.count} customers, #{Product.count} products, #{Order.count} orders, and #{OrderProduct.count} order_products."

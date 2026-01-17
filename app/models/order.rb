# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  amount           :decimal(, )
#  created_at       :datetime         not null
#  customer_id      :integer
#  date_of_purchase :date
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_orders_on_customer_id  (customer_id)
#

class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products
  has_many :products, through: :order_products
end

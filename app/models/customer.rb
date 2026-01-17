# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  name       :string
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
  has_many :orders, dependent: :nullify
  has_many :order_products, through: :orders
end

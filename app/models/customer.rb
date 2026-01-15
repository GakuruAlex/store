class Customer < ApplicationRecord
  has_many :orders, dependent: :nullify
  has_many :products, through: :orders
end

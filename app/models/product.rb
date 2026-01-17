# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  category   :string
#  created_at :datetime         not null
#  name       :string
#  price      :float
#  quantity   :integer
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products
end

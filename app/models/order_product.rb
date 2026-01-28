# == Schema Information
#
# Table name: order_products
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  order_id   :integer
#  product_id :integer          not null
#  quantity   :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_order_products_on_order_id    (order_id)
#  index_order_products_on_product_id  (product_id)
#

class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :update_quantity


  private
  def update_quantity
    @product = Product.find(self.product_id)
    @product.quantity -= quantity
    @product.save
  end
end

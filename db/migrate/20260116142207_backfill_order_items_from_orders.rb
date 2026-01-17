class BackfillOrderItemsFromOrders < ActiveRecord::Migration[8.1]
  def up
    Order.where.not(product_id: nil).find_each do |order|
      OrderItem.create!(
        order_id: order.id,
        product_id: order.product_id
      )
    end
  end

  def down
    OrderItem.delete_all
  end
end

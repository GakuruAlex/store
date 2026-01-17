class AddOrderProductsIdToOrders < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :order_products_id, :integer
    add_index :orders, :order_products_id
  end
end

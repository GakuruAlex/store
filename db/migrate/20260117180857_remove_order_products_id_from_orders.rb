class RemoveOrderProductsIdFromOrders < ActiveRecord::Migration[8.1]
  def change
    remove_column :orders, :order_products_id, :integer
  end
end

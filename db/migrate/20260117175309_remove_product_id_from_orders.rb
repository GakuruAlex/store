class RemoveProductIdFromOrders < ActiveRecord::Migration[8.1]
  def change
    remove_foreign_key :orders, :products
    remove_column :orders, :product_id, :integer
  end
end

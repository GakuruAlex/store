class RemoveColumnQuantityFromOrders < ActiveRecord::Migration[8.1]
  def change
    remove_column :orders, :quantity, :integer
  end
end

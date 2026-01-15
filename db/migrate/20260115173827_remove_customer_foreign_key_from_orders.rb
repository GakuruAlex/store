class RemoveCustomerForeignKeyFromOrders < ActiveRecord::Migration[8.1]
  def change
    remove_foreign_key :orders, :customers
  end
end

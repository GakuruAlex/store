class AddCustomerForeignKeyWithNullifyToOrders < ActiveRecord::Migration[8.1]
  def change
    add_foreign_key :orders, :customers, on_delete: :nullify
  end
end

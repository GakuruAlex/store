class AddColumnAmountToOrders < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :amount, :decimal
  end
end

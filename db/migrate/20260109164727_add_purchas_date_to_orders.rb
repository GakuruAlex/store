class AddPurchasDateToOrders < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :date_of_purchase, :date
  end
end

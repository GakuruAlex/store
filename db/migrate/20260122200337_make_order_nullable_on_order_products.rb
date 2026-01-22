class MakeOrderNullableOnOrderProducts < ActiveRecord::Migration[8.1]
  def change
    change_column_null :order_products,:order_id, true
  end
end

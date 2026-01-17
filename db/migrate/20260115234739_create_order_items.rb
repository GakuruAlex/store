class CreateOrderItems < ActiveRecord::Migration[8.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :amount
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class DropOrderItems < ActiveRecord::Migration[8.1]
  def change
    drop_table :order_items do |t|
      t.decimal :amount
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.timestamps
    end
  end
end

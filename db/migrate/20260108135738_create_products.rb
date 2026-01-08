class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end

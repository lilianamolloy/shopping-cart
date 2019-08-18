class AddProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :uuid, null: false
      t.string :name, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end

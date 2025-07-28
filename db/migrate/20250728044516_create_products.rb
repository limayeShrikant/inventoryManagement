class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :quantity_on_hand
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end

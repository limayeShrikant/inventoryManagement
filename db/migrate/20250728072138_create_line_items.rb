class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :product, foreign_key: true
      t.references :purchase_order, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end

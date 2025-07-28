class CreatePurchaseOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_orders do |t|
      t.references :supplier, foreign_key: true
      t.string :status
      t.decimal :total_value

      t.timestamps
    end
  end
end

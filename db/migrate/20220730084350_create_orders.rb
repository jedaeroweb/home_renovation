class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user
      t.string :title, null: false
      t.date :transaction_date, null: false
      t.integer :total_price, null: false, default: 0
      t.integer :order_payments_count, null: false, default: 0
      t.boolean :enable, null:  false, default: false
      t.timestamps null: false
    end
  end
end

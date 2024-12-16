class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.references :order
      t.references :product
      t.integer :quantity, null: false, default: 1
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

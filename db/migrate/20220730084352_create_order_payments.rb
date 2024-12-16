class CreateOrderPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :order_payments do |t|
      t.references :order
      t.references :payment
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

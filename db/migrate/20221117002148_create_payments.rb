class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :title, limit: 60, null: false
      t.string :payment_id, limit: 60, null: false
      t.string :payment_merchant_id, limit: 60, null: false
      t.string :payment_method, limit: 60, null: false
      t.integer :amount, default: 0, null: false
      t.string :status, limit: 60, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

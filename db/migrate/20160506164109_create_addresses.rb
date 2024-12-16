class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :parent_address, null: false, default: 0
      t.references :address_level, null: false, default: 1
      t.string :title, null: false, limit: 60
      t.integer :ads_count, null: false, default: 0
      t.integer :company_addresses_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    add_index :addresses, :title
  end
end





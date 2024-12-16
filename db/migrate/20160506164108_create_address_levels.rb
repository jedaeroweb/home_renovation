class CreateAddressLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :address_levels do |t|
      t.string :title, null: false, limit: 60
      t.integer :addresses_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end





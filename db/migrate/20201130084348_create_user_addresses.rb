class CreateUserAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_addresses do |t|
      t.references :user, null: false
      t.string :address, null: false
      t.string :address_detail, null: false
      t.string :postcode, null: false
      t.boolean :basic, null: false, default: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

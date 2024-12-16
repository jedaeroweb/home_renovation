class CreateCompanyAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :company_addresses do |t|
      t.references :company, null: false
      t.references :address, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

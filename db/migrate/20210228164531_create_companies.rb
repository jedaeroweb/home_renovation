class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.string :phone, null: false
      t.string :code, limit: 20
      t.string :lat, limit: 60
      t.string :lng, limit: 60
      t.time :start_time, null: false, default: '09:00:00'
      t.time :end_time, null: false, default: '06:00:00'
      t.boolean :basic, null: false, default: false
      t.integer :company_specialities_count, null: false, default: 0
      t.integer :company_addresses_count, null: false, default: 0
      t.integer :company_pictures_count, null: false, default: 0
      t.integer :company_codes_count, null: false, default: 0
      t.integer :products_count, null: false, default: 0
      t.integer :reviews_count, null: false, default: 0
      t.integer :biddings_count, null: false, default: 0
      t.integer :portfolios_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

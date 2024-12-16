class CreateAdCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_categories do |t|
      t.string :title, null: false
      t.integer :order_no, null: false, default: 0
      t.integer :ads_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

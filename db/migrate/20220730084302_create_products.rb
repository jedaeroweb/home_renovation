class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :company, null: false
      t.references :product_category, null: false
      t.string :title, null: false, limit: 60
      t.string :description, limit: 200
      t.integer :order_no, null: false, default: 0
      t.integer :price, null: false, default: 0
      t.integer :discount, null: false, default: 0
      t.integer :product_contents_count, null: false, default: 0
      t.integer :product_pictures_count, null: false, default: 0
      t.integer :speciality_category_products_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

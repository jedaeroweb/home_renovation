class CreateSpecialityCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :speciality_categories do |t|
      t.string :title, null: false, limit: 60
      t.integer :specialities_count, null: false, default: 0
      t.integer :speciality_category_products_count, null: false, default: 0
      t.integer :speciality_category_blogs_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

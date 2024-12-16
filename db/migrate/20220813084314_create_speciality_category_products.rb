class CreateSpecialityCategoryProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :speciality_category_products do |t|
      t.references :speciality_category, null: false
      t.references :product, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

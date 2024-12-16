class CreateSpecialityCategoryBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :speciality_category_blogs do |t|
      t.references :speciality_category, null: false
      t.references :blog, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

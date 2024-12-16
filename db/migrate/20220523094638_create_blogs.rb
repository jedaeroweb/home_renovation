class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.references :blog_category, :null => false
      t.references :user, :null => false
      t.string :title, :null => false, :limit => 60
      t.integer :blog_comments_count, :default => 0, :null => false
      t.integer :blog_pictures_count, null: false, default: 0
      t.integer :speciality_category_blogs_count, null: false, default: 0
      t.integer :count, :null => false, :default => 0
      t.boolean :enable, :null => false, :default => true
      t.timestamps :null => false
    end

    create_table :blog_comments do |t|
      t.references :blog, :null => false
      t.references :user
      t.text :content, :null => false
      t.timestamps :null => false
    end
  end
end

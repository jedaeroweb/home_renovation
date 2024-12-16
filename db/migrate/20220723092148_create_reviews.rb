class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :bidding, null: false
      t.string :title,:limit=>60,:null=>false
      t.integer :rating, :null=> false, :default=>2
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps null: false
    end

    create_table :review_contents do |t|
      t.text :content,:null=>false
    end
  end
end

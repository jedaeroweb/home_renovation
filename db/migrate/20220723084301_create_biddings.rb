class CreateBiddings < ActiveRecord::Migration[6.0]
  def change
    create_table :biddings do |t|
      t.references :ad, null: false
      t.references :company, null: false
      t.integer :budget
      t.integer :reviews_count, null: false, default: 0
      t.boolean :accept, null: false, default: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    add_index :biddings, [:ad_id, :company_id], unique: true
  end

  create_table :bidding_contents do |t|
    t.references :bidding, null: false
    t.text :content, null: false
  end
end

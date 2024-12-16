class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.references :ad_category, null: false
      t.references :user, null: false
      t.references :speciality, null: false
      t.references :address, null: false
      t.string :title, null: false, limit: 150
      t.date :start_date, null: false
      t.date :end_date
      t.integer :budget, null: false, default: 10000, limit: 8
      t.boolean :budget_propose, null: false, default: true, limit: 8
      t.integer :biddings_count, null: false, default: 0
      t.integer :ad_pictures_count, null: false, default: 0
      t.boolean :complete, null: false, default: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

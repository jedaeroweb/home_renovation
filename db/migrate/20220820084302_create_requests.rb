class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :request_category, null: false
      t.references :user, null: false
      t.string :title, null: false, limit: 60
      t.string :size, limit: 60
      t.string :address, limit: 200
      t.integer :request_pictures_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

class CreateDeletionRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :deletion_requests do |t|
      t.string :title, limit: 60, null: false
      t.string :email, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

class CreateUserBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_blocks do |t|
      t.references :user, null: false
      t.references :block_user, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    add_foreign_key :user_blocks, :users, column: :block_user_id, primary_key: :id
  end
end

class CreateUserPointLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_point_logs do |t|
      t.references :user, null: false
      t.references :charge_point, null: false
      t.integer :point, null: false, default: 0
      t.boolean :enable, null: false, default: false
      t.timestamps null: false
    end
  end
end

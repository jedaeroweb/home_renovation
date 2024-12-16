class CreateChargePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :charge_points do |t|
      t.string :title, null: false, limit: 60
      t.integer :point, null: false
      t.integer :price, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

class CreateSimulations < ActiveRecord::Migration[6.0]
  def change
    create_table :simulations do |t|
      t.references :simulation_category, null: false
      t.references :size
      t.string :title, limit: 60, null: false
      t.integer :simulation_pictures_count, null: false, default: 0
      t.integer :simulation_materials_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

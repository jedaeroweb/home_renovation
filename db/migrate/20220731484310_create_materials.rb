class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :title, null: false
      t.integer :price, null: false, default: 100
      t.string :picture, null: false
      t.integer :simulation_materials_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

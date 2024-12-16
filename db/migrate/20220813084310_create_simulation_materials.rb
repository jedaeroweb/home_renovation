class CreateSimulationMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :simulation_materials do |t|
      t.references :simulation, null: false
      t.references :material, null: false
      t.integer :price, null: false, default: 0
      t.integer :simulation_material_pictures_count, null:false, default:0
      t.integer :simulation_material_contents_count, null:false, default:0
      t.integer :user_simulation_materials_count, null:false, default:0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

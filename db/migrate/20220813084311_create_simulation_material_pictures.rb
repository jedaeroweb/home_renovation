class CreateSimulationMaterialPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :simulation_material_pictures do |t|
      t.references :simulation_material, null: false
      t.string :picture, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

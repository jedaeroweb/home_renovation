class CreateSimulationMaterialContents < ActiveRecord::Migration[6.0]
  def change
    create_table :simulation_material_contents do |t|
      t.references :simulation_material, null: false
      t.text :content, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

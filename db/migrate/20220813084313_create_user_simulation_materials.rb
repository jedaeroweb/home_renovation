class CreateUserSimulationMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :user_simulation_materials do |t|
      t.references :user, null: false
      t.references :simulation_material, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

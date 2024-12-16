class CreateAdMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_materials do |t|
      t.references :ad, null: false
      t.references :material, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

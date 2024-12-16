class CreateAdBlueprints < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_blueprints do |t|
      t.references :ad, null: false
      t.string :picture, null: false
      t.string :caption, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

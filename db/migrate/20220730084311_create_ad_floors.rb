class CreateAdFloors < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_floors do |t|
      t.references :ad, null: false
      t.references :floor, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

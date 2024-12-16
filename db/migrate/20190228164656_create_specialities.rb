class CreateSpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :specialities do |t|
      t.references :speciality_category, null: false
      t.string :title, null: false, limit: 150
      t.boolean :need_blueprint, null: false, default: false
      t.boolean :need_floor, null: false, default: false
      t.boolean :need_size, null: false, default: false
      t.boolean :need_material, null: false, default: false
      t.integer :company_specialities_count, null: false, default: 0
      t.integer :ads_count, null: false, default: 0
      t.integer :speciality_pictures_count, null: false, default: 0
      t.integer :speciality_men_count, null: false, default: 0
      t.boolean :slide_show, :null=>false, default: true
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

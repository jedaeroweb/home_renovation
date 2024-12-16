class CreateSpecialityMen < ActiveRecord::Migration[6.0]
  def change
    create_table :speciality_men do |t|
      t.references :speciality, null: false
      t.string :title, null: false
      t.integer :pay, null: false
      t.integer :need_count, null: false, default: 1
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

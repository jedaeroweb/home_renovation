class CreateFonts < ActiveRecord::Migration[6.0]
  def change
    create_table :fonts do |t|
      t.string :title, null: false, limit: 60
      t.string :font, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

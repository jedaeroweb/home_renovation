class CreateSlides < ActiveRecord::Migration[6.0]
  def change
    create_table :slides do |t|
      t.references :notice
      t.string :title, limit: 60, null: false
      t.string :link, limit: 200
      t.string :picture, null: false
      t.boolean :new_tab, null: false, default: true
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

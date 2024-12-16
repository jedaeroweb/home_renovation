class CreateSlideDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :slide_descriptions do |t|
      t.references :slide, null: false
      t.references :font, null: false
      t.string :description, limit: 100,null: false
      t.integer :size, null: false, default: 14
      t.string :color, null: false, default: '#333'
      t.string :position_v, null: false, default: 'top'
      t.string :position_h, null: false, default: 'left'
      t.integer :position_v_px, null: false, default: 0
      t.integer :position_h_px, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

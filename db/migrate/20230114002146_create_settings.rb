class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :scroll_title, limit: 160, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

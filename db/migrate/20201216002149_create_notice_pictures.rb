class CreateNoticePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :notice_pictures do |t|
      t.references :notice, null: false
      t.string :picture, null: false
      t.string :caption, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

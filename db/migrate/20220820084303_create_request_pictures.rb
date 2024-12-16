class CreateRequestPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :request_pictures do |t|
      t.references :request, :null => false
      t.string :picture, :null => false
      t.string :caption, limit: 60
      t.boolean :enable, :null => false, :default => true
      t.timestamps null: false
    end
  end
end

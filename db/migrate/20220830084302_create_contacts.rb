class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :contact_category, null: false, default: 1
      t.references :user
      t.string :title, null: false, limit: 60
      t.string :phone, limit: 200
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    create_table :contact_contents do |t|
      t.text :content, null: false
    end
  end
end

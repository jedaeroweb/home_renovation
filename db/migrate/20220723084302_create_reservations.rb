class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :user
      t.string :name
      t.string :title, null: false
      t.boolean :end, null: false, default: false
      t.datetime :visit_time, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end


  create_table :reservation_contents do |t|
    t.references :reservation, null: false
    t.text :content, null: false
  end
  end
end

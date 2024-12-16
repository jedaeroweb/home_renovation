class CreateServiceTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :service_times do |t|
      t.string :title, null: false, limit: 60
      t.integer :time, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

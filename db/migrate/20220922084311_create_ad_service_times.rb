class CreateAdServiceTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_service_times do |t|
      t.references :ad, null: false
      t.references :service_time, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

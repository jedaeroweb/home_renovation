class CreateAdSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_sizes do |t|
      t.references :ad, null: false
      t.references :size, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

class CreateCommunityAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :community_alerts do |t|
      t.references :community, null: false
      t.references :alert, null: false
      t.references :user, null: false
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

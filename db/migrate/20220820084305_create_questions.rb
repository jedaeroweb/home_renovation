class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :user, null: false
      t.string :title, null: false, limit: 60
      t.boolean :secret, null: false, default: false
      t.integer :answers_count, null: false, default: 0
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

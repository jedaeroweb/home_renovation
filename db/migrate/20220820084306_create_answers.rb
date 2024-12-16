class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :user, null: false
      t.references :question, null: false
      t.string :title, null: false, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

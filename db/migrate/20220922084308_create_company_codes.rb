class CreateCompanyCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :company_codes do |t|
      t.references :company, null: false
      t.string :picture, null: false
      t.string :caption, limit: 60
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end
  end
end

class CreateCompanySpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :company_specialities do |t|
      t.references :company, null: false
      t.references :speciality, null: false
      t.boolean :enable, null: false, default: true
    end
  end
end

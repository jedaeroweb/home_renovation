class CreatePortfolios< ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.references :company, null: false
      t.string :title, limit: 60,  null: false
      t.integer :portfolio_pictures_count, null: false, default: 0
      t.boolean :enable, :null=>false, :default=>true
      t.timestamps null: false
    end
  end
end

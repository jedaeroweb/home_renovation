class CreateDeviseToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, limit: 100
      t.string :name
      t.string :encrypted_password, null: false, limit: 60

      ## Recoverable
      # t.string   :reset_password_token, :limit=>150
      # t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Token authenticatable
      ## t.string :authentication_token

      t.integer :user_pictures_count, null: false, default: 0
      t.integer :companies_count, null: false, default: 0
      t.integer :ads_count, null: false, default: 0
      t.integer :blogs_count, null: false, default: 0
      t.integer :contacts_count, null: false, default: 0
      t.integer :orders_count, null: false, default: 0
      t.integer :reviews_count, null: false, default: 0
      t.integer :questions_count, null: false, default: 0
      t.integer :answers_count, null: false, default: 0
      t.integer :requests_count, null: false, default: 0
      t.integer :user_addresses_count, null: false, default: 0
      t.integer :user_simulation_materials_count, null: false, default: 0
      t.integer :point, null: false, default: 3000

      t.string :phone
      t.date :birthday

      # Uncomment below if timestamps were not included in your original model.
      t.boolean :enable, null: false, default: true
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    # add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token, unique: true
    # add_index :users, :unlock_token, unique: true
    # add_index :users, :authentication_token, unique: true
  end
end

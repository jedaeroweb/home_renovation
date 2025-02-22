class CreateUserAuthentications < ActiveRecord::Migration[4.2]
    def change
        create_table "user_authentications", :force => true do |t|
            t.integer  "user_id"
            t.integer  "authentication_provider_id"
            t.string   "uid"
            t.text   "token"
            t.datetime "token_expires_at"
            t.text     "params"
            t.timestamps null: false
        end
        add_index "user_authentications", ["authentication_provider_id"], :name => "index_user_authentications_on_authentication_provider_id"
        add_index "user_authentications", ["user_id"], :name => "index_user_authentications_on_user_id"
    end
  end

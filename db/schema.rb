# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_01_14_002146) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "ad_blueprints", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_blueprints_on_ad_id"
  end

  create_table "ad_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "ads_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ad_contents", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.text "content", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_contents_on_ad_id"
  end

  create_table "ad_floors", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "floor_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_floors_on_ad_id"
    t.index ["floor_id"], name: "index_ad_floors_on_floor_id"
  end

  create_table "ad_materials", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "material_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_materials_on_ad_id"
    t.index ["material_id"], name: "index_ad_materials_on_material_id"
  end

  create_table "ad_pictures", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_pictures_on_ad_id"
  end

  create_table "ad_service_times", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "service_time_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_service_times_on_ad_id"
    t.index ["service_time_id"], name: "index_ad_service_times_on_service_time_id"
  end

  create_table "ad_sizes", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "size_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_sizes_on_ad_id"
    t.index ["size_id"], name: "index_ad_sizes_on_size_id"
  end

  create_table "address_levels", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "addresses_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "parent_address_id", default: 0, null: false
    t.integer "address_level_id", default: 1, null: false
    t.string "title", limit: 60, null: false
    t.integer "ads_count", default: 0, null: false
    t.integer "company_addresses_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_level_id"], name: "index_addresses_on_address_level_id"
    t.index ["parent_address_id"], name: "index_addresses_on_parent_address_id"
    t.index ["title"], name: "index_addresses_on_title"
  end

  create_table "admin_login_logs", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.integer "client_ip", limit: 8, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_login_logs_on_admin_id"
  end

  create_table "admin_pictures", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_pictures_on_admin_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", limit: 100, null: false
    t.string "name", limit: 100, null: false
    t.string "encrypted_password", limit: 60, null: false
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "ads", force: :cascade do |t|
    t.integer "ad_category_id", null: false
    t.integer "user_id", null: false
    t.integer "speciality_id", null: false
    t.integer "address_id", null: false
    t.string "title", limit: 150, null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.integer "budget", limit: 8, default: 10000, null: false
    t.boolean "budget_propose", limit: 8, default: true, null: false
    t.integer "biddings_count", default: 0, null: false
    t.integer "ad_pictures_count", default: 0, null: false
    t.boolean "complete", default: false, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_category_id"], name: "index_ads_on_ad_category_id"
    t.index ["address_id"], name: "index_ads_on_address_id"
    t.index ["speciality_id"], name: "index_ads_on_speciality_id"
    t.index ["user_id"], name: "index_ads_on_user_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "community_alerts_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "question_id", null: false
    t.string "title", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "authentication_providers", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_name_on_authentication_providers"
  end

  create_table "bidding_contents", force: :cascade do |t|
    t.integer "bidding_id", null: false
    t.text "content", null: false
    t.index ["bidding_id"], name: "index_bidding_contents_on_bidding_id"
  end

  create_table "biddings", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "company_id", null: false
    t.integer "budget"
    t.integer "reviews_count", default: 0, null: false
    t.boolean "accept", default: false, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id", "company_id"], name: "index_biddings_on_ad_id_and_company_id", unique: true
    t.index ["ad_id"], name: "index_biddings_on_ad_id"
    t.index ["company_id"], name: "index_biddings_on_company_id"
  end

  create_table "blog_categories", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "blogs_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_comments", force: :cascade do |t|
    t.integer "blog_id", null: false
    t.integer "user_id"
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
    t.index ["user_id"], name: "index_blog_comments_on_user_id"
  end

  create_table "blog_pictures", force: :cascade do |t|
    t.integer "blog_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_pictures_on_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.integer "blog_category_id", null: false
    t.integer "user_id", null: false
    t.string "title", limit: 60, null: false
    t.integer "blog_comments_count", default: 0, null: false
    t.integer "blog_pictures_count", default: 0, null: false
    t.integer "speciality_category_blogs_count", default: 0, null: false
    t.integer "count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_category_id"], name: "index_blogs_on_blog_category_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "charge_points", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "point", null: false
    t.integer "price", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "community_alerts", force: :cascade do |t|
    t.integer "community_id", null: false
    t.integer "alert_id", null: false
    t.integer "user_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_community_alerts_on_alert_id"
    t.index ["community_id"], name: "index_community_alerts_on_community_id"
    t.index ["user_id"], name: "index_community_alerts_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.string "phone", null: false
    t.string "code", limit: 20
    t.string "lat", limit: 60
    t.string "lng", limit: 60
    t.time "start_time", default: "2000-01-01 09:00:00", null: false
    t.time "end_time", default: "2000-01-01 06:00:00", null: false
    t.boolean "basic", default: false, null: false
    t.integer "company_specialities_count", default: 0, null: false
    t.integer "company_addresses_count", default: 0, null: false
    t.integer "company_pictures_count", default: 0, null: false
    t.integer "company_codes_count", default: 0, null: false
    t.integer "products_count", default: 0, null: false
    t.integer "reviews_count", default: 0, null: false
    t.integer "biddings_count", default: 0, null: false
    t.integer "portfolios_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_addresses", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "address_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_company_addresses_on_address_id"
    t.index ["company_id"], name: "index_company_addresses_on_company_id"
  end

  create_table "company_codes", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_codes_on_company_id"
  end

  create_table "company_pictures", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_pictures_on_company_id"
  end

  create_table "company_specialities", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "speciality_id", null: false
    t.boolean "enable", default: true, null: false
    t.index ["company_id"], name: "index_company_specialities_on_company_id"
    t.index ["speciality_id"], name: "index_company_specialities_on_speciality_id"
  end

  create_table "contact_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "contacts_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "contact_category_id", default: 1, null: false
    t.integer "user_id"
    t.string "title", limit: 60, null: false
    t.string "phone", limit: 200
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_category_id"], name: "index_contacts_on_contact_category_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "deletion_requests", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "email", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faq_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "faqs_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faq_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.integer "faq_category_id", null: false
    t.string "title", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faq_category_id"], name: "index_faqs_on_faq_category_id"
  end

  create_table "floors", force: :cascade do |t|
    t.string "title", null: false
    t.integer "floor", default: 100, null: false
    t.integer "simulations_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fonts", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "font", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type", limit: 100
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name", limit: 100
    t.string "action_name", limit: 100
    t.string "view_name", limit: 100
    t.string "request_hash", limit: 100
    t.string "ip_address", limit: 100
    t.string "session_hash", limit: 100
    t.text "message"
    t.text "referrer"
    t.string "params", limit: 150
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title", null: false
    t.integer "price", default: 100, null: false
    t.string "picture", null: false
    t.integer "simulation_materials_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notice_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "notice_pictures", force: :cascade do |t|
    t.integer "notice_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_notice_pictures_on_notice_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "notice_pictures_count", default: 0, null: false
    t.boolean "popup", default: false, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_payments", force: :cascade do |t|
    t.integer "order_id"
    t.integer "payment_id"
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_payments_on_order_id"
    t.index ["payment_id"], name: "index_order_payments_on_payment_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity", default: 1, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.date "transaction_date", null: false
    t.integer "total_price", default: 0, null: false
    t.integer "order_payments_count", default: 0, null: false
    t.boolean "enable", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "payment_id", limit: 60, null: false
    t.string "payment_merchant_id", limit: 60, null: false
    t.string "payment_method", limit: 60, null: false
    t.integer "amount", default: 0, null: false
    t.string "status", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_pictures", force: :cascade do |t|
    t.integer "portfolio_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["portfolio_id"], name: "index_portfolio_pictures_on_portfolio_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "title", limit: 60, null: false
    t.integer "portfolio_pictures_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_portfolios_on_company_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "products_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_pictures", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_pictures_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "product_category_id", null: false
    t.string "title", limit: 60, null: false
    t.string "description", limit: 200
    t.integer "order_no", default: 0, null: false
    t.integer "price", default: 0, null: false
    t.integer "discount", default: 0, null: false
    t.integer "product_contents_count", default: 0, null: false
    t.integer "product_pictures_count", default: 0, null: false
    t.integer "speciality_category_products_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_products_on_company_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", limit: 60, null: false
    t.boolean "secret", default: false, null: false
    t.integer "answers_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "request_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "requests_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_pictures", force: :cascade do |t|
    t.integer "request_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_request_pictures_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "request_category_id", null: false
    t.integer "user_id", null: false
    t.string "title", limit: 60, null: false
    t.string "size", limit: 60
    t.string "address", limit: 200
    t.integer "request_pictures_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_category_id"], name: "index_requests_on_request_category_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "reservation_contents", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.text "content", null: false
    t.index ["reservation_id"], name: "index_reservation_contents_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "title", null: false
    t.boolean "end", default: false, null: false
    t.datetime "visit_time", precision: nil, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "review_contents", force: :cascade do |t|
    t.text "content", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "bidding_id", null: false
    t.string "title", limit: 60, null: false
    t.integer "rating", default: 2, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bidding_id"], name: "index_reviews_on_bidding_id"
  end

  create_table "role_admins", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "admin_id", null: false
    t.index ["admin_id"], name: "index_role_admins_on_admin_id"
    t.index ["role_id"], name: "index_role_admins_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.string "role", limit: 60, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_times", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "time", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "scroll_title", limit: 160, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.integer "quantity"
    t.integer "item_id"
    t.string "item_type"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simulation_categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "simulations_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simulation_contents", force: :cascade do |t|
    t.integer "simulation_id", null: false
    t.text "content", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_simulation_contents_on_simulation_id"
  end

  create_table "simulation_material_contents", force: :cascade do |t|
    t.integer "simulation_material_id", null: false
    t.text "content", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_material_id"], name: "index_simulation_material_contents_on_simulation_material_id"
  end

  create_table "simulation_material_pictures", force: :cascade do |t|
    t.integer "simulation_material_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_material_id"], name: "index_simulation_material_pictures_on_simulation_material_id"
  end

  create_table "simulation_materials", force: :cascade do |t|
    t.integer "simulation_id", null: false
    t.integer "material_id", null: false
    t.integer "price", default: 0, null: false
    t.integer "simulation_material_pictures_count", default: 0, null: false
    t.integer "simulation_material_contents_count", default: 0, null: false
    t.integer "user_simulation_materials_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_simulation_materials_on_material_id"
    t.index ["simulation_id"], name: "index_simulation_materials_on_simulation_id"
  end

  create_table "simulation_pictures", force: :cascade do |t|
    t.integer "simulation_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_simulation_pictures_on_simulation_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.integer "simulation_category_id", null: false
    t.integer "size_id"
    t.string "title", limit: 60, null: false
    t.integer "simulation_pictures_count", default: 0, null: false
    t.integer "simulation_materials_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_category_id"], name: "index_simulations_on_simulation_category_id"
    t.index ["size_id"], name: "index_simulations_on_size_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "title", null: false
    t.integer "size", default: 100, null: false
    t.integer "simulations_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slide_descriptions", force: :cascade do |t|
    t.integer "slide_id", null: false
    t.integer "font_id", null: false
    t.string "description", limit: 100, null: false
    t.integer "size", default: 14, null: false
    t.string "color", default: "#333", null: false
    t.string "position_v", default: "top", null: false
    t.string "position_h", default: "left", null: false
    t.integer "position_v_px", default: 0, null: false
    t.integer "position_h_px", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["font_id"], name: "index_slide_descriptions_on_font_id"
    t.index ["slide_id"], name: "index_slide_descriptions_on_slide_id"
  end

  create_table "slides", force: :cascade do |t|
    t.integer "notice_id"
    t.string "title", limit: 60, null: false
    t.string "link", limit: 200
    t.string "picture", null: false
    t.boolean "new_tab", default: true, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_slides_on_notice_id"
  end

  create_table "social_accounts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "authentication_provider_id"
    t.string "token"
    t.string "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authentication_provider_id"], name: "index_social_accounts_on_authentication_provider_id"
    t.index ["user_id"], name: "index_social_accounts_on_user_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.integer "speciality_category_id", null: false
    t.string "title", limit: 150, null: false
    t.boolean "need_blueprint", default: false, null: false
    t.boolean "need_floor", default: false, null: false
    t.boolean "need_size", default: false, null: false
    t.boolean "need_material", default: false, null: false
    t.integer "company_specialities_count", default: 0, null: false
    t.integer "ads_count", default: 0, null: false
    t.integer "speciality_pictures_count", default: 0, null: false
    t.integer "speciality_men_count", default: 0, null: false
    t.boolean "slide_show", default: true, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_category_id"], name: "index_specialities_on_speciality_category_id"
  end

  create_table "speciality_categories", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "specialities_count", default: 0, null: false
    t.integer "speciality_category_products_count", default: 0, null: false
    t.integer "speciality_category_blogs_count", default: 0, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speciality_category_blogs", force: :cascade do |t|
    t.integer "speciality_category_id", null: false
    t.integer "blog_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_speciality_category_blogs_on_blog_id"
    t.index ["speciality_category_id"], name: "index_speciality_category_blogs_on_speciality_category_id"
  end

  create_table "speciality_category_products", force: :cascade do |t|
    t.integer "speciality_category_id", null: false
    t.integer "product_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_speciality_category_products_on_product_id"
    t.index ["speciality_category_id"], name: "index_speciality_category_products_on_speciality_category_id"
  end

  create_table "speciality_men", force: :cascade do |t|
    t.integer "speciality_id", null: false
    t.string "title", null: false
    t.integer "pay", null: false
    t.integer "need_count", default: 1, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_id"], name: "index_speciality_men_on_speciality_id"
  end

  create_table "speciality_pictures", force: :cascade do |t|
    t.integer "speciality_id", null: false
    t.string "picture", null: false
    t.string "caption", limit: 60
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_id"], name: "index_speciality_pictures_on_speciality_id"
  end

  create_table "user_addresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "address", null: false
    t.string "address_detail", null: false
    t.string "postcode", null: false
    t.boolean "basic", default: false, null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_authentications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "authentication_provider_id"
    t.string "uid"
    t.text "token"
    t.datetime "token_expires_at", precision: nil
    t.text "params"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["authentication_provider_id"], name: "index_user_authentications_on_authentication_provider_id"
    t.index ["user_id"], name: "index_user_authentications_on_user_id"
  end

  create_table "user_blocks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "block_user_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_user_id"], name: "index_user_blocks_on_block_user_id"
    t.index ["user_id"], name: "index_user_blocks_on_user_id"
  end

  create_table "user_contents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "content", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_contents_on_user_id"
  end

  create_table "user_pictures", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "picture", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_pictures_on_user_id"
  end

  create_table "user_point_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "charge_point_id", null: false
    t.integer "point", default: 0, null: false
    t.boolean "enable", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charge_point_id"], name: "index_user_point_logs_on_charge_point_id"
    t.index ["user_id"], name: "index_user_point_logs_on_user_id"
  end

  create_table "user_simulation_materials", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "simulation_material_id", null: false
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_material_id"], name: "index_user_simulation_materials_on_simulation_material_id"
    t.index ["user_id"], name: "index_user_simulation_materials_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100, null: false
    t.string "name"
    t.string "encrypted_password", limit: 60, null: false
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.integer "user_pictures_count", default: 0, null: false
    t.integer "companies_count", default: 0, null: false
    t.integer "ads_count", default: 0, null: false
    t.integer "blogs_count", default: 0, null: false
    t.integer "contacts_count", default: 0, null: false
    t.integer "orders_count", default: 0, null: false
    t.integer "reviews_count", default: 0, null: false
    t.integer "questions_count", default: 0, null: false
    t.integer "answers_count", default: 0, null: false
    t.integer "requests_count", default: 0, null: false
    t.integer "user_addresses_count", default: 0, null: false
    t.integer "user_simulation_materials_count", default: 0, null: false
    t.integer "point", default: 3000, null: false
    t.string "phone"
    t.date "birthday"
    t.boolean "enable", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "user_blocks", "users", column: "block_user_id"
end

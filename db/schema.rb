# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200220093133) do

  create_table "account_adresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "furimauser_id"
    t.string   "post_number",   null: false
    t.string   "prefecture",    null: false
    t.string   "city",          null: false
    t.string   "town",          null: false
    t.string   "building"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["furimauser_id"], name: "index_account_adresses_on_furimauser_id", using: :btree
  end

  create_table "account_profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "furimauser_id"
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "first_name_kana", null: false
    t.string   "last_name_kana",  null: false
    t.string   "phone_number",    null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["furimauser_id"], name: "index_account_profiles_on_furimauser_id", using: :btree
  end

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "furimauser_id", null: false
    t.string   "customer_id",   null: false
    t.string   "card_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["furimauser_id"], name: "index_cards_on_furimauser_id", using: :btree
  end

  create_table "fadresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "furimauser_id"
    t.string   "post_number",   null: false
    t.string   "prefecture",    null: false
    t.string   "city",          null: false
    t.string   "town",          null: false
    t.string   "building"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["furimauser_id"], name: "index_fadresses_on_furimauser_id", using: :btree
  end

  create_table "fcategories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "fprofiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "furimauser_id"
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "first_name_kana", null: false
    t.string   "last_name_kana",  null: false
    t.string   "phone_number",    null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["furimauser_id"], name: "index_fprofiles_on_furimauser_id", using: :btree
  end

  create_table "furimausers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nuckName"
    t.index ["email"], name: "index_furimausers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_furimausers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "item_id"
    t.string   "image1",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                             null: false
    t.integer  "price",                            null: false
    t.integer  "category_id",                      null: false
    t.integer  "brand_id"
    t.text     "explain",            limit: 65535, null: false
    t.integer  "postage_id",                       null: false
    t.integer  "region_id",                        null: false
    t.integer  "shipping_date_id",                 null: false
    t.string   "size",                             null: false
    t.integer  "way_of_delivery_id",               null: false
    t.integer  "quality_id",                       null: false
    t.string   "SaleStatu",                        null: false
    t.integer  "furimauser_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["furimauser_id"], name: "index_items_on_furimauser_id", using: :btree
  end

  create_table "tops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "account_adresses", "furimausers"
  add_foreign_key "account_profiles", "furimausers"
  add_foreign_key "cards", "furimausers"
  add_foreign_key "fadresses", "furimausers"
  add_foreign_key "fprofiles", "furimausers"
  add_foreign_key "images", "items"
  add_foreign_key "items", "furimausers"
end

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

ActiveRecord::Schema.define(version: 20200206093133) do

  create_table "exhibitions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                          null: false
    t.integer  "price",                         null: false
    t.text     "explain",         limit: 65535, null: false
    t.integer  "postage",                       null: false
    t.string   "region",                        null: false
    t.string   "shipping_date",                 null: false
    t.string   "size",                          null: false
    t.string   "way_of_delivery",               null: false
    t.string   "quality",                       null: false
    t.string   "SaleStatu",                     null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "item_id"
    t.text     "image1",     limit: 65535, null: false
    t.text     "image2",     limit: 65535, null: false
    t.text     "image3",     limit: 65535, null: false
    t.text     "image4",     limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["item_id"], name: "index_images_on_item_id", using: :btree
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "image1",     limit: 65535, null: false
    t.text     "image2",     limit: 65535, null: false
    t.text     "image3",     limit: 65535, null: false
    t.text     "image4",     limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                          null: false
    t.integer  "price",                         null: false
    t.integer  "category_id",                   null: false
    t.text     "explain",         limit: 65535, null: false
    t.integer  "postage",                       null: false
    t.string   "region",                        null: false
    t.string   "shipping_date",                 null: false
    t.string   "size",                          null: false
    t.string   "way_of_delivery",               null: false
    t.string   "quality",                       null: false
    t.string   "SaleStatu",                     null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "marketitems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "image1", limit: 65535, null: false
    t.text "image2", limit: 65535, null: false
    t.text "image3", limit: 65535, null: false
    t.text "image4", limit: 65535, null: false
  end

  create_table "purchase_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                          null: false
    t.integer  "category_id",                   null: false
    t.integer  "price",                         null: false
    t.text     "explain",         limit: 65535, null: false
    t.integer  "postage",                       null: false
    t.string   "region",                        null: false
    t.string   "shipping_date",                 null: false
    t.string   "size",                          null: false
    t.string   "way_of_delivery",               null: false
    t.string   "quality",                       null: false
    t.string   "SaleStatu",                     null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "set_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "purchase_item_id"
    t.text     "image1",           limit: 65535, null: false
    t.text     "image2",           limit: 65535, null: false
    t.text     "image3",           limit: 65535, null: false
    t.text     "image4",           limit: 65535, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["purchase_item_id"], name: "index_set_images_on_purchase_item_id", using: :btree
  end

  create_table "tops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "images", "items"
  add_foreign_key "set_images", "purchase_items"
end
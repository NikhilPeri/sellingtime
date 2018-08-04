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

ActiveRecord::Schema.define(version: 20180803233139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  create_table "bookable_products", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "product_id", null: false
    t.text "form_fields"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id", "product_id"], name: "index_bookable_products_on_shop_id_and_product_id", unique: true
    t.index ["shop_id"], name: "index_bookable_products_on_shop_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.string "checkout_token"
    t.bigint "order_id"
    t.bigint "bookable_product_id", null: false
    t.string "state"
    t.datetime "date"
    t.string "form_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "line_item"
    t.string "email"
    t.string "phone"
    t.string "first_name"
    t.string "last_name"
    t.index ["bookable_product_id"], name: "index_bookings_on_bookable_product_id"
    t.index ["checkout_token", "line_item"], name: "index_bookings_on_checkout_token_and_line_item", unique: true
    t.index ["shop_id"], name: "index_bookings_on_shop_id"
  end
end

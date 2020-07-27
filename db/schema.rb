# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_27_053236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.string "rennet_coagulat"
    t.string "location"
    t.string "cheese_type"
    t.string "rind"
    t.string "milk"
    t.string "size"
    t.integer "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "store_id", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.index ["store_id"], name: "index_cheeses_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cheeses", "stores"
end

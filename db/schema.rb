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

ActiveRecord::Schema[7.1].define(version: 2024_06_21_085721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.decimal "bid_amount"
    t.datetime "bid_time", precision: nil
    t.bigint "client_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_bids_on_booking_id"
    t.index ["client_id"], name: "index_bids_on_client_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "booking_size"
    t.date "booking_date"
    t.time "booking_time"
    t.integer "booking_length"
    t.string "booking_type"
    t.decimal "booking_price"
    t.string "booking_status"
    t.string "special_requests"
    t.bigint "client_id"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "bid_amount"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["restaurant_id"], name: "index_bookings_on_restaurant_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "telephone_number"
    t.string "email"
    t.date "DOB"
    t.string "dietary_requirement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "table_preferences"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.integer "telephone", null: false
    t.string "email", null: false
    t.integer "capacity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "opening_time_mon"
    t.time "closing_time_mon"
    t.time "opening_time_tue"
    t.time "closing_time_tue"
    t.time "opening_time_wed"
    t.time "closing_time_wed"
    t.time "opening_time_thu"
    t.time "closing_time_thu"
    t.time "opening_time_fri"
    t.time "closing_time_fri"
    t.time "opening_time_sat"
    t.time "closing_time_sat"
    t.time "opening_time_sun"
    t.time "closing_time_sun"
    t.index ["email"], name: "index_restaurants_on_email", unique: true
    t.index ["telephone"], name: "index_restaurants_on_telephone", unique: true
  end

  add_foreign_key "bids", "bookings"
  add_foreign_key "bids", "clients"
  add_foreign_key "bookings", "clients"
  add_foreign_key "bookings", "restaurants"
end

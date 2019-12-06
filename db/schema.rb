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

ActiveRecord::Schema.define(version: 2019_12_05_144852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aireplane_seat_configs", force: :cascade do |t|
    t.integer "airplane_id"
    t.integer "seat_config_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airplane_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airplanes", force: :cascade do |t|
    t.string "name"
    t.integer "airplane_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "flight_id"
    t.date "flying_on"
    t.string "pnr"
    t.integer "no_of_seats"
    t.integer "seat_numbers"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "name"
    t.integer "origin_id"
    t.integer "destination_id"
    t.string "number"
    t.integer "airplane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.float "amount"
    t.float "tax_amount"
    t.float "total_amount"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seat_configs", force: :cascade do |t|
    t.integer "category_id"
    t.integer "now_of_rows"
    t.integer "no_of_seat_in_row"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_prices", force: :cascade do |t|
    t.integer "basic_price"
    t.integer "bussiness_price_in_percentage"
    t.integer "first_class_price_in_percentage"
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.string "name"
    t.float "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

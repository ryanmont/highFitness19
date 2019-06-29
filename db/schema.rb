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

ActiveRecord::Schema.define(version: 20190629184529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choreo_regs", force: :cascade do |t|
    t.string   "song"
    t.string   "names"
    t.string   "email"
    t.string   "phone"
    t.string   "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "picks", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "prize_id"
    t.index ["prize_id"], name: "index_picks_on_prize_id", using: :btree
  end

  create_table "prizes", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qas", force: :cascade do |t|
    t.string   "question"
    t.string   "name"
    t.string   "email"
    t.string   "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.string   "a6"
    t.integer  "a7"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "a8"
    t.string   "a9"
    t.integer  "a10"
    t.integer  "a11"
    t.string   "a12"
    t.integer  "a13"
    t.integer  "a14"
    t.string   "a15"
    t.integer  "a16"
    t.integer  "a17"
    t.string   "a18"
    t.integer  "a19"
    t.integer  "a20"
    t.string   "a21"
    t.integer  "a22"
    t.integer  "a23"
    t.string   "a24"
    t.integer  "a25"
    t.integer  "a26"
    t.string   "a27"
    t.integer  "a28"
    t.integer  "a29"
    t.string   "a30"
    t.integer  "a31"
    t.integer  "a32"
    t.string   "a33"
    t.integer  "a34"
    t.integer  "a35"
    t.string   "a36"
    t.integer  "a37"
    t.integer  "a38"
    t.string   "a39"
    t.integer  "a40"
    t.integer  "a41"
    t.string   "a42"
    t.integer  "a43"
    t.integer  "a44"
    t.string   "a45"
    t.integer  "a46"
    t.integer  "a47"
    t.string   "a48"
    t.string   "a49"
    t.string   "a50"
    t.string   "a51"
    t.string   "a52"
    t.string   "a53"
    t.integer  "a54"
    t.integer  "a55"
    t.string   "a56"
  end

  create_table "tables", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "mobile_phone"
    t.string   "email"
    t.string   "preferred_airline"
    t.string   "frequent_flyer_number"
    t.string   "preferred_flight_date"
    t.string   "preferred_departure_time_period"
    t.string   "preferred_departure_airport_code"
    t.string   "seat_preference"
    t.string   "food_allergies"
    t.integer  "number_of_beds_requested"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "passport_id"
    t.string   "company"
    t.text     "additional_comments"
    t.string   "companion"
    t.string   "medical"
    t.string   "asset_uid"
    t.string   "asset_name"
    t.string   "juneau_excursion"
  end

  create_table "votes", force: :cascade do |t|
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "picks", "prizes"
end

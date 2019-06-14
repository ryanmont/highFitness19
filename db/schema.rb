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

ActiveRecord::Schema.define(version: 20190614000914) do

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
    t.integer  "a8"
    t.integer  "a9"
    t.integer  "a10"
    t.integer  "a11"
    t.integer  "a12"
    t.integer  "a13"
    t.integer  "a14"
    t.integer  "a15"
    t.integer  "a16"
    t.integer  "a17"
    t.integer  "a18"
    t.integer  "a19"
    t.integer  "a20"
    t.integer  "a21"
    t.integer  "a22"
    t.string   "a23"
    t.string   "a24"
    t.string   "a25"
    t.string   "a26"
    t.string   "a27"
    t.string   "a28"
    t.string   "a29"
    t.string   "a30"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end

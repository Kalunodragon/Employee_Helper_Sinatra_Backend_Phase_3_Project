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

ActiveRecord::Schema.define(version: 13) do

  create_table "bids", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "sunday"
    t.integer "monday"
    t.integer "tuesday"
    t.integer "wednesday"
    t.integer "thursday"
    t.integer "friday"
    t.integer "saturday"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "employee_number"
    t.integer "bid_id"
    t.integer "station_id"
  end

  create_table "lego_sets", force: :cascade do |t|
    t.string "name"
    t.integer "set_number"
    t.integer "peices"
    t.integer "theme_id"
    t.integer "age"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "lego_set_id"
    t.integer "owner_id"
    t.string "body"
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "shifts", force: :cascade do |t|
    t.boolean "day_off"
    t.string "start_time"
    t.string "off_time"
    t.integer "bid_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "city_code"
  end

  create_table "themes", force: :cascade do |t|
    t.string "theme"
  end

end

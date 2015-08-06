# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150806175126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "mm_name"
    t.string   "en_name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "river_height_records", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "river_id"
    t.datetime "record_time"
    t.text     "description"
    t.integer  "feet_above"
    t.string   "prediction"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rivers", force: :cascade do |t|
    t.string   "mm_name"
    t.string   "en_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

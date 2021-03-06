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

ActiveRecord::Schema.define(version: 20141220141213) do

  create_table "lawyer_services", force: true do |t|
    t.string   "service_name"
    t.string   "lawyer_code"
    t.string   "service_code"
    t.decimal  "price",        precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lawyers", force: true do |t|
    t.string   "lawyer_name"
    t.string   "city"
    t.string   "lawyer_code"
    t.integer  "years_of_experiance"
    t.decimal  "rating",              precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_captcha_data", force: true do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

end

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

ActiveRecord::Schema.define(version: 20170518125748) do

  create_table "churches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "group"
    t.integer  "group_id"
    t.string   "postal_code"
    t.integer  "prefecture_id"
    t.string   "address"
    t.decimal  "latitude",                        precision: 11, scale: 8
    t.decimal  "longitude",                       precision: 11, scale: 8
    t.string   "tel"
    t.string   "fax"
    t.string   "email"
    t.string   "url"
    t.text     "worshiping_time",   limit: 65535
    t.integer  "language_id"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.datetime "soft_destroyed_at"
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "soft_destroyed_at"
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.decimal  "latitude",          precision: 11, scale: 8
    t.decimal  "longitude",         precision: 11, scale: 8
    t.integer  "zoom_level"
    t.datetime "soft_destroyed_at"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end

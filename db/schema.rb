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

ActiveRecord::Schema.define(version: 20150206225700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.string   "country_name"
    t.string   "photo_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text    "body"
    t.integer "suggestion_id"
  end

  add_index "comments", ["suggestion_id"], name: "index_comments_on_suggestion_id", using: :btree

  create_table "suggestions", force: :cascade do |t|
    t.string  "name",     default: "Anonymous"
    t.text    "ideas"
    t.string  "category"
    t.integer "city_id"
  end

  add_index "suggestions", ["city_id"], name: "index_suggestions_on_city_id", using: :btree

  add_foreign_key "comments", "suggestions"
  add_foreign_key "suggestions", "cities"
end

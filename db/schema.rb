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

ActiveRecord::Schema.define(version: 20151022211605) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "sid",        null: false
    t.float    "attend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cls", force: :cascade do |t|
    t.integer  "cid",        null: false
    t.integer  "std",        null: false
    t.string   "sec",        null: false
    t.integer  "tid",        null: false
    t.string   "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extracurriculars", force: :cascade do |t|
    t.integer  "sid",        null: false
    t.string   "activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.integer  "sid",        null: false
    t.integer  "sub_id",     null: false
    t.integer  "quarter"
    t.integer  "half"
    t.integer  "ann"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "sid",        null: false
    t.string   "sname",      null: false
    t.date     "dob",        null: false
    t.string   "gender",     null: false
    t.integer  "cid",        null: false
    t.string   "fname"
    t.string   "mname"
    t.integer  "ph"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "sub_id",     null: false
    t.string   "sub_name",   null: false
    t.integer  "cid",        null: false
    t.integer  "tid",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "tid",        null: false
    t.string   "tname"
    t.date     "doj"
    t.string   "gender"
    t.integer  "exp"
    t.integer  "ph"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

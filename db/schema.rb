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
    t.integer  "sid",        limit: 4,  null: false
    t.float    "attend",     limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "cls", force: :cascade do |t|
    t.integer  "cid",        limit: 4,   null: false
    t.integer  "std",        limit: 4,   null: false
    t.string   "sec",        limit: 255, null: false
    t.integer  "tid",        limit: 4,   null: false
    t.string   "room",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "extracurriculars", force: :cascade do |t|
    t.integer  "sid",        limit: 4,   null: false
    t.string   "activity",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marks", force: :cascade do |t|
    t.integer  "sid",        limit: 4, null: false
    t.integer  "sub_id",     limit: 4, null: false
    t.integer  "quarter",    limit: 4
    t.integer  "half",       limit: 4
    t.integer  "ann",        limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "sid",        limit: 4,     null: false
    t.string   "sname",      limit: 255,   null: false
    t.date     "dob",                      null: false
    t.string   "gender",     limit: 255,   null: false
    t.integer  "cid",        limit: 4,     null: false
    t.string   "fname",      limit: 255
    t.string   "mname",      limit: 255
    t.integer  "ph",         limit: 4
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "sub_id",     limit: 4,   null: false
    t.string   "sub_name",   limit: 255, null: false
    t.integer  "cid",        limit: 4,   null: false
    t.integer  "tid",        limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "tid",        limit: 4,     null: false
    t.string   "tname",      limit: 255
    t.date     "doj"
    t.string   "gender",     limit: 255
    t.integer  "exp",        limit: 4
    t.integer  "ph",         limit: 4
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end

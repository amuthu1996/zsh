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

ActiveRecord::Schema.define(version: 20151026192226) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "attendances", primary_key: "student_id", force: :cascade do |t|
    t.float    "attend",     limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id", using: :btree

  create_table "attendances_students", id: false, force: :cascade do |t|
    t.integer "student_id",    limit: 4, null: false
    t.integer "attendance_id", limit: 4, null: false
  end

  add_index "attendances_students", ["student_id", "attendance_id"], name: "index_attendances_students_on_student_id_and_attendance_id", using: :btree

  create_table "cls", force: :cascade do |t|
    t.integer  "std",        limit: 4,   null: false
    t.string   "sec",        limit: 255, null: false
    t.integer  "teacher_id", limit: 4
    t.string   "room",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cls", ["teacher_id"], name: "clsfr", using: :btree

  create_table "extracurriculars", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.string   "activity",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "extracurriculars", ["student_id"], name: "exfr", using: :btree

  create_table "marks", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.integer  "subject_id", limit: 4
    t.integer  "quarter",    limit: 4
    t.integer  "half",       limit: 4
    t.integer  "ann",        limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "marks", ["student_id"], name: "mkfr", using: :btree
  add_index "marks", ["subject_id"], name: "mkfr2", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "sname",      limit: 255,   null: false
    t.date     "dob",                      null: false
    t.string   "gender",     limit: 255,   null: false
    t.integer  "cl_id",      limit: 4,     null: false
    t.string   "fname",      limit: 255
    t.string   "mname",      limit: 255
    t.integer  "ph",         limit: 4
    t.text     "address",    limit: 65535
    t.integer  "cls_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "students", ["cl_id"], name: "stdfr", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "sub_name",   limit: 255, null: false
    t.integer  "cl_id",      limit: 4
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "subjects", ["cl_id"], name: "subfr2", using: :btree
  add_index "subjects", ["teacher_id"], name: "subfr", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "tname",      limit: 255
    t.date     "doj"
    t.string   "gender",     limit: 255
    t.integer  "exp",        limit: 4
    t.integer  "ph",         limit: 4
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "attendances", "students", name: "attfr"
  add_foreign_key "cls", "teachers", name: "clsfr"
  add_foreign_key "extracurriculars", "students", name: "exfr"
  add_foreign_key "marks", "students", name: "mkfr"
  add_foreign_key "marks", "subjects", name: "mkfr2"
  add_foreign_key "students", "cls", name: "stdfr"
  add_foreign_key "subjects", "cls", name: "subfr2"
  add_foreign_key "subjects", "teachers", name: "subfr"
end

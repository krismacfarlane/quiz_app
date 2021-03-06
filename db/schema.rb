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

ActiveRecord::Schema.define(version: 20150218151710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string  "content"
    t.boolean "is_picked",   default: false
    t.integer "question_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "instructor_id", null: false
    t.string   "room",          null: false
    t.string   "producer",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "content"
    t.boolean "got_right", default: false
    t.integer "points",    default: 0
    t.integer "quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "name",                       null: false
    t.integer  "grade",      default: 0
    t.boolean  "has_grade",  default: false
    t.boolean  "been_taken", default: false
    t.integer  "student_id"
    t.integer  "cohort_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest"
    t.integer  "cohort_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

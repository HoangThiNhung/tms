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

ActiveRecord::Schema.define(version: 20160313101602) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "content"
    t.boolean  "is_correct"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_details", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_details", ["course_id"], name: "index_course_details_on_course_id"
  add_index "course_details", ["user_id"], name: "index_course_details_on_user_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.float    "duration"
    t.integer  "number_question"
    t.float    "percent"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "exams", ["course_id"], name: "index_exams_on_course_id"
  add_index "exams", ["user_id"], name: "index_exams_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "question_type"
    t.string   "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["course_id"], name: "index_questions_on_course_id"

  create_table "results", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exam_id"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.float    "spent_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "score_finals", force: :cascade do |t|
    t.integer  "course_detail_id"
    t.float    "score"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exam_id"
    t.float    "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "name"
    t.string   "uid"
    t.boolean  "instructor",             default: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

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

ActiveRecord::Schema[7.0].define(version: 2023_03_11_212638) do
  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scorecard_id"
  end

  create_table "scorecards", force: :cascade do |t|
    t.string "course_name"
    t.string "tee_color"
    t.integer "hole_number"
    t.integer "par"
    t.integer "handicap"
    t.integer "yardage"
    t.float "course_rating"
    t.integer "slope_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id", null: false
    t.integer "tee_color_id", null: false
    t.index ["course_id"], name: "index_scorecards_on_course_id"
    t.index ["tee_color_id"], name: "index_scorecards_on_tee_color_id"
  end

  create_table "tee_colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_tee_colors_on_course_id"
  end

  add_foreign_key "scorecards", "courses"
  add_foreign_key "scorecards", "tee_colors"
  add_foreign_key "tee_colors", "courses"
end

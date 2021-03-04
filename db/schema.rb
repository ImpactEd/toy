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

ActiveRecord::Schema.define(version: 2021_03_04_155901) do

  create_table "pupil_measurements", force: :cascade do |t|
    t.string "assessment", null: false
    t.string "original_mark", null: false
    t.integer "score"
    t.date "measurement_date", null: false
    t.integer "pupil_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pupil_id"], name: "index_pupil_measurements_on_pupil_id"
  end

  create_table "pupils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "external_ident", null: false
    t.integer "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_pupils_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "wonde_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pupil_measurements", "pupils"
  add_foreign_key "pupils", "schools"
end

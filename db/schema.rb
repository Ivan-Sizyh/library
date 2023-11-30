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

ActiveRecord::Schema[7.0].define(version: 2023_11_30_083632) do
  create_table "bibliotekas", force: :cascade do |t|
    t.string "title", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_bibliotekas_on_type_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "name", null: false
    t.string "surname", null: false
    t.date "birthday", null: false
    t.integer "start_of_work_year", null: false
    t.string "education", null: false
    t.integer "salary", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_employees_on_library_id"
  end

  create_table "founds", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "title", null: false
    t.integer "count_books", default: 0, null: false
    t.integer "count_journals", default: 0, null: false
    t.integer "count_newspapers", default: 0, null: false
    t.integer "count_sbornikov", default: 0, null: false
    t.integer "count_dissertations", default: 0, null: false
    t.integer "count_referats", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_founds_on_library_id"
  end

  create_table "replenishments", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "employee_id", null: false
    t.integer "found_id", null: false
    t.date "date", null: false
    t.string "literature_source", null: false
    t.string "publishing_house", null: false
    t.date "publication_date", null: false
    t.integer "count_copies", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_replenishments_on_employee_id"
    t.index ["found_id"], name: "index_replenishments_on_found_id"
    t.index ["library_id"], name: "index_replenishments_on_library_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "bibliotekas", column: "library_id"
  add_foreign_key "founds", "bibliotekas", column: "library_id"
  add_foreign_key "replenishments", "bibliotekas", column: "library_id"
  add_foreign_key "replenishments", "employees"
  add_foreign_key "replenishments", "founds"
end

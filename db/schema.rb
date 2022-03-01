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

ActiveRecord::Schema[7.0].define(version: 0) do
  create_table "win_histories", charset: "utf8mb4", comment: "当選履歴", force: :cascade do |t|
    t.integer "ordinal_number", null: false, comment: "回数"
    t.integer "loto_type_id", null: false, comment: "種類"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "win_history_numbers", charset: "utf8mb4", comment: "当選ナンバー", force: :cascade do |t|
    t.bigint "win_history_id", null: false
    t.integer "number", default: 0, null: false, comment: "当選ナンバー"
    t.index ["win_history_id"], name: "index_win_history_numbers_on_win_history_id"
  end

  add_foreign_key "win_history_numbers", "win_histories"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_13_170943) do

  create_table "cat_owners", force: :cascade do |t|
    t.integer "cat_id"
    t.integer "owner_id"
    t.index ["cat_id"], name: "index_cat_owners_on_cat_id"
    t.index ["owner_id"], name: "index_cat_owners_on_owner_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "cat_owners", "cats"
  add_foreign_key "cat_owners", "owners"
end

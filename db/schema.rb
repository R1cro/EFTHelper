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

ActiveRecord::Schema.define(version: 2019_09_20_165617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bullets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "caliber_id", null: false
    t.bigint "gun_id", null: false
    t.integer "penetration"
    t.integer "damage"
    t.integer "armor_damage"
    t.integer "frag_chance"
    t.integer "muzzle_velocity"
    t.boolean "tracer"
    t.boolean "subsonic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caliber_id"], name: "index_bullets_on_caliber_id"
    t.index ["gun_id"], name: "index_bullets_on_gun_id"
  end

  create_table "calibers", force: :cascade do |t|
    t.string "name"
    t.integer "gun_id"
    t.integer "bullet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string "name"
    t.bigint "caliber_id", null: false
    t.boolean "foldable"
    t.string "fire_mod"
    t.integer "fire_rate"
    t.integer "effective_range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caliber_id"], name: "index_guns_on_caliber_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.bigint "gun_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gun_id"], name: "index_weapons_on_gun_id"
  end

  add_foreign_key "bullets", "calibers"
  add_foreign_key "bullets", "guns"
  add_foreign_key "guns", "calibers"
  add_foreign_key "weapons", "guns"
end

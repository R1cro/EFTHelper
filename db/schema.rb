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

ActiveRecord::Schema.define(version: 2019_09_23_130021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bullets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "penetration"
    t.integer "damage"
    t.integer "armor_damage"
    t.integer "ricochet_chance"
    t.integer "frag_chance"
    t.integer "muzzle_velocity"
    t.boolean "tracer"
    t.boolean "subsonic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "caliber_id", null: false
    t.index ["caliber_id"], name: "index_bullets_on_caliber_id"
  end

  create_table "calibers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "bullet_id"
    t.bigint "weapon_id"
    t.index ["bullet_id"], name: "index_calibers_on_bullet_id"
    t.index ["weapon_id"], name: "index_calibers_on_weapon_id"
  end

  create_table "Firearms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.boolean "foldable"
    t.string "fire_mod"
    t.integer "fire_rate"
    t.integer "effective_range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "caliber_id", null: false
    t.bigint "firearm_id", null: false
    t.index ["caliber_id"], name: "index_weapons_on_caliber_id"
    t.index ["firearm_id"], name: "index_weapons_on_firearm_id"
  end

  add_foreign_key "bullets", "calibers"
  add_foreign_key "calibers", "bullets"
  add_foreign_key "calibers", "weapons"
  add_foreign_key "weapons", "calibers"
  add_foreign_key "weapons", "Firearms"
end

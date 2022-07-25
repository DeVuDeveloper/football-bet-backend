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

ActiveRecord::Schema[7.0].define(version: 2022_07_25_104223) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "balance"
    t.string "starting_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "nationality"
    t.string "full_name"
    t.string "team_name"
    t.string "date_of_birth"
    t.string "date_signed"
    t.string "birth_location"
    t.string "contracted_salary"
    t.string "wage"
    t.string "description"
    t.string "position"
    t.string "height"
    t.string "weight"
    t.string "profile_image"
    t.string "thumbnail"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "altName"
    t.string "founded"
    t.string "league"
    t.string "manager"
    t.string "stadium_location"
    t.string "home_stadium"
    t.string "stadium_thumbnail"
    t.text "stadium_description"
    t.string "stadium_capacity"
    t.string "website"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "team_logo"
    t.string "team_jersey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "phone"
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "players", "teams"
end

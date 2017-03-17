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

ActiveRecord::Schema.define(version: 20170302203906) do

  create_table "awards", force: :cascade do |t|
    t.integer  "show_id"
    t.integer  "category_id"
    t.integer  "winner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_awards_on_category_id"
    t.index ["show_id"], name: "index_awards_on_show_id"
  end

  create_table "ballots", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_ballots_on_game_id"
    t.index ["user_id"], name: "index_ballots_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_games_on_show_id"
  end

  create_table "nominations", force: :cascade do |t|
    t.integer  "award_id"
    t.string   "nominee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_nominations_on_award_id"
  end

  create_table "picks", force: :cascade do |t|
    t.integer  "ballot_id"
    t.integer  "award_id"
    t.integer  "first_pick_id"
    t.integer  "second_pick_id"
    t.integer  "third_pick_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["award_id"], name: "index_picks_on_award_id"
    t.index ["ballot_id"], name: "index_picks_on_ballot_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "fname"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

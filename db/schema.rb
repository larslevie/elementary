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

ActiveRecord::Schema.define(version: 20171118215516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string "keyable_type", null: false
    t.bigint "keyable_id", null: false
    t.string "token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["keyable_type", "keyable_id"], name: "index_api_keys_on_keyable_type_and_keyable_id"
    t.index ["token"], name: "index_api_keys_on_token", unique: true
  end

  create_table "ballots", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ballots_on_user_id"
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.integer "sort_order", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nominations", id: :serial, force: :cascade do |t|
    t.integer "nominee_id"
    t.integer "category_id"
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "winner", default: false
    t.index ["category_id"], name: "index_nominations_on_category_id"
    t.index ["nominee_id"], name: "index_nominations_on_nominee_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.integer "nomination_id", null: false
    t.integer "ballot_id", null: false
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ballot_id"], name: "index_votes_on_ballot_id"
    t.index ["nomination_id"], name: "index_votes_on_nomination_id"
  end

  add_foreign_key "ballots", "users"
  add_foreign_key "nominations", "categories"
  add_foreign_key "nominations", "films", column: "nominee_id"
  add_foreign_key "votes", "ballots"
  add_foreign_key "votes", "nominations"
end

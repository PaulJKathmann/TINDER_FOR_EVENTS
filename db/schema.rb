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

ActiveRecord::Schema.define(version: 2019_07_17_123723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "event_code"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "end_date"
    t.string "primary_color"
    t.string "secondary_color"
    t.string "logo"
    t.bigint "user_id"
    t.string "background_image"
    t.text "welcome_message"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "swipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["swipe_id"], name: "index_matches_on_swipe_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "match_id"
    t.bigint "author_id"
    t.boolean "read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_messages_on_author_id"
    t.index ["match_id"], name: "index_messages_on_match_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participants_on_event_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "user_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "swipes", force: :cascade do |t|
    t.boolean "participant_1_liked"
    t.boolean "participant_2_liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "participant_1_id"
    t.bigint "participant_2_id"
    t.index ["participant_1_id"], name: "index_swipes_on_participant_1_id"
    t.index ["participant_2_id"], name: "index_swipes_on_participant_2_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "Mr. Tester", null: false
    t.string "bio", default: " "
    t.integer "age", default: 21, null: false
    t.string "gender", default: "N/A", null: false
    t.string "preferred_gender", default: "all", null: false
    t.string "preferred_match_type", default: "Friends", null: false
    t.string "role", default: "user", null: false
    t.integer "upper_age_preference", default: 18, null: false
    t.integer "lower_age_preference", default: 60, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "users"
  add_foreign_key "matches", "swipes"
  add_foreign_key "messages", "participants", column: "author_id"
  add_foreign_key "participants", "events"
  add_foreign_key "participants", "users"
  add_foreign_key "pictures", "users"
  add_foreign_key "swipes", "participants", column: "participant_1_id"
  add_foreign_key "swipes", "participants", column: "participant_2_id"
end

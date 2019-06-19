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

ActiveRecord::Schema.define(version: 2018_12_08_214649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.string "address"
    t.string "domain"
    t.bigint "media_member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_member_id"], name: "index_emails_on_media_member_id"
  end

  create_table "media_lists", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_lists_members", id: false, force: :cascade do |t|
    t.bigint "media_list_id"
    t.bigint "media_member_id"
    t.index ["media_list_id"], name: "index_media_lists_members_on_media_list_id"
    t.index ["media_member_id"], name: "index_media_lists_members_on_media_member_id"
  end

  create_table "media_lists_tags", force: :cascade do |t|
    t.bigint "media_list_id"
    t.bigint "tag_id"
    t.index ["media_list_id"], name: "index_media_lists_tags_on_media_list_id"
    t.index ["tag_id"], name: "index_media_lists_tags_on_tag_id"
  end

  create_table "media_members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

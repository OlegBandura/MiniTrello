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

ActiveRecord::Schema.define(version: 20180730195700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachment_cards", force: :cascade do |t|
    t.bigint "attachment_id"
    t.bigint "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachment_id"], name: "index_attachment_cards_on_attachment_id"
    t.index ["card_id"], name: "index_attachment_cards_on_card_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.bigint "lists_id"
    t.string "title", null: false
    t.text "description"
    t.bigint "users_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lists_id"], name: "index_cards_on_lists_id"
    t.index ["users_id"], name: "index_cards_on_users_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "user_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_comments_on_card_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dashboard_labels", force: :cascade do |t|
    t.bigint "dashboard_id"
    t.bigint "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_dashboard_labels_on_dashboard_id"
    t.index ["label_id"], name: "index_dashboard_labels_on_label_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.string "title", null: false
    t.integer "policy"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dashboards_on_user_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "color", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password", null: false
    t.string "username", null: false
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

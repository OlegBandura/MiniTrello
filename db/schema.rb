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

ActiveRecord::Schema.define(version: 20180727204538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachment_cards", force: :cascade do |t|
    t.bigint "attachments_id"
    t.bigint "cards_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachments_id"], name: "index_attachment_cards_on_attachments_id"
    t.index ["cards_id"], name: "index_attachment_cards_on_cards_id"
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
    t.bigint "attachments_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachments_id"], name: "index_cards_on_attachments_id"
    t.index ["lists_id"], name: "index_cards_on_lists_id"
    t.index ["users_id"], name: "index_cards_on_users_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "cards_id"
    t.bigint "attachments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachments_id"], name: "index_comments_on_attachments_id"
    t.index ["cards_id"], name: "index_comments_on_cards_id"
  end

  create_table "dashboard_lists", force: :cascade do |t|
    t.bigint "dashboard_id_id"
    t.bigint "list_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id_id"], name: "index_dashboard_lists_on_dashboard_id_id"
    t.index ["list_id_id"], name: "index_dashboard_lists_on_list_id_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.string "title", null: false
    t.integer "policy"
    t.bigint "user_id"
    t.bigint "dashboard_list_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_list_id_id"], name: "index_dashboards_on_dashboard_list_id_id"
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

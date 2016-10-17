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

ActiveRecord::Schema.define(version: 20161017201211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basics", force: :cascade do |t|
    t.text    "name"
    t.text    "address"
    t.integer "age"
    t.integer "clients_id"
    t.index ["clients_id"], name: "index_basics_on_clients_id", using: :btree
  end

  create_table "births", force: :cascade do |t|
    t.text    "medication"
    t.text    "intervention"
    t.integer "dilation"
    t.integer "effacement"
    t.integer "clients_id"
    t.index ["clients_id"], name: "index_births_on_clients_id", using: :btree
  end

  create_table "charts", force: :cascade do |t|
    t.string  "chart_type"
    t.integer "client_id"
    t.text    "name"
    t.text    "address"
    t.text    "age"
    t.text    "EDD"
    t.text    "phsician"
    t.text    "nutrition"
    t.text    "bp"
    t.text    "medications"
    t.text    "intervention"
    t.text    "contraction"
    t.text    "effacement"
    t.text    "dilation"
    t.text    "support"
    t.text    "questions"
    t.text    "comments"
    t.index ["client_id"], name: "index_charts_on_client_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "chart_type"
  end

  create_table "postpartums", force: :cascade do |t|
    t.text    "support"
    t.text    "recovery"
    t.text    "questions"
    t.integer "clients_id"
    t.index ["clients_id"], name: "index_postpartums_on_clients_id", using: :btree
  end

  create_table "prenatals", force: :cascade do |t|
    t.integer "EDD"
    t.integer "BP"
    t.text    "physician"
    t.integer "clients_id"
    t.index ["clients_id"], name: "index_prenatals_on_clients_id", using: :btree
  end

  add_foreign_key "charts", "clients"
end

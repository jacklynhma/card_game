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

ActiveRecord::Schema.define(version: 2018_09_05_030615) do

  create_table "boards", force: :cascade do |t|
    t.integer "moves"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "layout_id"
    t.integer "board_id"
    t.string "color"
    t.string "row"
    t.string "column"
    t.string "word"
    t.index ["board_id"], name: "index_cards_on_board_id"
    t.index ["layout_id"], name: "index_cards_on_layout_id"
  end

  create_table "layouts", force: :cascade do |t|
    t.integer "board_id"
    t.index ["board_id"], name: "index_layouts_on_board_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "color", null: false
    t.string "name", null: false
    t.integer "board_id"
    t.index ["board_id"], name: "index_teams_on_board_id"
  end

end

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

ActiveRecord::Schema.define(version: 2019_12_30_044116) do

  create_table "food_enquetes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "mail", null: false
    t.integer "age", null: false
    t.integer "food_id", null: false
    t.integer "score", null: false
    t.string "request", null: false
    t.integer "present_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gym_enquetes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.integer "age"
    t.integer "course_id"
    t.integer "score"
    t.string "request"
    t.integer "present_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130523185209) do

  create_table "dice", :force => true do |t|
    t.integer  "value"
    t.integer  "turn_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.integer "num_rounds"
    t.integer "game_points"
  end

  create_table "games_users", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "user_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "game_id"
    t.integer  "num_turns"
    t.integer  "round_points"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "scores", :force => true do |t|
    t.integer  "final_score"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scores_users", :id => false, :force => true do |t|
    t.integer "score_id"
    t.integer "user_id"
  end

  create_table "turns", :force => true do |t|
    t.integer  "round_id"
    t.integer  "dice"
    t.integer  "turn_points"
    t.integer  "num_rolls"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

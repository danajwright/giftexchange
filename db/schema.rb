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

ActiveRecord::Schema.define(:version => 20131208064522) do

  create_table "exchanges", :force => true do |t|
    t.string   "name"
    t.string   "occasion"
    t.integer  "budget"
    t.datetime "send_invite"
    t.datetime "reminder"
    t.datetime "deadline"
    t.datetime "end_date"
    t.integer  "user_id"
  end

  create_table "matches", :force => true do |t|
    t.integer  "secret_santa_id"
    t.integer  "member_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "interests"
    t.boolean  "dependent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "s_key"
    t.boolean  "active"
    t.string   "email"
    t.string   "permalink"
    t.integer  "user_id"
    t.integer  "member_id"
    t.string   "img_url"
    t.string   "goes_by"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end

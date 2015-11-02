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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151026122153) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.integer  "price"
    t.integer  "selling"
    t.string   "category"
    t.date     "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buyings", force: true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.date     "buy_date"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "content"
    t.string   "user_id"
    t.string   "tweet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", force: true do |t|
    t.string   "from_user_id"
    t.string   "to_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "friend_flag",  default: 0, null: false
  end

  create_table "tweets", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["user_id"], name: "index_tweets_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count",           default: 0
    t.datetime "sign_in"
    t.datetime "sign_out"
    t.text     "introduction"
    t.string   "email"
    t.boolean  "admin",           default: false, null: false
    t.date     "birthday"
  end

end

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

ActiveRecord::Schema.define(:version => 20131028013746) do

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "cuisine"
    t.string   "address"
    t.decimal  "price"
    t.integer  "servings"
    t.text     "notes"
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.time     "expiry"
    t.integer  "servings",   :default => 1
    t.integer  "user_id"
    t.integer  "meal_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "email"
    t.string   "phone"
    t.text     "bio"
    t.string   "password_digest"
    t.string   "image"
    t.boolean  "cook"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end

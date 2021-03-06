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

ActiveRecord::Schema.define(version: 20150115223734) do

  create_table "account_types", force: true do |t|
    t.string   "name"
    t.boolean  "lhs_attr"
    t.boolean  "rhs_attr"
    t.boolean  "plus_attr"
    t.boolean  "minus_attr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "account_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.integer  "from_acc"
    t.integer  "to_acc"
    t.float    "amount"
    t.date     "date"
    t.string   "desc"
    t.boolean  "is_to_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

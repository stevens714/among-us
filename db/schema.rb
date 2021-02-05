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

ActiveRecord::Schema.define(version: 20210205162639) do

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.string  "color"
    t.integer "age"
    t.string  "accessory"
    t.string  "special_ability"
    t.text    "backstory"
    t.string  "image",           default: "https://i.pinimg.com/474x/12/71/87/1271876bf2bdd7649ceab50034543e89.jpg"
    t.integer "user_id"
  end

  create_table "characters_skills", id: false, force: :cascade do |t|
    t.integer "skill_id"
    t.integer "character_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string  "name"
    t.integer "value"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end

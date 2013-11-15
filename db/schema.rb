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

ActiveRecord::Schema.define(:version => 20131115122708) do

  create_table "animals", :force => true do |t|
    t.integer  "animal_type"
    t.text     "nickname"
    t.integer  "gender"
    t.date     "date_incoming"
    t.integer  "id_user"
    t.integer  "id_breed"
    t.text     "label"
    t.text     "signs"
    t.string   "id_hair_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "vaccinations", :force => true do |t|
    t.integer  "animal_id"
    t.date     "date_vacc"
    t.text     "notes"
    t.float    "cost"
    t.binary   "check"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

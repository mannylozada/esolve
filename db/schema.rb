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

ActiveRecord::Schema.define(:version => 20130913190353) do

  create_table "esol_groups", :force => true do |t|
    t.string   "group_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "grades", :force => true do |t|
    t.string   "grade_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "language_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "student_number"
    t.integer  "grade"
    t.date     "entry_date"
    t.string   "ese_code"
    t.integer  "fcat_reading"
    t.integer  "fcat_math"
    t.integer  "cella_listening_speaking"
    t.integer  "cella_reading"
    t.integer  "cella_writing"
    t.boolean  "student_with_dissability"
    t.boolean  "economically_disadvantaged"
    t.boolean  "white"
    t.boolean  "hispanic"
    t.boolean  "black"
    t.boolean  "asian"
    t.boolean  "multiracial"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "language_id"
    t.integer  "esol_group_id",              :default => 1
    t.integer  "grade_id"
  end

end

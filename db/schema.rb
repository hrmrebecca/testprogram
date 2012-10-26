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

ActiveRecord::Schema.define(:version => 20121026013001) do

  create_table "addresses", :force => true do |t|
    t.integer  "person_id",                          :null => false
    t.string   "street_name",                        :null => false
    t.string   "street_name_secondary"
    t.string   "city"
    t.string   "state_abbr",            :limit => 2
    t.string   "zip",                   :limit => 5
    t.string   "zip_ext",               :limit => 4
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "addresses", ["person_id"], :name => "index_addresses_on_person_id"
  add_index "addresses", ["street_name"], :name => "index_addresses_on_street_name"

  create_table "people", :primary_key => "ID", :force => true do |t|
    t.string "name1", :null => false
    t.string "name2"
    t.string "O1_LN"
    t.string "O1_FN"
    t.string "O1_MN"
    t.string "O1_S"
    t.string "O2_LN"
    t.string "O2_FN"
    t.string "O2_MN"
    t.string "O2_S"
    t.string "O1_TN"
  end

  add_index "people", ["name1"], :name => "index_people"

end

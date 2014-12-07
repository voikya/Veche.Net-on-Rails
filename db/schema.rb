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

ActiveRecord::Schema.define(:version => 20141207033933) do

  create_table "lexicons", :force => true do |t|
    t.string "name"
    t.string "lexicon_table"
    t.text   "alphabet"
    t.string "slug"
  end

  create_table "news", :force => true do |t|
    t.string "group"
    t.string "en_headline"
    t.text   "en_summary"
    t.text   "en_article"
    t.string "nv_headline"
    t.text   "nv_summary"
    t.text   "nv_article"
  end

  create_table "novegradian", :force => true do |t|
    t.string   "word"
    t.string   "transliteration"
    t.string   "pronunciation"
    t.string   "part_of_speech"
    t.string   "root"
    t.text     "definition"
    t.text     "important_forms"
    t.text     "idioms"
    t.text     "notes"
    t.text     "etymology"
    t.text     "cognates"
    t.text     "inflection_structure"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end

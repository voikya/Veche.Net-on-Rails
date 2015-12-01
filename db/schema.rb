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

ActiveRecord::Schema.define(:version => 20151128014905) do

  create_table "alashian", :force => true do |t|
    t.string   "word"
    t.string   "transliteration"
    t.string   "pronunciation"
    t.string   "part_of_speech"
    t.string   "root"
    t.text     "definition"
    t.text     "idioms"
    t.text     "notes"
    t.text     "etymology"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "slug"
  end

  add_index "alashian", ["slug"], :name => "index_alashian_on_slug", :unique => true

  create_table "alashian_crossrefs", :id => false, :force => true do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", :null => false
  end

  create_table "downloads", :force => true do |t|
    t.string   "file"
    t.integer  "download_count", :default => 0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

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
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "slug"
  end

  add_index "novegradian", ["slug"], :name => "index_novegradian_on_slug", :unique => true

  create_table "novegradian_crossrefs", :id => false, :force => true do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", :null => false
  end

  create_table "novegradian_morphology", :force => true do |t|
    t.integer  "entry_id"
    t.string   "category"
    t.string   "stem"
    t.string   "stem_transliterated"
    t.string   "desinence"
    t.string   "desinence_transliterated"
    t.string   "tertiary"
    t.string   "tertiary_transliterated"
    t.string   "group"
    t.string   "subgroup"
    t.string   "flags"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "base_id"
  end

  create_table "ochets", :force => true do |t|
    t.string   "root_word"
    t.string   "root_transliteration"
    t.string   "ext_root"
    t.string   "ext_root_transliteration"
    t.text     "definition"
    t.text     "derivatives"
    t.text     "idioms"
    t.text     "etymology"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "slug"
  end

  add_index "ochets", ["slug"], :name => "index_ochets_on_slug", :unique => true

  create_table "ochets_crossrefs", :id => false, :force => true do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", :null => false
  end

  create_table "sca_features", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "boolean",     :default => false
    t.string   "affects"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "sca_languages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sca_phoneme_features", :force => true do |t|
    t.integer  "phoneme_id"
    t.integer  "feature_id"
    t.boolean  "value",        :default => false
    t.string   "custom_value"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "sca_phonemes", :force => true do |t|
    t.string   "symbol"
    t.integer  "language_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_foreign_key "alashian_crossrefs", "alashian", name: "alashian_crossrefs_from_fk", column: "from"
  add_foreign_key "alashian_crossrefs", "alashian", name: "alashian_crossrefs_to_fk", column: "to"

  add_foreign_key "novegradian_crossrefs", "novegradian", name: "novegradian_crossrefs_from_fk", column: "from"
  add_foreign_key "novegradian_crossrefs", "novegradian", name: "novegradian_crossrefs_to_fk", column: "to"

  add_foreign_key "novegradian_morphology", "novegradian", name: "novegradian_morphology_entry_id_fk", column: "entry_id"
  add_foreign_key "novegradian_morphology", "novegradian_morphology", name: "novegradian_morphology_base_id_fk", column: "base_id"

  add_foreign_key "ochets_crossrefs", "ochets", name: "ochets_crossrefs_from_fk", column: "from"
  add_foreign_key "ochets_crossrefs", "ochets", name: "ochets_crossrefs_to_fk", column: "to"

  add_foreign_key "sca_languages", "sca_languages", name: "sca_languages_parent_id_fk", column: "parent_id"

  add_foreign_key "sca_phoneme_features", "sca_features", name: "sca_phoneme_features_feature_id_fk", column: "feature_id"
  add_foreign_key "sca_phoneme_features", "sca_phonemes", name: "sca_phoneme_features_phoneme_id_fk", column: "phoneme_id"

  add_foreign_key "sca_phonemes", "sca_languages", name: "sca_phonemes_language_id_fk", column: "language_id"

end

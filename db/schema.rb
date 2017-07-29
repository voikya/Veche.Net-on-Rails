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

ActiveRecord::Schema.define(version: 20170729042546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alashian", force: :cascade do |t|
    t.string   "word",            limit: 255
    t.string   "transliteration", limit: 255
    t.string   "pronunciation",   limit: 255
    t.string   "part_of_speech",  limit: 255
    t.string   "root",            limit: 255
    t.text     "definition"
    t.text     "idioms"
    t.text     "notes"
    t.text     "etymology"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "slug",            limit: 255
  end

  add_index "alashian", ["slug"], name: "index_alashian_on_slug", unique: true, using: :btree

  create_table "alashian_crossrefs", id: false, force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", default: "now()", null: false
  end

  create_table "alashian_morphology", force: :cascade do |t|
    t.integer  "entry_id"
    t.string   "category"
    t.string   "stem"
    t.string   "stem_transliterated"
    t.string   "group"
    t.string   "subgroup"
    t.string   "flags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "character"
    t.integer "primary_order"
    t.integer "secondary_order"
    t.integer "tertiary_order"
    t.boolean "canonical",       default: false
    t.integer "lexicon_id"
    t.integer "weight",          default: 1
  end

  create_table "downloads", force: :cascade do |t|
    t.string   "file",           limit: 255
    t.integer  "download_count",             default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "lexicons", force: :cascade do |t|
    t.string "name",          limit: 255
    t.string "lexicon_table", limit: 255
    t.string "slug",          limit: 255
  end

  create_table "news", force: :cascade do |t|
    t.string "group",       limit: 255
    t.string "en_headline", limit: 255
    t.text   "en_summary"
    t.text   "en_article"
    t.string "nv_headline", limit: 255
    t.text   "nv_summary"
    t.text   "nv_article"
  end

  create_table "novegradian", force: :cascade do |t|
    t.string   "word",            limit: 255
    t.string   "transliteration", limit: 255
    t.string   "pronunciation",   limit: 255
    t.string   "part_of_speech",  limit: 255
    t.string   "root",            limit: 255
    t.text     "definition"
    t.text     "important_forms"
    t.text     "idioms"
    t.text     "notes"
    t.text     "etymology"
    t.text     "cognates"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "slug",            limit: 255
  end

  add_index "novegradian", ["slug"], name: "index_novegradian_on_slug", unique: true, using: :btree

  create_table "novegradian_crossrefs", id: false, force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", default: "now()", null: false
  end

  create_table "novegradian_morphology", force: :cascade do |t|
    t.integer  "entry_id"
    t.string   "category",                 limit: 255
    t.string   "stem",                     limit: 255
    t.string   "stem_transliterated",      limit: 255
    t.string   "desinence",                limit: 255
    t.string   "desinence_transliterated", limit: 255
    t.string   "tertiary",                 limit: 255
    t.string   "tertiary_transliterated",  limit: 255
    t.string   "group",                    limit: 255
    t.string   "subgroup",                 limit: 255
    t.string   "flags",                    limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "base_id"
  end

  create_table "ochets", force: :cascade do |t|
    t.string   "root_word",                limit: 255
    t.string   "root_transliteration",     limit: 255
    t.string   "ext_root",                 limit: 255
    t.string   "ext_root_transliteration", limit: 255
    t.text     "definition"
    t.text     "derivatives"
    t.text     "idioms"
    t.text     "etymology"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "slug",                     limit: 255
  end

  add_index "ochets", ["slug"], name: "index_ochets_on_slug", unique: true, using: :btree

  create_table "ochets_crossrefs", id: false, force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", default: "now()", null: false
  end

  create_table "sca_features", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.boolean  "boolean",                 default: false
    t.string   "affects",     limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "sca_languages", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "name",        limit: 255
    t.text     "description"
    t.string   "slug",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sca_phoneme_features", force: :cascade do |t|
    t.integer  "phoneme_id"
    t.integer  "feature_id"
    t.boolean  "value",                    default: false
    t.string   "custom_value", limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "sca_phonemes", force: :cascade do |t|
    t.string   "symbol",      limit: 255
    t.integer  "language_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sca_sound_change_groups", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.integer  "language_id"
    t.integer  "order"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sca_sound_changes", force: :cascade do |t|
    t.string   "input",       limit: 255
    t.string   "output",      limit: 255
    t.string   "environment", limit: 255
    t.integer  "order"
    t.integer  "group_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tunisian", force: :cascade do |t|
    t.string   "word",                 limit: 255
    t.string   "pronunciation",        limit: 255
    t.string   "part_of_speech",       limit: 255
    t.string   "root",                 limit: 255
    t.text     "definition"
    t.text     "important_forms"
    t.text     "idioms"
    t.text     "notes"
    t.text     "etymology"
    t.text     "cognates"
    t.text     "inflection_structure"
    t.string   "slug",                 limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "tunisian", ["slug"], name: "index_tunisian_on_slug", unique: true, using: :btree

  create_table "tunisian_crossrefs", id: false, force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", default: "now()"
  end

  add_foreign_key "alashian_crossrefs", "alashian", column: "from", name: "alashian_crossrefs_from_fk"
  add_foreign_key "alashian_crossrefs", "alashian", column: "to", name: "alashian_crossrefs_to_fk"
  add_foreign_key "alashian_morphology", "alashian", column: "entry_id"
  add_foreign_key "characters", "lexicons"
  add_foreign_key "novegradian_crossrefs", "novegradian", column: "from", name: "novegradian_crossrefs_from_fk"
  add_foreign_key "novegradian_crossrefs", "novegradian", column: "to", name: "novegradian_crossrefs_to_fk"
  add_foreign_key "novegradian_morphology", "novegradian", column: "entry_id", name: "novegradian_morphology_entry_id_fk"
  add_foreign_key "novegradian_morphology", "novegradian_morphology", column: "base_id", name: "novegradian_morphology_base_id_fk"
  add_foreign_key "ochets_crossrefs", "ochets", column: "from", name: "ochets_crossrefs_from_fk"
  add_foreign_key "ochets_crossrefs", "ochets", column: "to", name: "ochets_crossrefs_to_fk"
  add_foreign_key "sca_languages", "sca_languages", column: "parent_id", name: "sca_languages_parent_id_fk"
  add_foreign_key "sca_phoneme_features", "sca_features", column: "feature_id", name: "sca_phoneme_features_feature_id_fk"
  add_foreign_key "sca_phoneme_features", "sca_phonemes", column: "phoneme_id", name: "sca_phoneme_features_phoneme_id_fk"
  add_foreign_key "sca_phonemes", "sca_languages", column: "language_id", name: "sca_phonemes_language_id_fk"
  add_foreign_key "sca_sound_change_groups", "sca_languages", column: "language_id", name: "sca_sound_change_groups_language_id_fk"
  add_foreign_key "sca_sound_changes", "sca_sound_change_groups", column: "group_id", name: "sca_sound_changes_group_id_fk"
  add_foreign_key "tunisian_crossrefs", "tunisian", column: "from", name: "tunisian_crossrefs_from_fk"
  add_foreign_key "tunisian_crossrefs", "tunisian", column: "to", name: "tunisian_crossrefs_to_fk"
end

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

ActiveRecord::Schema.define(version: 20170224145613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "formulario_field_id"
    t.integer  "formulario_p_id"
    t.string   "valor"
    t.string   "file"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "answers", ["formulario_field_id"], name: "index_answers_on_formulario_field_id", using: :btree
  add_index "answers", ["formulario_p_id"], name: "index_answers_on_formulario_p_id", using: :btree

  create_table "field_types", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filial_formularios", force: :cascade do |t|
    t.integer  "formulario_id"
    t.integer  "filial_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "filial_formularios", ["filial_id"], name: "index_filial_formularios_on_filial_id", using: :btree
  add_index "filial_formularios", ["formulario_id"], name: "index_filial_formularios_on_formulario_id", using: :btree

  create_table "filials", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formulario_fields", force: :cascade do |t|
    t.string   "label"
    t.integer  "formulario_id"
    t.integer  "field_type_id"
    t.integer  "requirido"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "options"
  end

  create_table "formulario_ps", force: :cascade do |t|
    t.string   "form_id"
    t.integer  "formulario_id"
    t.integer  "formulario_field_id"
    t.integer  "user_id"
    t.string   "valor"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "file"
  end

  add_index "formulario_ps", ["formulario_field_id"], name: "index_formulario_ps_on_formulario_field_id", using: :btree
  add_index "formulario_ps", ["formulario_id"], name: "index_formulario_ps_on_formulario_id", using: :btree
  add_index "formulario_ps", ["user_id"], name: "index_formulario_ps_on_user_id", using: :btree

  create_table "formularios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantidade"
    t.integer  "filial_id"
  end

  add_index "formularios", ["filial_id"], name: "index_formularios_on_filial_id", using: :btree

  create_table "logos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome"
    t.integer  "filial_id"
    t.integer  "tipo"
    t.string   "auth_token"
  end

  add_index "users", ["auth_token"], name: "index_users_on_auth_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["filial_id"], name: "index_users_on_filial_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "answers", "formulario_fields"
  add_foreign_key "answers", "formulario_ps"
  add_foreign_key "filial_formularios", "filials"
  add_foreign_key "filial_formularios", "formularios"
  add_foreign_key "formulario_ps", "formulario_fields"
  add_foreign_key "formulario_ps", "formularios"
end

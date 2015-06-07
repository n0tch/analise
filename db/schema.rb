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

ActiveRecord::Schema.define(version: 20150607173410) do

  create_table "ap_tipo_contatos", force: :cascade do |t|
    t.string   "nome",              null: false
    t.boolean  "flgStatus",         null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "avisos", force: :cascade do |t|
    t.text     "mensagem",          null: false
    t.boolean  "flgStatus",         null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "titulo"
  end

  create_table "classe_gramaticals", force: :cascade do |t|
    t.string   "nome",                         null: false
    t.string   "sigla",             limit: 10, null: false
    t.boolean  "flgStatus",                    null: false
    t.string   "inseridoPor",                  null: false
    t.datetime "dataDeInsercao",               null: false
    t.string   "atualizadoPor",                null: false
    t.datetime "dataDeAtualizacao"
    t.integer  "idioma_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "classe_gramaticals", ["idioma_id"], name: "index_classe_gramaticals_on_idioma_id"

  create_table "contato_configuracaos", force: :cascade do |t|
    t.string   "smtp",              null: false
    t.integer  "porta"
    t.string   "host"
    t.string   "email"
    t.string   "senha"
    t.string   "inseridoPor"
    t.datetime "dataDeInsercao"
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "contato_emails", force: :cascade do |t|
    t.string   "nome",               null: false
    t.string   "email",              null: false
    t.boolean  "flgStatus",          null: false
    t.string   "inseridoPor",        null: false
    t.datetime "dataDeInsercao",     null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "ap_tipo_contato_id"
  end

  add_index "contato_emails", ["ap_tipo_contato_id"], name: "index_contato_emails_on_ap_tipo_contato_id"

  create_table "idioma_avisos", force: :cascade do |t|
    t.integer  "idioma_id"
    t.integer  "aviso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "idioma_avisos", ["aviso_id"], name: "index_idioma_avisos_on_aviso_id"
  add_index "idioma_avisos", ["idioma_id"], name: "index_idioma_avisos_on_idioma_id"

  create_table "idiomas", force: :cascade do |t|
    t.string   "nome",                null: false
    t.boolean  "flgStatus",           null: false
    t.string   "inseridoPor",         null: false
    t.datetime "dataDeInsercao",      null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
  end

end

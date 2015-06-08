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

ActiveRecord::Schema.define(version: 20150608231207) do

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

  create_table "apresentacao_ebooks", force: :cascade do |t|
    t.string   "conteudo",          null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "areas", force: :cascade do |t|
    t.integer  "curso_id"
    t.string   "nome",              null: false
    t.boolean  "flgStatus",         null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "areas", ["curso_id"], name: "index_areas_on_curso_id"

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

  create_table "curso_responsavels", force: :cascade do |t|
    t.integer  "idioma_id"
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "curso_responsavels", ["idioma_id"], name: "index_curso_responsavels_on_idioma_id"

  create_table "cursos", force: :cascade do |t|
    t.string   "nome",              null: false
    t.boolean  "flgStatus",         null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeAtualizacao"
    t.string   "atualizadoPor"
    t.integer  "idioma_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "dataDeInsercao"
  end

  add_index "cursos", ["idioma_id"], name: "index_cursos_on_idioma_id"

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

  create_table "instituicao_cursos", force: :cascade do |t|
    t.integer  "instituicao_id"
    t.integer  "curso_id"
    t.string   "inseridoPor"
    t.datetime "dataDeInsercao"
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "instituicao_cursos", ["curso_id"], name: "index_instituicao_cursos_on_curso_id"
  add_index "instituicao_cursos", ["instituicao_id"], name: "index_instituicao_cursos_on_instituicao_id"

  create_table "instituicao_responsavels", force: :cascade do |t|
    t.integer  "instituicao_id"
    t.string   "nome",              null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "instituicao_responsavels", ["instituicao_id"], name: "index_instituicao_responsavels_on_instituicao_id"

  create_table "instituicaos", force: :cascade do |t|
    t.string   "nome",              null: false
    t.string   "site",              null: false
    t.boolean  "flgStatus",         null: false
    t.string   "inseridoPor",       null: false
    t.datetime "dataDeInsercao",    null: false
    t.string   "atualizadoPor"
    t.datetime "dataDeAtualizacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20160401033321) do

  create_table "customers", force: :cascade do |t|
    t.string   "razao"
    t.string   "iss"
    t.string   "cnpj"
    t.string   "cei"
    t.string   "cgf"
    t.string   "cod"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "complemento"
    t.string   "municipio"
    t.string   "estado"
    t.string   "telefone"
    t.string   "telefone2"
    t.string   "telefone3"
    t.string   "celular"
    t.string   "celular2"
    t.string   "email"
    t.string   "email2"
    t.string   "contato"
    t.string   "contato2"
    t.string   "endereco_coleta"
    t.float    "honorarios"
    t.datetime "desde"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "Nome"
    t.float    "Price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(:version => 20120710032336) do

  create_table "animals", :force => true do |t|
    t.string   "nombre"
    t.string   "raza"
    t.string   "sexo"
    t.date     "fecha_entrada"
    t.text     "observaciones"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "chenil_id"
  end

  create_table "chenils", :force => true do |t|
    t.integer  "zona_id"
    t.integer  "ocupado"
    t.integer  "capacidad"
    t.integer  "caplibre"
    t.text     "notas"
    t.integer  "estado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "numero"
  end

  create_table "ocupacions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perfils", :force => true do |t|
    t.integer  "ocupacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfils_zonas", :id => false, :force => true do |t|
    t.integer "perfil_id"
    t.integer "zona_id"
  end

  create_table "pers", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "perfil_id"
  end

  add_index "personas", ["email"], :name => "index_personas_on_email", :unique => true

  create_table "probas", :force => true do |t|
    t.string   "nombre"
    t.string   "correo"
    t.integer  "per_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relacion_animals", :force => true do |t|
    t.integer  "animal1_id"
    t.integer  "animal2_id"
    t.integer  "relacion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "searches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "nombre"
    t.integer  "zona_id"
  end

  create_table "tareas", :force => true do |t|
    t.string   "nombre"
    t.integer  "persona_id"
    t.integer  "zona_id"
    t.integer  "animal_id"
    t.text     "texto"
    t.integer  "ocupacion_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.date     "fecha"
  end

  create_table "zonas", :force => true do |t|
    t.string   "nombre"
    t.string   "notas"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

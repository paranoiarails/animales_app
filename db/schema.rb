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

ActiveRecord::Schema.define(:version => 20130202172617) do

  create_table "animal_images", :force => true do |t|
    t.string   "caption"
    t.integer  "animal_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "animals", :force => true do |t|
    t.string   "nombre"
    t.string   "raza"
    t.string   "sexo"
    t.date     "fecha_entrada"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "chenil_id"
    t.integer  "especie_id"
    t.integer  "edad"
    t.integer  "zona_id"
    t.text     "veterinario"
  end

  create_table "articulos", :force => true do |t|
    t.integer  "animales"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Picture_file_name"
    t.string   "Picture_content_type"
    t.integer  "Picture_file_size"
    t.datetime "Picture_updated_at"
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

  create_table "diarios", :force => true do |t|
    t.integer  "zona_id"
    t.date     "fecha"
    t.text     "tareas"
    t.text     "informe"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "nuevo"
    t.text     "nuevoI"
  end

  create_table "especies", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "horarios", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "zona_id"
    t.date     "fecha"
    t.integer  "tarde"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horarios_personas", :id => false, :force => true do |t|
    t.integer "horario_id"
    t.integer "persona_id"
  end

  add_index "horarios_personas", ["horario_id", "persona_id"], :name => "index_horarios_personas_on_horario_id_and_persona_id"
  add_index "horarios_personas", ["persona_id", "horario_id"], :name => "index_horarios_personas_on_persona_id_and_horario_id"

  create_table "images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "animal_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "titulo"
    t.text     "content"
    t.string   "Picture_file_name"
    t.string   "Picture_content_type"
    t.integer  "Picture_file_size"
    t.datetime "Picture_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "relacion",   :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :id => false, :force => true do |t|
    t.string  "nombre",  :limit => nil
    t.integer "zona_id"
  end

  create_table "submenus", :force => true do |t|
    t.integer  "menu_id"
    t.string   "titulo"
    t.text     "contenido"
    t.string   "Picture_file_name"
    t.string   "Picture_content_type"
    t.integer  "Picture_file_size"
    t.datetime "Picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "tareas", :force => true do |t|
    t.integer  "hecho"
    t.integer  "personaHecho_id"
    t.string   "nombre"
    t.integer  "persona_id"
    t.integer  "zona_id"
    t.integer  "animal_id"
    t.integer  "ocupacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha"
  end

  create_table "tipos_rels", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "zonas", :force => true do |t|
    t.string   "nombre"
    t.string   "notas"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

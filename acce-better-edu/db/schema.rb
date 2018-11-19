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

ActiveRecord::Schema.define(version: 20180919032803) do

  create_table "ciudads", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "departamento_id"
    t.index ["departamento_id"], name: "index_ciudads_on_departamento_id"
  end

  create_table "convocatoria", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "estado"
    t.integer  "programa_id"
    t.index ["programa_id"], name: "index_convocatoria_on_programa_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "persona_universidads", force: :cascade do |t|
    t.integer  "universidad_id"
    t.integer  "persona_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["persona_id"], name: "index_persona_universidads_on_persona_id"
    t.index ["universidad_id"], name: "index_persona_universidads_on_universidad_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string   "num_documento"
    t.string   "nombre"
    t.string   "pri_apellido"
    t.string   "seg_apellido"
    t.string   "genero"
    t.string   "fecha_nacimiento"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "tipo_documento_id"
    t.index ["tipo_documento_id"], name: "index_personas_on_tipo_documento_id"
  end

  create_table "programas", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "estado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "universidad_id"
    t.index ["universidad_id"], name: "index_programas_on_universidad_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string   "nombre"
    t.string   "menu"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipo_documentos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.string   "nit"
    t.string   "nombre"
    t.string   "dereccion"
    t.string   "telefono"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ciudad_id"
    t.index ["ciudad_id"], name: "index_universidads_on_ciudad_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "rol_id"
    t.integer  "persona_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["persona_id"], name: "index_users_on_persona_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["rol_id"], name: "index_users_on_rol_id"
  end

end

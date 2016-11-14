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

ActiveRecord::Schema.define(version: 20161114145353) do

  create_table "paises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "sexo"
    t.datetime "fecha_de_nacimiento"
    t.string   "direccion"
    t.string   "email"
    t.string   "sitio_web"
    t.integer  "provincia_id"
    t.integer  "pais_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["pais_id"], name: "index_personas_on_pais_id", using: :btree
    t.index ["provincia_id"], name: "index_personas_on_provincia_id", using: :btree
  end

  create_table "provincias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.integer  "pais_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id"], name: "index_provincias_on_pais_id", using: :btree
  end

  create_table "telefonos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "numero"
    t.integer  "tipo_de_telefono_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "persona_id"
    t.index ["persona_id"], name: "index_telefonos_on_persona_id", using: :btree
    t.index ["tipo_de_telefono_id"], name: "index_telefonos_on_tipo_de_telefono_id", using: :btree
  end

  create_table "tipos_de_telefono", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "personas", "paises"
  add_foreign_key "personas", "provincias"
  add_foreign_key "provincias", "paises"
  add_foreign_key "telefonos", "personas"
  add_foreign_key "telefonos", "tipos_de_telefono"
end

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

ActiveRecord::Schema.define(version: 2020_07_12_063626) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "actividades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "descripcion"
    t.string "frecuencia"
    t.string "duracion"
    t.string "tiempo_practica"
    t.string "grupo_solitario"
    t.string "equipo_amateur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_actividades_fisica_on_infousuario_id", unique: true
  end

  create_table "alimentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.text "caraceristica"
    t.string "frecuencia"
    t.string "racionp"
    t.string "caseram"
    t.string "nutrientes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "antecedentes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "diabetes"
    t.string "obesidad"
    t.string "hipertrigliceridemia"
    t.string "hipercolesterolemia"
    t.string "cancer"
    t.string "otro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_antecedentes_paciente_on_infousuario_id", unique: true
  end

  create_table "biometrias", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "globulos_rojos"
    t.string "globulos_blancos"
    t.string "plaquetas"
    t.string "hemoglobina"
    t.string "hematocrito"
    t.string "neutrofilos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_biometrias_ematica_on_infousuario_id", unique: true
  end

  create_table "comidas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "descripcion"
  end

  create_table "consultas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.date "fecha_consulta"
  end

  create_table "dietas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "paciente_id"
    t.bigint "comida_id"
    t.bigint "alimento_id"
    t.bigint "subalimento_id"
    t.integer "cantidad"
    t.integer "estado"
    t.index ["alimento_id"], name: "fk_rails_e8090303af"
    t.index ["comida_id"], name: "fk_rails_76d3b9ec09"
    t.index ["paciente_id"], name: "fk_rails_b9f587d0ff"
    t.index ["subalimento_id"], name: "fk_rails_4ac410902c"
  end

  create_table "estilos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "descripcion"
    t.string "frecuencia"
    t.string "cantidad"
    t.string "tiempo_consumo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_estilos_vida_on_infousuario_id", unique: true
  end

  create_table "nutriologos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "persona_id"
    t.string "cedula_profesional"
    t.string "login"
    t.string "password_digest"
    t.index ["persona_id"], name: "index_nutriologos_on_persona_id", unique: true
  end

  create_table "pacientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "persona_id"
    t.float "peso"
    t.float "talla"
    t.float "imc"
    t.float "porcentage_grasa"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_pacientes_on_persona_id", unique: true
  end

  create_table "personas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.string "a_paterno"
    t.string "a_materno"
    t.string "sexo"
    t.string "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problemas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "diarrea"
    t.string "nauseas"
    t.string "obesidad"
    t.string "estrenimiento"
    t.string "gastritis"
    t.string "vomito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_problemas_salud_on_infousuario_id", unique: true
  end

  create_table "quimicas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "infousuario_id"
    t.string "nitronitrogenourea"
    t.string "glocosa"
    t.string "creatina"
    t.string "acido_urico"
    t.string "trigliceridos"
    t.string "colesterol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["infousuario_id"], name: "index_quimicas_sanguinea_on_infousuario_id", unique: true
  end

  create_table "signos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "cabello"
    t.string "piel"
    t.string "nails"
    t.string "ojos"
    t.string "presion_alta"
    t.string "frecuencia_resp"
    t.string "frecuencia_cardiaca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subalimentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "alimento_id"
    t.index ["alimento_id"], name: "fk_rails_1ff126d2e1"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actividades", "pacientes", column: "infousuario_id"
  add_foreign_key "antecedentes", "pacientes", column: "infousuario_id"
  add_foreign_key "biometrias", "pacientes", column: "infousuario_id"
  add_foreign_key "dietas", "alimentos"
  add_foreign_key "dietas", "comidas"
  add_foreign_key "dietas", "pacientes"
  add_foreign_key "dietas", "subalimentos"
  add_foreign_key "estilos", "pacientes", column: "infousuario_id"
  add_foreign_key "nutriologos", "personas"
  add_foreign_key "pacientes", "personas"
  add_foreign_key "problemas", "pacientes", column: "infousuario_id"
  add_foreign_key "quimicas", "pacientes", column: "infousuario_id"
  add_foreign_key "subalimentos", "alimentos"
end

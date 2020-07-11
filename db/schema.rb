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

ActiveRecord::Schema.define(version: 2020_07_11_043415) do

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
    t.integer "comida_id"
    t.integer "paciente_id"
    t.integer "alimento_id"
    t.integer "subalimento_id"
    t.integer "cantidad"
    t.string "nutrientes"
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
    t.date "fecha_registro"
    t.integer "edad"
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
    t.integer "alimento_id"
  end

  add_foreign_key "actividades", "pacientes", column: "infousuario_id"
  add_foreign_key "antecedentes", "pacientes", column: "infousuario_id"
  add_foreign_key "biometrias", "pacientes", column: "infousuario_id"
  add_foreign_key "estilos", "pacientes", column: "infousuario_id"
  add_foreign_key "nutriologos", "personas"
  add_foreign_key "pacientes", "personas"
  add_foreign_key "problemas", "pacientes", column: "infousuario_id"
  add_foreign_key "quimicas", "pacientes", column: "infousuario_id"
end

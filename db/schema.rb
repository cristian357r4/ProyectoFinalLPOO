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

ActiveRecord::Schema.define(version: 2020_06_15_002041) do

  create_table "actividades", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.string "ejercicio", limit: 20
    t.string "frecuencia", limit: 40
    t.integer "duracion"
    t.integer "tiempo_practica"
    t.string "grupo_solitario", limit: 10
    t.string "equipo", limit: 2
    t.index ["id_paciente"], name: "actividades_info_pacientes_id_paciente_fk"
  end

  create_table "alimenticio_planes", primary_key: "id_plan", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.integer "grupo_alimentos"
    t.integer "subgrupo_alimentos"
    t.integer "equivalente"
    t.integer "desayuno"
    t.integer "colacion1"
    t.integer "comida"
    t.integer "colacion2"
    t.integer "cena"
    t.index ["grupo_alimentos"], name: "alimenticio_planes_alimentos_grupos_id_grupo_fk"
    t.index ["id_paciente"], name: "alimenticio_planes_info_pacientes_id_paciente_fk"
    t.index ["subgrupo_alimentos"], name: "alimenticio_planes_alimentos_subgrupos_id_sub_fk"
  end

  create_table "alimentos_grupos", primary_key: "id_grupo", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.string "ingrediente", limit: 20
    t.float "cantidad"
  end

  create_table "alimentos_subgrupos", primary_key: "id_sub", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_grupo"
    t.string "nombre", limit: 20
    t.index ["id_grupo"], name: "alimentos_subgrupos_alimentos_grupos_id_grupo_fk"
  end

  create_table "antecedentes", primary_key: "id_antecedentes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.integer "diabetes"
    t.integer "obesidad"
    t.integer "hipertrigliceridemia"
    t.integer "hipercolesterolemia"
    t.integer "cancer"
    t.string "otra", limit: 30
    t.index ["id_paciente"], name: "antecedentes_info_pacientes_id_paciente_fk"
  end

  create_table "consultas", primary_key: "id_consulta", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.integer "folio"
    t.date "fecha"
    t.integer "id_signos"
    t.index ["id_paciente"], name: "consulta_info_pacientes_id_paciente_fk"
    t.index ["id_signos"], name: "consultas_signos_vitales_id_signos_fk"
  end

  create_table "ematica_biometrias", primary_key: "id_biometria", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.date "fecha"
    t.float "globulos_rojos"
    t.float "globulos_blancos"
    t.float "plaquetas"
    t.float "hemoglobina"
    t.float "hematocrito"
    t.float "neutrofilos"
    t.index ["id_paciente"], name: "ematica_biometrias_info_pacientes_id_paciente_fk"
  end

  create_table "estados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos_alimento", primary_key: "id_grupo", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.string "ingrediente", limit: 20
    t.float "cantidad"
  end

  create_table "habitos", primary_key: "id_habitos", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.integer "no_comidas"
    t.integer "alergias"
    t.string "tipo_grasa_cocina", limit: 10
    t.string "lugar_comidas", limit: 20
    t.string "come_fuera", limit: 15
    t.integer "frecuencia_comidas_fuera"
    t.index ["id_paciente"], name: "habitos_info_pacientes_id_paciente_fk"
  end

  create_table "info_pacientes", primary_key: "id_paciente", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_persona"
    t.integer "edad"
    t.date "fecha_macimiento"
    t.float "talla"
    t.float "imc"
    t.float "grasa_corporal"
    t.integer "tipo_paciente"
    t.index ["id_persona"], name: "info_paciente_personas_id_persona_fk"
  end

  create_table "personas", primary_key: "id_persona", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre", limit: 30, null: false
    t.string "a_paterno", limit: 30, null: false
    t.string "a_materno", limit: 30, null: false
    t.string "sexo", limit: 1, null: false
    t.integer "telefono"
    t.string "correo", limit: 45
  end

  create_table "salud_probelmas", primary_key: "id_problema", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.integer "diarrea"
    t.date "fecha"
    t.integer "nauseas"
    t.integer "obesidad"
    t.integer "estrenimiento"
    t.integer "gastritis"
    t.integer "vomito"
    t.index ["id_paciente"], name: "salud_probelmas_info_pacientes_id_paciente_fk"
  end

  create_table "sanguinea_quimicas", primary_key: "id_quimica", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.date "fecha"
    t.float "nitrogenourea"
    t.float "glucosa"
    t.float "creatina"
    t.float "acido_urico"
    t.float "trigliceridos"
    t.float "colesterol"
    t.index ["id_paciente"], name: "sanguinea_quimicas_info_pacientes_id_paciente_fk"
  end

  create_table "signos_vitales", primary_key: "id_signos", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "cabello", limit: 20
    t.string "piel", limit: 20
    t.string "nails", limit: 20
    t.string "ojos", limit: 20
    t.float "presion_arterial"
    t.float "frecuencia_respiratoria"
    t.float "frecuencia_cardiaca"
  end

  create_table "vida_estilos", primary_key: "id_estilo", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "id_paciente"
    t.string "descripcion", limit: 20
    t.integer "frecuencia"
    t.integer "cantidad"
    t.float "tiempo_consumo"
    t.index ["id_paciente"], name: "estilo_vida_info_pacientes_id_paciente_fk"
  end

  add_foreign_key "actividades", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "actividades_info_pacientes_id_paciente_fk"
  add_foreign_key "alimenticio_planes", "alimentos_grupos", column: "grupo_alimentos", primary_key: "id_grupo", name: "alimenticio_planes_alimentos_grupos_id_grupo_fk"
  add_foreign_key "alimenticio_planes", "alimentos_subgrupos", column: "subgrupo_alimentos", primary_key: "id_sub", name: "alimenticio_planes_alimentos_subgrupos_id_sub_fk"
  add_foreign_key "alimenticio_planes", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "alimenticio_planes_info_pacientes_id_paciente_fk"
  add_foreign_key "alimentos_subgrupos", "alimentos_grupos", column: "id_grupo", primary_key: "id_grupo", name: "alimentos_subgrupos_alimentos_grupos_id_grupo_fk"
  add_foreign_key "antecedentes", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "antecedentes_info_pacientes_id_paciente_fk"
  add_foreign_key "consultas", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "consulta_info_pacientes_id_paciente_fk"
  add_foreign_key "consultas", "signos_vitales", column: "id_signos", primary_key: "id_signos", name: "consultas_signos_vitales_id_signos_fk"
  add_foreign_key "ematica_biometrias", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "ematica_biometrias_info_pacientes_id_paciente_fk"
  add_foreign_key "habitos", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "habitos_info_pacientes_id_paciente_fk"
  add_foreign_key "info_pacientes", "personas", column: "id_persona", primary_key: "id_persona", name: "info_paciente_personas_id_persona_fk"
  add_foreign_key "salud_probelmas", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "salud_probelmas_info_pacientes_id_paciente_fk"
  add_foreign_key "sanguinea_quimicas", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "sanguinea_quimicas_info_pacientes_id_paciente_fk"
  add_foreign_key "vida_estilos", "info_pacientes", column: "id_paciente", primary_key: "id_paciente", name: "estilo_vida_info_pacientes_id_paciente_fk"
end

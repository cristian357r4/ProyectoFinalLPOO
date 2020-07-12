class AdForeignKeyDietas < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "dietas", "pacientes"
    add_foreign_key "dietas", "comidas"
    add_foreign_key "dietas", "alimentos"
    add_foreign_key "dietas", "subalimentos"
  end
end

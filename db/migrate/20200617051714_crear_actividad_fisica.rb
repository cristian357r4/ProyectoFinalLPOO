class CrearActividadFisica < ActiveRecord::Migration[5.2]
  def change
    create_table :actividades_fisica do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :descripcion
      t.string :frecuencia
      t.string :duracion
      t.string :tiempo_practica
      t.string :grupo_solitario
      t.string :equipo_amateur

      t.timestamps
    end
  end
end

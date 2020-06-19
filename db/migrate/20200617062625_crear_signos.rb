class CrearSignos < ActiveRecord::Migration[5.2]
  def change

    create_table :signos do |t|
      t.string :cabello
      t.string :piel
      t.string :nails
      t.string :ojos
      t.string :presion_alta
      t.string :frecuencia_resp
      t.string :frecuencia_cardiaca

      t.timestamps

    end

    create_table :consuta do |t|
      t.date :fecha_consulta

    end


  end
end

class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :persona_id
      t.float :peso
      t.float :talla
      t.float :imc
      t.float :porcentage_grasa
      t.date :birthdate

      t.timestamps
    end
  end
end

class ModPaciente < ActiveRecord::Migration[5.2]
  def change
    remove_column :pacientes, :fecha_registro
    remove_column :pacientes, :edad
    add_column :pacientes, :birthdate, :date
    add_timestamps :pacientes
  end
end

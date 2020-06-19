class ChangeInfousuariosToPacientes < ActiveRecord::Migration[5.2]
  def change
    rename_table :infousuarios, :pacientes
  end
end

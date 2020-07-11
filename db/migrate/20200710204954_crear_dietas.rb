class CrearDietas < ActiveRecord::Migration[5.2]
  def change
    create_table :dietas do |t|
      t.integer :comida_id
      t.integer :paciente_id
      t.integer :alimento_id
      t.integer :subalimento_id
      t.integer :cantidad
      t.string :nutrientes
    end
  end
end

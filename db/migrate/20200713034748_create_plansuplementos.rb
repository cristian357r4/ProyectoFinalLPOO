class CreatePlansuplementos < ActiveRecord::Migration[5.2]
  def change
    create_table :plansuplementos do |t|
      t.references :paciente, foreign_key: true
      t.references :suplemento, foreign_key: true
      t.string :frecuencia
      t.integer :cantidad
      t.date :inicio
      t.date :fin

      t.timestamps
    end
  end
end

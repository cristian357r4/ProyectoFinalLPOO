class CreateAlimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :alimentos do |t|
      t.string :nombre
      t.string :caraceristica
      t.string :frecuencia
      t.string :racionp
      t.string :caseram
      t.string :nutrientes

      t.timestamps
    end
  end
end

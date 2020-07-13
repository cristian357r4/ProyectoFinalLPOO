class CreateSuplementos < ActiveRecord::Migration[5.2]
  def change
    create_table :suplementos do |t|
      t.string :nombre
      t.string :marca
      t.float :precio
      t.text :contenido
      t.string :informacion

      t.timestamps
    end
  end
end

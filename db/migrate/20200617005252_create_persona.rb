class CreatePersona < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :a_paterno
      t.string :a_materno
      t.string :sexo
      t.string :telefono
      t.string :correo

      t.timestamps
    end

    create_table :nutriologos do |t|
      t.belongs_to :persona, index:{ unique: true }, foreign_key: true
      t.string :cedula_profesional
      t.string :correo
      t.string :login

      t.timestamp
    end

    create_table :infousuarios do |t|
      t.belongs_to :persona, index:{ unique: true }, foreign_key: true
      t.float :peso
      t.float :talla
      t.float :imc
      t.float :porcentage_grasa
      t.date  :fecha_registro
      t.integer :edad

      t.timestamp
    end
  end
end

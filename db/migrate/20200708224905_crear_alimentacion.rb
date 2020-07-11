class CrearAlimentacion < ActiveRecord::Migration[5.2]
  def change
    create_table :comidas do |t|
      t.string :descripcion
    end

    create_table :subalimentos do |t|
      t.string :descripcion
    end
  end
end

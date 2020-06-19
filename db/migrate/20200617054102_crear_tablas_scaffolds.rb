class CrearTablasScaffolds < ActiveRecord::Migration[5.2]
  def change

    create_table :antecedentes_paciente do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :diabetes
      t.string :obesidad
      t.string :hipertrigliceridemia
      t.string :hipercolesterolemia
      t.string :cancer
      t.string :otro

      t.timestamps
    end

    create_table :biometrias_ematica do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :globulos_rojos
      t.string :globulos_blancos
      t.string :plaquetas
      t.string :hemoglobina
      t.string :hematocrito
      t.string :neutrofilos

      t.timestamps
    end

    create_table :quimicas_sanguinea do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :nitronitrogenourea
      t.string :glocosa
      t.string :creatina
      t.string :acido_urico
      t.string :trigliceridos
      t.string :colesterol

      t.timestamps
    end

    create_table :problemas_salud do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :diarrea
      t.string :nauseas
      t.string :obesidad
      t.string :estrenimiento
      t.string :gastritis
      t.string :vomito

      t.timestamps
    end

    create_table :estilos_vida do |t|
      t.belongs_to :infousuario, index:{ unique: true }, foreign_key: true
      t.string :descripcion
      t.string :frecuencia
      t.string :cantidad
      t.string :tiempo_consumo

      t.timestamps
    end
  end
end

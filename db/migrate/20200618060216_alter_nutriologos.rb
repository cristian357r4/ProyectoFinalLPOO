class AlterNutriologos < ActiveRecord::Migration[5.2]
  def change
    remove_column :nutriologos, :correo
  end
end

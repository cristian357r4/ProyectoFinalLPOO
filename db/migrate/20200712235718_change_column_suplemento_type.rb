class ChangeColumnSuplementoType < ActiveRecord::Migration[5.2]
  def change
    change_column :suplementos, :informacion, :text
  end
end

class ModifyTypeColummnAlimentos < ActiveRecord::Migration[5.2]
  def change
    change_column :alimentos, :caraceristica, :text
  end
end

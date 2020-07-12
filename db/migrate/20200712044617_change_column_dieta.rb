class ChangeColumnDieta < ActiveRecord::Migration[5.2]
  def change
    remove_column :dietas, :nutrientes
    add_column :dietas, :estado, :string
  end
end

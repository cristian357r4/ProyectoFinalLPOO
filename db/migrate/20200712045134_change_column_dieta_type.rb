class ChangeColumnDietaType < ActiveRecord::Migration[5.2]
  def change
    remove_column :dietas, :estado
    add_column :dietas, :estado, :integer
  end
end

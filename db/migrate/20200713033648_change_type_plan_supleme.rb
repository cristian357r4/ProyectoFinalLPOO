class ChangeTypePlanSupleme < ActiveRecord::Migration[5.2]
  def change
    remove_column :plansuplementos, :stardate
    remove_column :plansuplementos, :enddate
    add_column :plansuplementos, :inicio, :date
    add_column :plansuplementos, :fin, :date
  end
end

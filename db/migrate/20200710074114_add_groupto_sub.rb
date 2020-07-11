class AddGrouptoSub < ActiveRecord::Migration[5.2]
  def change
    add_column :subalimentos, :alimento_id, :integer
  end
end

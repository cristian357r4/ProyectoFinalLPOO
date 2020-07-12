class AddForeignkeysub < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "subalimentos", "alimentos"
  end
end

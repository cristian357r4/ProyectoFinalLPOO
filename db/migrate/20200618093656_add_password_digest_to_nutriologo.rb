class AddPasswordDigestToNutriologo < ActiveRecord::Migration[5.2]
  def change
    add_column :nutriologos, :password_digest, :string
  end
end

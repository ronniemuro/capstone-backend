class RenameSigntoSignType < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :sign, :sign_type
  end
end

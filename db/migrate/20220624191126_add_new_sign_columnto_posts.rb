class AddNewSignColumntoPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :sign, :string
  end
end

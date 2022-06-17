class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :post_content
      t.string :sign

      t.timestamps
    end
  end
end

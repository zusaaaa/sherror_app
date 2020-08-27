class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :username
      t.text   :post_content
      t.text   :image

      t.timestamps
    end
  end
end

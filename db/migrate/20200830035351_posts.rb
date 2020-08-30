class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :post_title, null: false
      t.text   :post_content, null: false
      t.text   :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

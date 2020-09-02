class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title,          null: false
      t.text   :code,           null: false
      t.string :ideal,          null: false
      t.text   :cause,          null: false
      t.text   :solution,       null: false
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
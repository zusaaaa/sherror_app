class Post < ApplicationRecord
  has_many :users

  validates :post_title, :post_content, null: false
end

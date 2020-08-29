class Post < ApplicationRecord
  validates :post_content, null: false
end

class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  def update_likes_counter(number)
    post.update_attribute 'likes_counter', number
  end
end

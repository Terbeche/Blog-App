class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  def update_comment_counter=(number)
    post.update_attribute 'comments_counter', number


  end
end

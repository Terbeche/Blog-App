class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  after_save :update_post_counter

  def recent_five_comments
    comments.order(updated_at: :desc).last(5)
  end

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end
end

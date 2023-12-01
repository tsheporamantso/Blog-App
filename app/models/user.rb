class User < ApplicationRecord
  has_many :likes
  has_many :comments
  has_many :posts, foreign_key: :author_id

  validates :name, presence: true

  validate :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def three_recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes
  has_many :comments


  after_save :update_posts_counter

  private

  def update_posts_counter
    author.update(post_counter: author.posts.count)
  end
end
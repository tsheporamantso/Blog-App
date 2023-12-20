require 'rails_helper'

RSpec.describe 'PostIndex', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let(:post) { FactoryBot.create(:post, author: user) }
  let(:comments) { FactoryBot.create_list(:comment, 3, post:, text: 'old', author: user, created_at: 4.days.ago) }

  let(:recent_comments) { FactoryBot.create_list(:comment, 5, post:, text: 'new', author: user) }

  before do
    post
    comments
    recent_comments
    visit user_posts_path(user)
  end

  describe 'User section in user post index' do
    it 'shows user name' do
      expect(page).to have_content(user.name)
    end

    it 'shows user photo' do
      expect(page).to have_css("img[alt= 'User Photo']")
    end

    
  end
end
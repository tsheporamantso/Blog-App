require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let(:posts) { FactoryBot.create_list(:post, 5, author: user) }

  before do
    posts
    visit user_path(user)
  end

  describe 'User show page' do
    it 'displays user photo' do
      expect(page).to have_css("img[alt='User Photo']")
    end

    it 'displays user name' do
      expect(page).to have_content(user.name)
    end

    it 'displays user posts count' do
      expect(page).to have_content(user.posts.counter)
    end

    it 'displays user bio' do
      expect(page).to have_content(user.bio)
    end

    it 'displays user three post' do
      expect(page).to have_css('div.post', count: 3)
    end

    it 'displays view all post button' do
      expect(page).to have_link('See all posts')
    end
  end
end
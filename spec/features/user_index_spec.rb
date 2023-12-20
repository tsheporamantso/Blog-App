require 'rails_helper'

RSpec.describe 'User index', type: :feature do
  let(:users) { FactoryBot.create_list(:user, 4) }

  before do
    users
    visit users_path
  end
  
  describe 'User index page' do
    it 'displays correct number of users' do
      expect(page).to have_css('div.user_info', count: 4)
    end

    it 'displays all users photo' do
      users.each do |_user|
        expect(page).to have_css("img[alt='User Photo']")
      end
    end
    it 'displays all users names' do
      users.each do |user|
        expect(page).to have_content(user.name)
      end
    end
    it 'displays all users posts count' do
      users.each do |user|
        expect(page).to have_content(user.posts_counter)
      end
    end
  end 
end
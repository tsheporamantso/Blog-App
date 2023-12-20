require 'rails helper'

RSpec.describe 'PostIndex', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  let(:post) { FactoryBot.create(:post, author: user) }
  let(:comments) { FactoryBot.create_list(:comment, 3, post:, text: 'old', author: user, created_at: 4.days.ago) }

  let(:recent_comments) { FactoryBot.create_list(:comment, 5, post:, text: 'new', author: user) }
end
require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    pending "add some examples (or delete) #{__FILE__}"
  end
end

# RSpec.describe 'Users', type: :request do
#   describe 'GET #index' do
#     it 'returns a successful response' do
#       get users_path
#       expect(response).to have_http_status(200)
#     end

#     it 'renders the index template' do
#       get users_path
#       expect(response).to render_template(:index)
#     end

#     it 'includes correct placeholder text in the response body' do
#       get users_path
#       expect(response.body).to include('Hello! this is the user index')
#     end
#   end

#   describe 'GET #show' do
#     let(:user) { create(:user) }
#     it 'returns a successful response' do
#       get user_path(user)
#       expect(response).to have_http_status(200)
#     end

#     it 'renders the show template' do
#       get user_path(user)
#       expect(response).to render_template(:show)
#     end

#     it 'includes correct placeholder text in the response body' do
#       get user_path(user)
#       expect(response.body).to include('Hello! this is the user show')
#     end
#   end
# end

require 'rails_helper'
describe 'User API', type: :request do
  describe 'GET /user' do
    it 'returns all user' do
      FactoryBot.create(:user, username: 'John', password: '1234567')
      get '/users'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'POST /users' do
    it 'creates a house' do
      expect { post '/users', params: { user: { username: 'Raily', password: '1234567' } } }.to change {
                                                                                                  User.count
                                                                                                }.from(0).to(1)
      expect(response).to have_http_status(:success)
    end
  end
end

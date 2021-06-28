require 'rails_helper'
describe 'User API', type: :request do
  let!(:users) { create_list(:user, 1) }
  describe 'GET /user' do
    before { get '/users' }
    it 'returns all users' do
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'POST /users' do
    it 'creates a user' do
      post '/users', params: { user: { username: 'Raily', password: '1234567' } }
      expect(response).to have_http_status(:success)
    end
  end
end

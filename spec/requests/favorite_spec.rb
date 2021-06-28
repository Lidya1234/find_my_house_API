require 'rails_helper'

RSpec.describe 'Favorites', type: :request do
  let!(:user) { create(:user) }
  let!(:house) { create(:house) }
  let!(:favorites) { create_list(:favorite, 1, user_id: user.id, house_id: house.id) }

  describe 'GET /favorites' do
    before { get '/favorites' }
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe 'POST /favorites' do
    it 'creates a favorites' do
      post '/favorites', params: { favorite: { user_id: user.id, house_id: house.id } }
      expect(response).to have_http_status(:success)
    end
  end
  describe 'Delete /favorite/:id' do
    it 'deletes a favorite' do
      user = FactoryBot.create(:user, username: 'Hello', password: 'hello')
      house = FactoryBot.create(:house, name: 'Apartment', rank: 3, price: '3500',
                                        image: 'https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg',
                                        description: 'Enjoy the amazing in-town neighbourhood
      of Atlanta where you can eat and shop!
       Come home to sleep in our dogs-allowed two bedroom home!')
      favourite = FactoryBot.create(:favorite, user_id: user.id, house_id: house.id)
      delete "/favorites/#{favourite.id}"
      expect(response).to have_http_status(:success)
    end
  end
end

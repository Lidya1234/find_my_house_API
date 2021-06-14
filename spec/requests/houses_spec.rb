require 'rails_helper'
describe 'House API', type: :request do
  describe 'GET /houses' do
    it 'returns all houses' do
      FactoryBot.create(:house, name: 'Room', rank: 5, price: '4000',
                                image: 'https://res.cloudinary.com/lidu4394/image/upload/v1621517709/webaliser-_TPTXZd9mOo-unsplash_evrcy2.jpg',
                                description: 'Majestic views from Mount Soledad to Sea
                                World.Incredibly open feel looking down on the Bay
                                 Park below.A patio to hang out on and a fireplace for
                                  cozy evenings in.')

      FactoryBot.create(:house, name: 'Apartment', rank: 3, price: '3500',
                                image: 'https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg',
                                description: 'Enjoy the amazing in-town neighbourhood
                                of Atlanta where you can eat and shop!
                                 Come home to sleep in our dogs-allowed two bedroom home!')
      get '/api/v1/houses'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
  # rubocop:disable Style/BlockDelimiters
  describe 'POST /houses' do
    it 'creates a house' do
      expect {
        post '/api/v1/houses',
             params: { house: { name: 'Apartment', rank: 3, price: '3500',
                                image: 'https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg',
                                description: 'Enjoy the amazing in-town neighbourhood
                                of Atlanta where you can eat and shop! Come home
                                to sleep in our dogs-allowed two bedroom home!' } }
      }.to change {
             House.count
           }.from(0).to(1)
      expect(response).to have_http_status(:success)
    end
  end
end
# rubocop:enable Style/BlockDelimiters

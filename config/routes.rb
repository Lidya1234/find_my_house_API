Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  namespace 'api' do
    namespace 'v1' do
      resources :houses
    end
  end
  resources :users, only: [:create, :show, :index] do 
    resources :items, only: [:create, :show, :index, :destroy]
 end
 resources :favorites, only: [:create, :show, :index] 
end

match "*path", :to => proc {|env| [200, {
  'Access-Control-Allow-Origin' => '*',
  'Access-Control-Allow-Methods' => 'GET, POST, PUT, DELETE, OPTIONS',
  'Access-Control-Allow-Credentials' => 'true',
  'Access-Control-Request-Method' => '*',
  'Access-Control-Allow-Headers' => 'Origin, X-Requested-With, Content-Type, Accept, Authorization',
'Content-Type' => 'text/plain'

 }, ["CORS Preflight"]] }, :via => [:options]
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, :deals, :stamp_cards, :stores
  post '/login', to: 'auth#create'
  get 'current_user', to: "auth#show"
  get '/profile', to: 'customers#profie'


end

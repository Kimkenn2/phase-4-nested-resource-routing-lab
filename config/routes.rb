Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show]
  get '/users/:user_id/items', to: 'users#users_items'
  get '/users/:user_id/items/:id', to: 'users#specific_item'
  post '/users/:user_id/items', to: 'users#new_item'
end

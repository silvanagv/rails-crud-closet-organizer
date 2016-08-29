Rails.application.routes.draw do
  resources :items
  resources :brands
  resources :outfits
  resources :users

  root 'users#home'

  post '/users', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get '/logout', to: "sessions#destroy", as: "logout"

end

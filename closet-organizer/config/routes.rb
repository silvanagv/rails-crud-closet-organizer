Rails.application.routes.draw do
  resources :items
  resources :brands
  resources :outfits
  resources :users

  root 'users#home'
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: "sessions#new", as: "login"
  get '/signup', to: "sessions#create", as: "signup"
  delete '/logout', to: "sessions#destroy", as: "logout"

end

Rails.application.routes.draw do
  resources :items
  resources :brands
  resources :outfits
  resources :users

  root 'users#index'

end

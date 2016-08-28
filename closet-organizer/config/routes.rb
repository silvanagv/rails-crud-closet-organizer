Rails.application.routes.draw do
  resources :items
  resources :brands
  resources :outfits
  resources :users

  # root to: '#show'

end

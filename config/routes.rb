Rails.application.routes.draw do
  resources :main_items
  resources :items
  resources :menus
  resources :restaurants
  get 'home/index'
  get 'home/index_back'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

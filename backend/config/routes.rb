Rails.application.routes.draw do
  resources :shop_items, only: [:create,:destroy]
  resources :shops, only: [:index]
  resources :items
  resources :heros
  resources :users, only: [:create]
  resources :inventories, only: [:create,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

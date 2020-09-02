Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items

  resources :posts, only: [:index, :new, :create, :destroy, :show]
end
TheWallDevise::Application.routes.draw do
  get "comments/new"
  get "comments/create"
  devise_for :users
  resources :walls, only: [:index]
  resources :messages, only: [:new, :create]
  resources :comments, only: [:new, :create]

  root to: 'walls#index'
end

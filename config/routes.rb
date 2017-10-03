Rails.application.routes.draw do
  get 'friends/index'

  get 'friends/destroy'

  resources :friend_requests
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

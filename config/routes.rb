Rails.application.routes.draw do

  # Root routes to WelcomeController
  root 'welcome#index'

  resources :users, only: [:new, :create]
  resources :tables, only: [:new, :create, :show]
  resources :customers, only: [:create, :show]
  resources :orders, only: [:create, :destroy]
  resources :items
  resources :admin

  # Custom routes
  get '/index' => 'welcome#index', as: :log_in
  get '/users/profile' => 'users#profile', as: :profile

  post '/sessions' => 'sessions#create', as: :create_session
  delete '/sessions' => 'sessions#destroy', as: :delete_session

  put '/customers' => 'customers#update_all'

end

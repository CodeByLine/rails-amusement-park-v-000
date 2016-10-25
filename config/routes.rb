Rails.application.routes.draw do


  # roots
  root "static_pages#home"

  # sessions
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy"
  post "/signout", to: "sessions#destroy"

  # rides
  post "/rides/new", to: "rides#new"
  post '/attractions/:id' => 'users#show'

  resources :attractions
  resources :users
  resources :rides


  # devise_for :users
  # devise_for :rides
  #
  # resources :users
  # resources :rides
  #
  # root to: "static_pages#home"

end

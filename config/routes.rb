Rails.application.routes.draw do
  devise_for :users
  devise_for :rides

  resources :users
  resources :rides

  root to: "static_page#index"

  get "/signin", to: "sessions#new"  #users? or session

end

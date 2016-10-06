Rails.application.routes.draw do
  devise_for :users
  devise_for :rides

  resources :users
  resources :rides

  root to: "static_page#index"

  get "/signup", to: "users#new"
  get '/login', to: "session#new"
  post '/login' => 'sessions#create'

  # post "/sessions/create", to: "sessions#create"


  #users? or session

end

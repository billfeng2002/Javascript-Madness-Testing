Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :users
  resources :concerts
  resources :concert_halls
  resources :repertoires
  resources :orchestras
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  get '/profile', to: "users#show"
  get '/edit_profile', to: "users#edit"
  post '/edit_profile', to: "users#update"
  get '/create_account', to: "users#new"
  post '/create_account', to: "users#create"
  post '/logout', to: "sessions#destroy"
  post '/profile', to: "users#delete_concert"
  delete '/profile', to: "users#add_concert"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :concerts
  resources :concert_halls
  resources :repertoires
  resources :orchestras
end

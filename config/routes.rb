Rails.application.routes.draw do
  # post "/keep_logged_in", to: "users#keep_logged_in"

  resources :wants
  resources :reviews, only: [:index, :create, :destroy]
  resources :vinyls, only: [:index, :show, :create]
  resources :users, only: [:create, :index, :show]
  post "/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :wants
  resources :reviews
  resources :vinyls, only: [:index, :show]
  resources :users, only: [:create, :index, :show]
  post "/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

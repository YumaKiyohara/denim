Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :denims 
  resources :wants
  resources :denims do
    resources :likes, only: [:create, :destroy]
  end
  root'denims#index'
end  
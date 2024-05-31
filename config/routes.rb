Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"

  resources :tops,only: [:index,:new]
  resources :checks
  resources :comments, only: [:index, :new,:create,:destroy,:edit,:update]
end

Rails.application.routes.draw do
  devise_for :users
  root to: "checks#index"
  resources :checks
  resources :comments, only: [:index, :new,:create,:destroy,:edit,:update]
end

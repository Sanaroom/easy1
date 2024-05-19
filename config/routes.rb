Rails.application.routes.draw do
  
  root to: "checks#index"
  resources :checks, only: [:index, :new, :create,:show]
    resources :comments, only: :index
end

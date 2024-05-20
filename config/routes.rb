Rails.application.routes.draw do
  
  root to: "checks#index"
  resources :checks, only: [:index, :new, :create,:show,:destroy]
  resources :comments, only: [:index, :new,:create,:destroy,:edit,:update]
end

Rails.application.routes.draw do
  
  root to: "checks#index"
  resources :checks
  resources :comments, only: [:index, :new,:create,:destroy,:edit,:update]
end

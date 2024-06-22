Rails.application.routes.draw do
  devise_for :users
  root to: "checks#index"

  get 'comments/verify_password', to: 'comments#verify_password', as: 'verify_password'
  post 'comments/check_password', to: 'comments#check_password', as: 'check_password'

  resources :checks do
    collection do
      delete :delete_all
    end
  end
  
  resources :comments do
    collection do
      delete :delete_all
    end
  end
end

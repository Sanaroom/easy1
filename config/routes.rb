Rails.application.routes.draw do
  get 'easys/index'
  root to: "easys#index"
end

Rails.application.routes.draw do
  root "exhibition#index"
  resources :top, only: :index 
  resources :exhibition, only: :index 
end

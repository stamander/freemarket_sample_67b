Rails.application.routes.draw do
  root "user#index"
  resources :top, only: :index 
  resources :exhibition, only: :index 
  resources :itempurchase, only: :index
  resources :user, only: :index
end

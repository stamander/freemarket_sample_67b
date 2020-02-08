Rails.application.routes.draw do
  root "top#index"
  resources :top, only: :index 
  resources :exhibition, only: [:index,:new]
  resources :itempurchase, only: :index
  resources :user, only: :index
  resources :detail, only: :index
end

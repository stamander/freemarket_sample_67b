Rails.application.routes.draw do
  root "top#index"
  resources :top, only: :index 
  resources :exhibitions, except: :show
  resources :itempurchase, only: :index
  resources :user, only: :index
  resources :detail, only: :index
end

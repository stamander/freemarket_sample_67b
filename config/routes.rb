Rails.application.routes.draw do
  devise_for :furimausers
  get 'category/index'

  root "top#index"
  resources :top, only: :index 
  resources :exhibitions, except: :show
  resources :itempurchase, only: :index
  resources :user, only: :index
  resources :detail, only: :index
  resources :mypj, except: :show
  resources :fprofiles, except: :show
  resources :fadresses, except: :show
end

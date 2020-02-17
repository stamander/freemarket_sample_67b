Rails.application.routes.draw do
  devise_for :furimausers
  get 'category/index'

  root "top#index"
  resources :top, only: :index 
  resources :exhibitions, except: :show
  resources :user, only: :index
  resources :detail, only: :index
  resources :mypj, only: :index
  resources :cards, only: [:new,:create,:edit,:show,:destroy] 
  resources :itempurchase, only: [:index, :new] do
    collection do
      post 'pay', to: 'itempurchase#pay'
      get 'done', to: 'itempurchase#done'
    end
  end
end

Rails.application.routes.draw do
  devise_for :furimausers
  get 'category/index'

  root "top#index"
  resources :top, only: :index 
  resources :exhibitions, except: :show
  resources :user, only: :index
  resources :detail, only: [:index,:edit,:destroy,:update]
  resources :mypj, except: :show
  resources :fprofiles, except: :show
  resources :fadresses, except: :show
  resources :mypj, only: :index
  resources :cards, only: [:new,:create,:edit,:show,:destroy] do
    collection do
      get 'confirmation', to: 'cards#confirmation'
    end
  end
  resources :itempurchase, only: [:index, :new] do
    collection do
      post 'pay', to: 'itempurchase#pay'
      get 'done', to: 'itempurchase#done'
    end
  end
end

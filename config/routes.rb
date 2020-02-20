Rails.application.routes.draw do
  devise_for :furimausers
  get 'category/index'
  get 'woman/index'
  get 'men/index'
  get 'cosme/index'
  get 'kid/index'
  get 'entertainment/index'
  get 'musical_instrument/index'
  get 'ticket/index'
  get 'interior/index'
  get 'smartphone/index'
  get 'handmade/index'
  get 'food/index'
  get 'sport/index'
  get 'buycicle/index'
  get 'other/index'


  root "top#index"
  resources :top, only: :index 
  resources :exhibitions
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
  resources :itempurchase, only: [:index,:show, :new] do
    collection do
      post 'pay', to: 'itempurchase#pay'
      get 'done', to: 'itempurchase#done'
    end
  end
  resources :pay, only: [:create,:show,:new] do
    collection do
      get 'done', to: 'pay#done'
    end
  end
end

Rails.application.routes.draw do

  get 'home/index'

  get 'products/index'

  get 'products/new'

  get 'products/create'

  get 'products/show'

  devise_for :users
  root 'home#index'
  
  resources :users do
    resources :products
  end

  resources :products do
    resources :reviews
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

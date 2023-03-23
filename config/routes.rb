Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  namespace :admin do
    resources :products
  end

  resources :products do
    member do 
      post :add_to_cart
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
      get :checkout
    end
  end

  resources :cart_items

  resources :orders

  namespace :account do
    resources :orders
  end

end

Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"

  namespace :admin do
    resources :products
  end

  resource s :products do
    member do 
      post :add_to_cart
    end
  end

  resource :carts

end

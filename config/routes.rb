Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member # The who_bought action will respond to HTTP GET requests and will operate on a member of the colelction as opposed to the entire collection.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

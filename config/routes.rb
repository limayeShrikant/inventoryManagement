Rails.application.routes.draw do

  devise_for :users
  resources :products
  resources :suppliers
  resources :purchase_orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcomes#index'
end

Rails.application.routes.draw do
  devise_for :users
  
  resources :stores
  resources :cheeses
  resources :feedbacks
  root to: 'pages#index'

  get '/contact-us', to: 'pages#contact', as: 'contact'
  get '/explore', to: 'pages#explore', as: 'explore'
  get '/users/account', to: 'pages#account', as: 'account'
  get '/payments/success', to: 'payments#success'
  post '/payments/webhook', to: 'payments#webhook'
  get '/my_orders' , to: 'pages#my_orders', as: 'orders'
  get '/payments/successful_payment_landing', to: 'payments#successful_payment_landing', as: 'nailed_it'
  get '/feedbacks/store/all' , to: 'feedbacks#all_store', as: 'store_feedbacks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

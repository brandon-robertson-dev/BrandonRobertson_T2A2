Rails.application.routes.draw do
  devise_for :users
  
  resources :stores
  resources :cheeses
  root to: 'pages#index'
  get '/contact-us', to: 'pages#contact', as: 'contact'
  get '/explore', to: 'pages#explore', as: 'explore'
  get '/users/account', to: 'pages#account', as: 'account'
  get '/payments/success', to: 'payments#success'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

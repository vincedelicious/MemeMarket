Rails.application.routes.draw do
  devise_for :users
  root to: 'memes#index'
  resources :memes do
    resources :bookings, only: %i[new create show]
  end

  get '/dashboard', to: 'pages#dashboard'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/my_memes', to: 'pages#my_memes'
  get '/pending_requests', to: 'pages#pending_requests'
  get '/active_requests', to: 'pages#active_requests'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'
end

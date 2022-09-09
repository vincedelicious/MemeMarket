Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :memes do
    resources :bookings, only: %i[new create show]
      # member do
      #   patch :accept
      #   patch :reject
      # end
  end

  get '/dashboard', to: 'pages#dashboard'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/requests', to: 'bookings#requests'
  patch '/approve', to: 'bookings#approve'
  patch '/reject', to: 'bookings#reject'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'
end

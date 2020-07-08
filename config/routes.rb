Rails.application.routes.draw do
  root 'sessions#home'

  get '/sessions/login', to: 'sessions#login'
  post '/sessions/login', to: 'sessions#process_login'
  post '/sessions/logout', to: 'sessions#logout'
  get '/sessions/about', to: 'sessions#about'
  post '/events/:id', to: 'events#book_event', as: 'book_event'
  get '/users/register', to: 'users#register'
  
  resources :hotels
  resources :locations
  resources :users, only: [:index, :show, :create]
  resources :events, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

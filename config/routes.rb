Rails.application.routes.draw do
  root 'application#homepage'

  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#register_process'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login_process'
  post '/logout', to: 'sessions#logout'
  get '/about', to: 'application#about'
  post '/events/:id', to: 'events#book_event', as: 'book_event'
  
  resources :hotels, only: [:index,:show]
  resources :locations, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :events, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

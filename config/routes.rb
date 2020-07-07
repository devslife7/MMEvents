Rails.application.routes.draw do
  root 'sessions#home'

  get 'sessions/login', to: 'sessions#login'
  post 'sessions/login', to: 'sessions#process_login'
  post 'sessions/logout', to: 'sessions#logout'
  post 'events/:id', to: 'events#book_event', as: 'book_event'
  
  resources :users
  resources :hotels
  resources :locations
  resources :events, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

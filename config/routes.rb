Rails.application.routes.draw do
  root 'sessions#home'
  resources :users
  resources :hotels
  resources :locations
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

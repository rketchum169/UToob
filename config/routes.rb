Rails.application.routes.draw do
  root to: "movies#index"
  get '/users/new', to: 'users#new'
  resources :movies 
  resources :comments
  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'authorized', to: 'session#page_requires_login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

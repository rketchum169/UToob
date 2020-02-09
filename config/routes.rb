Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  root to: "movies#index"
  get '/users/new', to: 'users#new'
=======
  root to: "pages#index"
>>>>>>> upstream/master
  resources :movies 
  resources :comments
  resources :users, only: [:new, :create]

<<<<<<< HEAD
  get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'authorized', to: 'session#page_requires_login'
=======
  get 'comments/new'
>>>>>>> parent of 9b3d794... added in the user views
=======
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#ndestroy"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  namespace :admin do
    get "/", to: "admin#index"
  end
>>>>>>> upstream/master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

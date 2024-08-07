Rails.application.routes.draw do
  # Root route
  root 'pages#home'

  # Routes for posts resource
  resources :posts

  # Routes for tasks resource
  resources :tasks, only: [:index, :new, :create, :destroy] do
    member do
      patch :complete
    end
  end

  # Routes for sessions (login/logout)
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # Dashboard route
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  # Signup routes using resourceful routing for users
  get 'signup', to: 'users#new', as: 'signup'
  resources :users, only: [:new, :create]
end

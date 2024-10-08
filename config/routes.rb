Rails.application.routes.draw do
  # Root route
  root 'pages#home'

  # Routes for posts resource
  resources :posts

  # Routes for tasks resource
  resources :tasks, only: [:index, :new, :create, :destroy] 

  # Routes for sessions (login/logout)
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # Dashboard route
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  # Signup routes using resourceful routing for users
  get 'signup', to: 'users#new', as: 'signup'
  resources :users, only: [:new, :create]

  # Add the route here
  get '/tasks/:id/complete', to: 'tasks#complete', as: :complete_task
end

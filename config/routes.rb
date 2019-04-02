Rails.application.routes.draw do
 
  get  '/signup',    to: 'users#new'
  post '/signup',    to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root to: 'events#index'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
  resources :attended_events
  resources :creators  
end

Rails.application.routes.draw do
 resources :users, only: [:new, :create, :show]
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end

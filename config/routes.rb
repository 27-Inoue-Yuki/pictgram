Rails.application.routes.draw do
  get 'pages/comment'
  get 'likes/create'
  get 'likes/destroy'
  get 'topics/new'
  get 'sessions/new'
  
  root 'pages#index'
  root 'pages#comment'
  get 'pages/help'

  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
  resources :likes,only: [:create, :destroy]
  resources :users
  # get "/users/new", to: "users#new"
  resources :topics
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
end

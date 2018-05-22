Rails.application.routes.draw do
  root to: 'application#index'
  resources :movie_categories
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors

  get '/persons/new', to: 'persons#new'
  get '/persons/show', to: 'persons#show'
  post '/persons/create', to: 'persons#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

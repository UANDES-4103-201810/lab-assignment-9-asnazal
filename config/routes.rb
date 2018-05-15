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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

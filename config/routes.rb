Rails.application.routes.draw do
  root 'movies#index'
  # get 'movies/new', to: 'movies#new'
  # post 'movies/new', to: 'movies#create'
  # post 'movies/new', to: 'movies#destroy'
  post 'movies/new', to: 'movies#create'
  #Resource did not create about route for unknown reason.
  resources :movies
  #Resource creates 7 standard controller actions and routes.
end

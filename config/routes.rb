Rails.application.routes.draw do
  root 'pages#index'
      
  get '/movies' => 'movies#index'
  get '/movies/:slug' => 'movies#show'    
  post '/movies' => 'movies#create'
  delete '/movies/:slug/destroy' => 'movies#destroy'
  patch '/movies/update' => 'movies#update'
      
  post '/reviews/create' => 'reviews#create'
  delete '/reviews/:id/destroy' => 'reviews#destroy'

  get '*path', to: 'pages#index', via: :all

  # resources :reviews, only: [:create, :destroy]
  # resoures is made up of get,patch,post,create,destroy
end

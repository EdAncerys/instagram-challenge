Rails.application.routes.draw do
  get 'pictures/new'
  get 'pictures/create'
  get 'pictures/update'
  get 'pictures/destroy'
  root 'users#index'
  
  get '/signup', to: 'users#new'
  get '/signup/new', to: 'users#new'
  post '/signup/new', to: 'users#create'

  get '/sessions/:id', to: 'sessions#new'
  get '/destroy', to: 'sessions#destroy'
  post 'sessions/create', to: 'sessions#create'
  resources :sessions

  get '/pictures/new', to: 'pictures#new'
  get '/pictures', to: 'pictures#index'
  post '/pictures/create', to: 'pictures#create'
  resources :pictures

end

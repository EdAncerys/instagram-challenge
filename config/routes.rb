Rails.application.routes.draw do
  root 'users#index'
  
  get '/signup', to: 'users#new'
  post '/signup/new', to: 'users#create'

  get '/sessions/:id', to: 'sessions#new'
  get '/destroy', to: 'sessions#destroy'
  post 'sessions/create', to: 'sessions#create'

  resources :sessions

end

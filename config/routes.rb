Rails.application.routes.draw do
  root 'users#index'
  
  get '/signup', to: 'users#new'
  post '/signup/new', to: 'users#create'

  get '/sessions/new', to: 'sessions#new'
  get '/destroy', to: 'sessions#destroy'

end

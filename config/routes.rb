Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#log_in'
  
  get '/signup', to: 'users#sign_up'
  post '/users', to: 'users#create'

  get '/sessions/new', to: 'sessions#new'
  get '/sessions/destroy', to: 'sessions#destroy'

end

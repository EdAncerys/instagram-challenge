Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#log_in'
  post 'users', to: 'users#create'
  get 'signup', to: 'users#sign_up'
end

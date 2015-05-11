Rails.application.routes.draw do

  resources :users do
    resources :games
  end
  
  resources :sessions, only: [:new, :create]

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

end

Rails.application.routes.draw do

  resources :users do
    resources :games
  end

  resources :sessions, only: [:new, :create]

  root :to => 'games#index'

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  get '/users/:id', to: 'games#index'
  delete '/signout', to: 'sessions#destroy'

end

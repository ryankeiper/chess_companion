Rails.application.routes.draw do

  resources :users do
    resources :tournaments do
    	resources :games
    end
  end

  resources :sessions, only: [:new, :create]

  root :to => 'tournaments#index'

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  get '/users/:id', to: 'tournaments#index'
  delete '/signout', to: 'sessions#destroy'

end

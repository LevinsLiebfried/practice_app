Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get '/help', to: 'start_pages#help'
  get '/home', to: 'start_pages#home'
  get '/about', to: 'start_pages#about'
  get '/contact', to: 'start_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'start_pages#home'

end

Rails.application.routes.draw do
  get '/help', to: 'start_pages#help'
  get '/home', to: 'start_pages#home'
  get '/about', to: 'start_pages#about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'start_pages#home'

end

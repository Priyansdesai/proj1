Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'capture', to:'pokemon#capture' , as: 'capture'
  post 'capture', to: 'pokemon#kill' 
  get '/pokemon/new', to: 'pokemon#new'
  post '/pokemon/new' , to: 'pokemon#create' 
end

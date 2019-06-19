Rails.application.routes.draw do

  root to: 'home#main'

  devise_for :users

  get '/coming_soon', to: 'home#coming_soon'

  get '/dashboard', to: 'dashboard#index'

  resources :media_lists
  resources :media_members
  resources :tags, except: [:new]
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[create destroy]

  get '/users', to: 'users#new', as: :new_user

  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy', as: :sign_out

  resources :tasks

  root to: 'pages#home'
end

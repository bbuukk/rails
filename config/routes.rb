# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create destroy]

  get '/sign_in', to: 'sessions#new_sign_in'
  post '/sign_in', to: 'sessions#sign_in'

  delete '/sign_out', to: 'sessions#sign_out'


  get '/users', to: 'sessions#new_sign_up'


  resources :tasks

  root to: 'pages#home'
end

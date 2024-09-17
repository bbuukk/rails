# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[create destroy]

  get 'sign_up', to: 'users#new', as: 'sign_up'

  get '/sign_in', to: 'sessions#new_sign_in'
  post '/sign_in', to: 'sessions#create_sign_in'

  delete '/sign_out', to: 'sessions#sign_out'

  resources :tasks

  root to: 'pages#home'
end

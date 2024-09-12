# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home', to: 'pages#home', as: :home

  resources :users
  delete 'logout', to: 'users#log_out'

  post 'login', to: 'users#log_in'

  resources :tasks

  root to: 'users#new'
end

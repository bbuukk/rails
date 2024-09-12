# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home', to: 'pages#home', as: :home

  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  resources :tasks

  root to: 'pages#home'
end

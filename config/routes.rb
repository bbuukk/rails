# frozen_string_literal: true

Rails.application.routes.draw do
  get "home", to: "pages#home", as: :home

  resources :users, only: %i[new create destroy]
  post "login", to: "users#log_in"
  delete "logout", to: "users#log_out"

  resources :tasks

  root to: "users#new"
end

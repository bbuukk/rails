# frozen_string_literal: true

Rails.application.routes.draw do
  get "home", to: "pages#home", as: :home

  resources :users
  resources :tasks

  root to: "pages#home"
end

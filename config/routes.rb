# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home', to: 'pages#home', as: :home

  resources :users, only: %i[new create destroy] do
    collection do
      post 'log_in'
      delete 'log_out'
    end
  end

  resources :tasks

  root to: 'users#new'
end

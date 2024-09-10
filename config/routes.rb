Rails.application.routes.draw do
  get "home", to: "pages#home", as: :home

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  root to: "pages#home"
end

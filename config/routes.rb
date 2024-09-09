Rails.application.routes.draw do
  get "home", to: "pages#home", as: "home"
  root to: "pages#home"
end

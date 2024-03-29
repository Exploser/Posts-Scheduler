Rails.application.routes.draw do

  # /about
  get "about", to: "about#index", as: :about

  # /password
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # /sign_up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # /sign_in
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # /log_out
  delete "logout", to: "sessions#destroy"

# Defines the root path route ("/")
  root to: "main#index"

end

Rails.application.routes.draw do

  # GET /about
  get "about", to: "about#index", as: :about

  # GET /sign_up
  get "sign_up", to: "registrations#new"

# Defines the root path route ("/")
  root to: "main#index"

end

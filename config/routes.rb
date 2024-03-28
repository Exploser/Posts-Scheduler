Rails.application.routes.draw do

  # GET /about
  get "about", to: "about#index", as: :about

  # GET /sign_up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registration#create"

# Defines the root path route ("/")
  root to: "main#index"

end

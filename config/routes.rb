Rails.application.routes.draw do

  # /about
  get "about", to: "about#index", as: :about

  # /password
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  # /password_reset
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  # /sign_up
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  # /sign_in
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # /log_out
  delete "logout", to: "sessions#destroy"

  # /Omni_Auth
  post "auth/twitter/callback", to: "omniauth_callbacks#twitter2"
  get "auth/twitter2/callback", to: "omniauth_callbacks#twitter2"


  # resources
  resources :twitter_account
  resources :tweets

# Defines the root path route ("/")
  root to: "main#index"

end

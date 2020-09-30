Rails.application.routes.draw do
  resources :users 
  resources :investments, only: [:index]
  resources :transactions
  resources :goals 

  # root page
    # root: users/login

  #custom login and logout routes for users 
  # HTTPVERB "URL", to: "CONTROLLER_NAME#METHOD_NAME"
  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#handle_login"
  delete "/logout", to: "users#logout"
end

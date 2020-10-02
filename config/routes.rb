Rails.application.routes.draw do
  root 'users#login'


  resources :users 
  resources :investments
  resources :transactions
  resources :goals 

  #custom login and logout routes for users 
  # HTTPVERB "URL", to: "CONTROLLER_NAME#METHOD_NAME"
  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#handle_login"
  delete "/logout", to: "users#logout"


  get "/stocks_form", to: "investments#stocks_form", as: "stocks_form"
  get "/stocks", to: "investments#stocks", as: "stocks"

end

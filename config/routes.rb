Rails.application.routes.draw do
  resources :users
  resources :investments
  resources :mytransactions
  resources :goals, only: [:index, :show]
end

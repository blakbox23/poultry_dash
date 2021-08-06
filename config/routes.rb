Rails.application.routes.draw do
  get 'trips/index'
  devise_for :users
  resources :users
  resources :trips

  root to: "trips#index"
end

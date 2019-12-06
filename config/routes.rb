Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#index"
  get 'admin_dashboard', to: "admin_dashboard#index"
  get 'login', to: "login#new"
  post 'login', to: "login#create"
  delete 'logout', to: "login#destroy"
  get 'home/index'
  resources :service_prices
  resources :flights
  resources :users
  resources :cities
  resources :seat_configs
  resources :airplane_types
  resources :airplanes
  root "home#index"
end

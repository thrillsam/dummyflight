Rails.application.routes.draw do
  resources :service_prices
  resources :flights
  resources :users
  resources :cities
  resources :seat_configs
  resources :airplane_types
  resources :airplanes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

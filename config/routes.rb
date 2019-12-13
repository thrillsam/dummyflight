Rails.application.routes.draw do
  get 'bookings', to: "bookings#index"
  get 'category', to: "category#index"
  get 'category/new', to: "category#new"
  get 'category/:id', to: "category#show"
  post 'category', to: "category#create"
  get 'dashboard', to: "dashboard#index"
  get 'admin_dashboard', to: "admin_dashboard#index"
  get 'login', to: "login#new"
  post 'login', to: "login#create"
  delete 'logout', to: "login#destroy"
  get 'home', to: "home#index"
  
  resources :flights do
    get :pnr
    post :seat_availablity
    post :seat_booking
  end

  resources :service_prices
  resources :users
  resources :cities
  resources :seat_configs
  resources :airplane_types
  resources :airplanes
  root "home#index"
end

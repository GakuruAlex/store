Rails.application.routes.draw do
  get "orders/index"
  get "orders/show"
  get "orders/edit"
  get "orders/update"
  resources :products

  # resources customers
  get "/customers" => "customers#index", as: :customers
  get "customers/new" => "customers#new", as: :new_customer
  post "customers" => "customers#create"

  get "/customers/:id" => "customers#show", as: :customer

  get "customers/:id/edit" => "customers#edit", as: :edit_customer
  patch "customers/:id" => "customers#update"
  put "customers/:id" => "customers#update"

  delete "customers/:id" => "customers#delete"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "/addition" => "additions#index"
  get "/clocks/db-time" => "clocks#index"
  get "/clocks/server-time" => "clocks#index"
end

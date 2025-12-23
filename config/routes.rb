Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "application#index"

  mount Lato::Engine => "/lato"
  mount LatoStorage::Engine => "/lato-storage"
  mount LatoSettings::Engine => "/lato-settings"
  mount LatoSpaces::Engine => "/lato-spaces"
  mount LatoUsers::Engine => "/lato-users"

  namespace :app do
    get "dashboard" => "dashboard#index", as: :dashboard
  end
end

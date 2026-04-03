Rails.application.routes.draw do
  # Restrict routes to only allow viewing and creating
  resources :complaints, only: [ :index, :show, :new, :create ]

  # Make the complaints list the homepage
  root "complaints#index"
end

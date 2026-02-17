Rails.application.routes.draw do
  resources :courses
 
  # get 'welcome/index'

  root 'welcome#index'
 resources :students

 
end

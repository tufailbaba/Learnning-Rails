Rails.application.routes.draw do
  resources :projects
  resources :courses
 
  # get 'welcome/index'

  root 'welcome#index'
 resources :students

 
end

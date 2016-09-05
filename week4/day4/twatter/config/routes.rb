Rails.application.routes.draw do
  
  resources :users
  root "twats#index"
  get "projects/new", to: "projects#new"
  get "projects/index", to: "projects#index"
  post "projects/create", to: "projects#create"
  

  resources :twats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

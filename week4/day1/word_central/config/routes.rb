Rails.application.routes.draw do
  get '/home', to: 'site#home'
  get '/text_inspections/new', to: 'text_inspections#new'
  post "/text_inspections", to: "text_inspections#create"
  get "/asciis/new", to: "asciis#new"
  post "/asciis", to: "asciis#create"
end

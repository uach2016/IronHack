Rails.application.routes.draw do
  get '/contacts', :to => "contacts#index"
  get '/contacts/new', :to => "contacts#new"
  get '/contacts/:id', :to => "contacts#show"
  get "/favorite_contacts" => "contacts#favorite_contacts"
	
  post "/contacts", :to => "contacts#create"
  post"/make_favorite", :to => "contacts#make_favorite"

  post	"/search", :to => "contacts#search"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

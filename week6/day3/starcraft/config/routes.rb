Rails.application.routes.draw do
	namespace :api do
 		resources :matches
 			resources :players
 end

end

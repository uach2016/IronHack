
Rails.application.routes.draw do
#   resources :tasks
 # resources :users
	namespace :api do
		namespace :v1 do
			resources :users, except: [:new, :edit] do
				resources :tasks, except: [:new, :edit, :update]
					patch 'tasks/:id/complete' => 'tasks#complete'
						put 'tasks/:id/complete' => 'tasks#complete'
			end
		end
	end
end

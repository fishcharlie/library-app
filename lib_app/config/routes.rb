Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: "users#index"

	get "/users", to: "users#index", as: "users"
	get "/users/new", to: "users#new", as: "new_user"
	post "/users", to: "users#create"
	get "/users/:id", to: "users#show"
	get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
	post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"

	get "/sign_in", to: "sessions#new"
	post "/sessions", to: "sessions#create"

	get "/libraries", to: "libraries#index"
	get "/libraries/new", to: "libraries#new", as: "new_library"
	post "/libraries", to: "libraries#create"

	get "/login", to: "sessions#new"
	post "/sessions", to: "sessions#create"
	get "/sign_up", to: "users#new", as: "sign_up"
	resources :users


end

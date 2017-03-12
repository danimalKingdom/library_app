Rails.application.routes.draw do

  root to: "users#index"
  get "/users" => "users#index", as: "users"
  get "/signup" => "users#new", as: "new_user"
  post "/users" => "users#create"
  get "/users/:id" => "users#show", as: "user"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/libraries" => "libraries#index", as: "libraries"
  get "/libraries/new" => "libraries#new", as: "new_library"
  post "/libraries" => "libraries#create"

  get "/users/:user_id/libraries" => "library_users#index", as: "user_libraries"
  post "/libraries/:library_id/users" => "library_users#create", as: "library_users"
end

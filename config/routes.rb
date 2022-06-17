Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # User Routes
  post "/users" => "users#create"

  # Sessions Routes
  post "/sessions" => "sessions#create"

  # Posts Routes
  get "/posts" => "posts#index"
end

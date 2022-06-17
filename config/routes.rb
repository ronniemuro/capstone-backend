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
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"

  # Comments Routes
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"

  # Likes Routes
  post "/likes" => "likes#create"
  delete "/likes/:id" => "likes#destroy"
end

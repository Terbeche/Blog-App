Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  get "/users/:user_id/posts/", to: "posts#show"
  get "/users/:user_id/posts/:id", to: "posts#show"
  
  # Defines the root path route ("/")
  # root "articles#index"
end

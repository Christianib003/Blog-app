Rails.application.routes.draw do
  root "users#index"

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
end

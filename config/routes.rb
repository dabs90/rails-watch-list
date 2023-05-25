Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists
  resources :bookmarks

  get "lists", to: "lists#index"
  get "lists/:id", to: "lists#show"
  get "lists/new", to: "lists#new"
  # GET "lists"
  # GET "lists/42"
  # GET "lists/new"
  # POST "lists"
end

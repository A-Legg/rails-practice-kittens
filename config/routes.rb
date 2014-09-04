Rails.application.routes.draw do
  root "kittens#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "/categories" => "categories#index", as: :categories

  get "/kittens/:id/edit" => "kittens#edit"
  post "/kittens/:id/edit" => "kittens#update"



end

Rails.application.routes.draw do

  root 'items#index'
  
  get "/items" => "items#index"
  get "/items/new" => "items#new"
  post "/items" => "items#create"
  get "/items/:id/edit" => "items#edit"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"
  #post "/products/search" => "products#search"
  get "/items/:id" => "items#show"
  

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

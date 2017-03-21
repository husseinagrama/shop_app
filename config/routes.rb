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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "/shop_url" => "items#index"
  get "/" => "items#index"
  get "/items/new" => "items#new"
  post "/items" => "items#create"
  get "/items/:id/edit" => "items#edit"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"

  get "/items/:id" => "items#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "/shop_url" => "items#show_items_method"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

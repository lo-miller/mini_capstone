Rails.application.routes.draw do

  namespace :api do
    
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
    post "/suppliers" => "suppliers#create"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    get "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#show"
    post "/carted_products" => "carted_products#create"
    patch "/carted_products/:id" => "carted_products#update"
    delete "/carted_products/:id" => "carted_products#destroy"
  end

end


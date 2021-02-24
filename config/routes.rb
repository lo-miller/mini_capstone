Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/inventory" => "products#inventory"
  end

  namespace :api do
    get "/boots" => "products#boots"
  end
  
  namespace :api do
    get "/tent" => "products#tent"
  end

end

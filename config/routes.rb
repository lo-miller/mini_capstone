Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/inventory" => "products#inventory"
    get "/boots" => "products#boots"
    get "/tent" => "products#tent"
    get "/query_parameter" => "products#query"
  end

end

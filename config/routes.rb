Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/params" => "params_game#name_game"
    get "/number_game/:number" => "params_game#guess_number"
  end
end

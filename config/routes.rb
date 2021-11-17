Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/places" => "places#index"
  get "/places/:id" => "places#show"
  delete "/places/:id" => "places#destroy"
  post "/places" => "places#create"
  put "/places/:id" => "places#update"

end

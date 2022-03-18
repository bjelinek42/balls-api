Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/balls" => "balls#index"
  get "/balls/:id" => "balls#show"
  post "/balls" => "balls#create"
  patch "/balls/:id" => "balls#update"
  delete "/balls/:id" => "balls#destroy"
end

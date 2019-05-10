Rails.application.routes.draw do

  namespace :api do
    post "/accounts" => "accounts#create"
    get "/accounts/:id" => "accounts#show"
  end
end

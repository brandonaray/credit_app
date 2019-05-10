Rails.application.routes.draw do

  namespace :api do
    post "/accounts" => "accounts#create"
  end
end

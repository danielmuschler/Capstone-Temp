Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    get "/pitches" => "pitches#index"
    get "/pitches/:id" => "pitches#show"
    post "/pitches" => "pitches#create"

    post "/locations" => "locations#create"

    post "/characters" => "characters#create"

    
    get "/users" => "users#index"
    post "/users" => "users#create"
    
    post "/sessions" => "sessions#create"

    get "/spotify_authorize" => "spotify#authorize"
    get "/spotify/callback" => "spotify#callback"
   
    get "/flickr/search" => "flickr#search"
  end
end
class Api::SpotifyController < ApplicationController
  def authorize
    redirect_to "https://accounts.spotify.com/authorize?client_id=#{ENV["SPOTIFY_CLIENT_ID"]}&response_type=code&redirect_uri=http://localhost:3000/api/spotify/callback"
  end

  def callback
    response = HTTP.post("https://accounts.spotify.com/api/token", 
      form: { 
        grant_type: "authorization_code",
        code: params[:code],
        redirect_uri: "http://localhost:8080",
        client_id: ENV["SPOTIFY_CLIENT_ID"],
        client_secret: ENV["SPOTIFY_CLIENT_SECRET"]
      }
    )
    access_token = response.parse["access_token"]
    render json: {access_token: access_token}
  end
end

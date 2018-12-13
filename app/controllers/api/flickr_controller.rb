class Api::FlickrController < ApplicationController
  def search
    require 'flickraw'
    FlickRaw.api_key= ENV["FLICKR_KEY"]
    FlickRaw.shared_secret= ENV["FLICKR_SECRET"] 
    list   = flickr.photos.search(:text => params[:search], per_page: 500, sort: "relevance")
    # pp list.map {|item| item["title"]}
    item = list[0]
    # item  = list.select { |item| item["title"].downcase.starts_with? params[:search].downcase}[0]
    id     = item.id
    secret = item.secret
    info = flickr.photos.getInfo :photo_id => id, :secret => secret
    # pp list[0]
    puts "=============================="
    pp info  
    # render json: {image: info["urls"][0]["_content"]}
    farm = info["farm"]
    server = info["server"]
    id = info["id"]
    secret = info["secret"]

    render json: {image: "https://farm#{farm}.staticflickr.com/#{server}/#{id}_#{secret}.jpg"}
  end
end

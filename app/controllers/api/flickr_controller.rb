class Api::FlickrController < ApplicationController


    flickr = FlickRaw::Flickr.new ENV["FLICKR_KEY"], ENV["FLICKR_SECRET"]
    list = flickr.photos.getRecent
    flickr.photos.search(:text => 'graffiti', :license => 5, :per_page => 50)
    @stuff = list
    

  
end

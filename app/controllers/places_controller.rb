class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    
      def new
        @place = Places.new
      end
    
      def create
        @place = Place.new
        @post["name"] = params["post"]["name"]
        @post.save
        redirect_to "/posts"
      end

end

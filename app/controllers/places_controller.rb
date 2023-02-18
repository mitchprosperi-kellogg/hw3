class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    
      def new
        @place = Places.new
      end
    
      def create
        @place = Place.new
        @post["title"] = params["post"]["title"]
        @post.save
        redirect_to "/posts"
      end

end

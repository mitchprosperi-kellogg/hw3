class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    
      def new
        @place = Place.new
      end

      def show
        @place = Place.find_by({"id" => params["id"]})
        @post = Post.where({"post_id" => @post["id"]})
      end

      def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
      end

end

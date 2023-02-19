class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    
      def new
        @place = Places.new
      end

      def show
        @place = Place.find_by({"id" => params["id"]})
        @post = Post.where({ "post_id" => @post["id"] })
    
      def create
        @place = Place.new
        @post["name"] = params["place"]["name"]
        @post.save
        redirect_to "/places"
      end

end

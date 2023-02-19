class PostsController < ApplicationController
    
    def index
        @posts = Post.all
      end
    
      def new
        @post = Post.new
      end
    
      def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["post_id"] = params["post"]["post_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"
      end

end

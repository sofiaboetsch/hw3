class PostsController < ApplicationController
    def index
        @post= Post.all
    end
       
     def new
            @post= Post.new
        end
    
    def create
            @post = Post.new
            @place.find_by ({"id=params[]"})
            @post ["title"] = params["post"]["title"]
            @post ["description"] = params["post"]["description"]
            @post.save
            redirect_to "/posts" 
    end


end

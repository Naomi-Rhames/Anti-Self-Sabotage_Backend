class PostsController < ApplicationController
    
    def create
        post = Post.new(post_params)
        if post.save
            render json: post
        else
            render json: {error: post.errors.full_messages},  status: 403
        end 
    end
    
    def index
        post = Post.all
        render json: post
    end 


    private

    def post_params
        params.permit(:message, :image_url, :user_id)
    end
end

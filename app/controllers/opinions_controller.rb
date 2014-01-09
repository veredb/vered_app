class OpinionsController < ApplicationController


    def create
        @post = Post.find(params[:post_id])
        @opinion = @post.opinions.create(params[:opinion].permit(:opinionator, :body))
        redirect_to post_path(@post)
    end
end

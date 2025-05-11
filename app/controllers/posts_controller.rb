class PostsController < ApplicationController
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, notice: "post created successfully"
        else
            render :new
        end
    end

    private

    def post_params
    params.require(:post).permit(:title, :content)
    end

end
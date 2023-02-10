class PostsController < ApplicationController

    # before_action :get_article, only: [:new ,:create]
    def show
        @post = Post.find(
        params[:id]
        )

    end
    def index
    @posts = Post.all
    end
    def new
        @post = Post.new
    end
    def edit
        @post =Post.find(
        params[:id]
        )
    end
    def create
        @post = Post.new(params[:post].permit(:name, :articlee_id))
        if @post.save
            flash[:notice] = "Post was created successfully"
            redirect_to @post
        else
            render 'new'
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(params.require(:post).permit(:name ))
            flash[:notice] = "Post was update successfully"

            redirect_to @post
        else
            render 'edit'
        end

    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

   
end
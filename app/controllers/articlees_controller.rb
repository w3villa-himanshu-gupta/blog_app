class ArticleesController < ApplicationController
    def index
        @articlees = Articlee.all
    end
    def new 
        @articlee = Articlee.new

    end
    def edit
        @articlee = Articlee.find(params[:id])
    
    end
    def update
        @articlee = Articlee.find(params[:id])
        if @articlee.update(params.require(:articlee).permit(:title, :description))
            flash[:notice] = "Article was updated successfully"
            redirect_to @articlee
        else
            render 'edit'
        end
            # @articlee.save
        # redirect_to @articlee
        # if @articlee.save
        #     flash[:notice] = "Article was updated successfully"
        #     redirect_to @articlee
        # else
        #     # render :new,  :alert => 'error'
        #     render 'new'
            
        # end 

    end
    def create
        # render plain: params[:articlee]
        @articlee = Articlee.new(params.require(:articlee).permit(:title ,:description))
        @articlee.user = User.first
        # @articlee.save
        # redirect_to @articlee
        # render plain: @articlee
        # byebug
        if @articlee.save
            flash[:notice] = "Article was created successfully"
            redirect_to @articlee
        else
            # render :new,  :alert => 'error'
            render 'new'
            
        end 
    

      
    end

    def show
        @articlee = Articlee.find(params[:id])

    end
    def destroy
        @articlee = Articlee.find(params[:id])
        @articlee.destroy
        redirect_to articlees_path


    end
   

    def show_post
        @articlee = Articlee.find(params[:id])
        @posts = @articlee.posts
    end 
    # def articlee_posts
    #     @articlee = Articlee.find(params[:id])
    #     @posts = @articlee.posts
        
    # end


end
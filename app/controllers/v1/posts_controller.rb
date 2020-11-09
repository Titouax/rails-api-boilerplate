module V1  
  class PostsController < ApplicationController
    before_action :define_scope
    before_action :set_post, only: [:show, :update, :destroy]

    # GET /posts
    def index
      @posts = @scope.all

      render json: @posts
    end

    # GET /posts/1
    def show
      render json: @post
    end

    # POST /posts
    def create
      @post = Post.new(post_params)

      if @post.save
        render json: @post, status: :created, location: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /posts/1
    def update
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # DELETE /posts/1
    def destroy
      @post.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = @scope.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def post_params
        params.require(:post).permit(:category_id, :user_id, :title, :content)
      end

      def define_scope 
        if params[:category_id]
          @scope = Category.find(params[:category_id]).posts
        elsif params[:user_id]
          @scope = User.find(params[:user_id]).posts
        else 
          @scope = Post
        end
      end
  end
end
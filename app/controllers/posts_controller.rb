class PostsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :update]
  # before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  

  def create
    # byebug
    @post = Post.new(user_id: params[:user_id])
    @post.post_image.attach(params[:post_image])
    @post.save
    render json: @post
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
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:user_id, :post_image)
    end
end

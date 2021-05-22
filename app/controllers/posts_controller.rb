class PostsController < ApplicationController

  PER_PAGE = 10

  def index
    @posts = Post.page(params[:page]).per(PER_PAGE).order(created_at: :desc)
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to root_path
  end

  def post_params
    params.require(:post).permit(:body)
  end
end

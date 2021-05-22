class PostsController < ApplicationController

  PER_PAGE = 10

  def index
    @posts = Post.page(params[:page]).per(PER_PAGE).order(created_at: :desc)
  end

  def create
  end
end

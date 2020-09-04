class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  def index
    @users = User.all
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(current_user.id)
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  def show
    @user = User.find(@post.user_id)
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :code, :ideal, :cause, :solution, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

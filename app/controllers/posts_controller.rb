class PostsController < ApplicationController
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
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :code, :ideal, :cause, :solution, :image).merge(user_id: current_user.id)
  end
end

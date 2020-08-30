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

  private

  def post_params
    params.require(:post).permit(:post_title, :post_content, :image).merge(user_id: current_user.id)
  end
end

class ItemsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  def create
    
  end
end

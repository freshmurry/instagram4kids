class PostsController < ApplicationController
  
  def index
    @post = Post.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 50)
  end
  
  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy

    redirect_to user_path(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end
end

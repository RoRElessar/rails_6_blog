class PostsController < ApplicationController
  def index
    @author = Author.first
    @posts = @author.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post, notice: 'A post was successfully created.'
  end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:title, :content, :published, :image)
  end
end

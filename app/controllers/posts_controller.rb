# frozen_string_literal: true

# :nodoc:
class PostsController < ApplicationController
  def index
    # === if there is no post with given id then redirect to the first post
    redirect_to post_path id: 1
  end

  def show
    # === Pagination
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
  end

  def create
    # === Saving post
    @posts = Post.new(post_params) 
    @posts.save
    redirect_to @posts
  end

  private

  def post_params
    params.require(:post).permit(:body, :title, :translation)
  end
end

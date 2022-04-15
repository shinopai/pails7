class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i(index)
  before_action :init_post, only: %i(new create)
  before_action :find_post, only: %i(show edit update destroy)

  def all
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    user = current_user
    @post = user.posts.new(post_params)

    if @post.save
      redirect_to all_posts_path, notice: 'New post has been created'
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: 'Post has been updated'
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy

    redirect_to all_posts_path
  end


  # private methods
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end

  def init_post
    @post = Post.new
  end

  def find_post
    @post = Post.find(params[:id])
  end
end

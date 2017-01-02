class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @new_comment=Comment.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
     if @post.update(title: params[:post][:title], content: params[:post][:content], photo_url: params[:post][:photo_url], location: params[:post][:location], category: params[:post][:category])
       redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def comment
    @post = Post.find(params[:id])
    Comment.create({post: @post, content: params[:comment][:content], user: current_user})
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to posts_path
  end

  def post_params
    return params.require(:post).permit(:category, :title, :price, :location, :content)
  end
end

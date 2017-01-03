class UsersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
    @favorites = Favorite.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    @posts = Post.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    session[:user_id] = nil
    redirect_to users_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation, :photo_url, :facebook_url, :instagram_url, :twitter_url, :tumblr_url, :linkedin_url)
  end
end

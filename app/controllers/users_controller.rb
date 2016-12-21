class UsersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
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
     if @user.update(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], photo_url: params[:user][:photo_url], age: params[:user][:age], location: params[:user][:location])
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
    redirect_to users_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_strong_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end


  private

  def user_strong_params
    params.require(:user).permit(:first_name, :email, :password, :owner)
  end




end

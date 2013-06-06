class UsersController < ApplicationController
  

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id
      render 'show'
    else
      render 'new'
    end
  end

  def show

  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address)
  end
 end


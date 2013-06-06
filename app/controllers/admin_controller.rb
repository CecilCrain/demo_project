class AdminController < ApplicationController
  def index
    @users = User.all
    render 'admin'
  end

  def create
 #    @comments = User.new(params.permit(:comment :authenticity_token))
  # render 'index'
 #    end
  @user = User.find(session[:current_user_id])
    @user.comment = params[:comment]
    @user.save
    @users = User.all
    render 'admin'
  end
end